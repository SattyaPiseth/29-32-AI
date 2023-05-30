from marshmallow_sqlalchemy import SQLAlchemyAutoSchema, auto_field
from models.diseases import tbdiseases  
from dbinfo import db


class diseaseschema(SQLAlchemyAutoSchema):
    class Meta:
        model = tbdiseases
        sqla_session = db.session
        load_instance = True

    did = auto_field()
    disease = auto_field()
    cause = auto_field()
    treatment = auto_field()
