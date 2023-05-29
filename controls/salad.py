from flask_restful import Resource, request
from flask import make_response, render_template, redirect, send_file, session
from models.diseases import tbdiseases
from schemas.diseaseschema import diseaseschema

class HomePage(Resource):
    @classmethod
    def get(cls):
        return {"msg": "Hello world!"}
    
class Disease(Resource):
    @classmethod
    def get(cls, did=None):
        try:
            data = tbdiseases.find_by_did(did)
            schema = diseaseschema(many=False)
            _data = schema.dump(data)
            return {"disease": _data}
        except Exception as err:
            return {"msg": err}


class DiseaseList(Resource):
    @classmethod
    def get(cls):
        try:
            data = tbdiseases.query.all()
            schema = diseaseschema(many=True)
            _data = schema.dump(data)
            return {"disease": _data}
        except Exception as err:
            return {"msg": err}