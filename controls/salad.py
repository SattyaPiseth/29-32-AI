from enum import Enum

from flask import request
from flask_restful import Resource, reqparse

from dbinfo import db
from models.diseases import tbdiseases, DiseaseEnum
from schemas.diseaseschema import diseaseschema


def _serialize_disease(data, is_many):
    schema = diseaseschema(many=is_many)
    return schema.dump(data)


class Params(Enum):
    SEARCH = ('search', '')
    PAGE = ('page', 1)
    PAGE_SIZE = ('pageSize', 10)
    SORT_BY = ('sortBy', 'did')
    SORT_ORDER = ('orderBy', 'desc')

    def __new__(cls, key, val):
        obj = object.__new__(cls)
        obj.key = key
        obj.val = val
        return obj


class Disease(Resource):

    @classmethod
    def get(cls, did=None):
        try:
            return _serialize_disease(tbdiseases.find_by_did(did), False)
        except Exception as err:
            return {"msg": err}

    @classmethod
    def post(cls):
        try:
            data = request.get_json()
            new_disease = tbdiseases(disease=data[DiseaseEnum.DISEASE.key], cause=data[DiseaseEnum.CAUSE.key],
                                     treatment=data[DiseaseEnum.TREATMENT.key])

            db.session.add(new_disease)
            db.session.commit()
            return {"message": "Disease created successfully",
                    "saved": _serialize_disease(tbdiseases.top_disease(), False)
                    }, 201
        except KeyError as err:
            return {"error": f"Missing required field: {str(err)}"}, 400
        except Exception as err:
            return {"error": str(err)}, 500

    @classmethod
    def put(cls, did):
        try:
            parser = reqparse.RequestParser()
            parser.add_argument(DiseaseEnum.DISEASE.key, type=str)
            parser.add_argument(DiseaseEnum.CAUSE.key, type=str)
            parser.add_argument(DiseaseEnum.TREATMENT.key, type=str)
            parser.add_argument(DiseaseEnum.DID.key, type=None)
            args = parser.parse_args()

            disease = tbdiseases.find_by_did(did)
            if not disease:
                return {"message": "Disease not found"}, 404

            if args[DiseaseEnum.DISEASE.key]:
                disease.disease = args[DiseaseEnum.DISEASE.key]
            if args[DiseaseEnum.CAUSE.key]:
                disease.cause = args[DiseaseEnum.CAUSE.key]
            if args[DiseaseEnum.TREATMENT]:
                disease.treatment = args[DiseaseEnum.TREATMENT.key]

            args[DiseaseEnum.DID.key] = did
            db.session.commit()
            return {"message": "Disease updated successfully", "data": args}
        except Exception as err:
            return {"error": str(err)}, 500

    @classmethod
    def delete(cls, did):
        try:
            disease = tbdiseases.find_by_did(did)
            if not disease:
                return {"message": "Disease not found"}, 404

            db.session.delete(disease)
            db.session.commit()
            return {"message": "Disease deleted successfully"}
        except Exception as err:
            return {"error": str(err)}, 500


class Diseases(Resource):
    @classmethod
    def get(cls):
        try:
            search = request.args.get(Params.SEARCH.key, Params.SEARCH.val)
            page = int(request.args.get(Params.PAGE.key, Params.PAGE.val))
            page_size = int(request.args.get(Params.PAGE_SIZE.key, Params.PAGE_SIZE.val))
            sort_by = request.args.get(Params.SORT_BY.key, Params.SORT_BY.val)
            sort_order = request.args.get(Params.SORT_ORDER.key, Params.SORT_ORDER.val)

            base_query = tbdiseases.query.filter(tbdiseases.disease.like(f'%{search}%'))

            print("SSS", sort_by, sort_order)
            if sort_order.lower() == 'asc':
                base_query = base_query.order_by(sort_by)
            else:
                base_query = base_query.order_by(db.desc(sort_by))

            diseases = base_query.paginate(page=page, per_page=page_size, error_out=False)
            serialized_data = [{DiseaseEnum.DID.key: disease.did, DiseaseEnum.DISEASE.key: disease.disease,
                                DiseaseEnum.CAUSE.key: disease.cause, DiseaseEnum.TREATMENT.key: disease.treatment}
                               for disease
                               in diseases.items]
            return {
                "diseases": serialized_data,
                "total_items": diseases.total,
                "total_pages": diseases.pages,
                "current_page": page
            }
        except Exception as err:
            return {"error": str(err)}, 500
