from enum import Enum

from dbinfo import db


class DiseaseEnum(Enum):
    DID = 'did'
    DISEASE = 'disease'
    CAUSE = 'cause'
    TREATMENT = 'treatment'

    def __new__(cls, key):
        obj = object.__new__(cls)
        obj.key = key
        return obj


class tbdiseases(db.Model):
    did = db.Column(DiseaseEnum.DID.key, db.Integer, primary_key=True)
    disease = db.Column(db.String)
    cause = db.Column(db.String)
    treatment = db.Column(db.String)

    def __init__(self, did=None, disease=None, cause=None, treatment=None):
        self.did = did
        self.disease = disease
        self.cause = cause
        self.treatment = treatment

    @classmethod
    def find_by_did(cls, did) -> "tbdiseases":
        return cls.query.filter_by(did=did).first()

    @classmethod
    def top_disease(cls) -> "tbdiseases":
        top_disease = cls.query.order_by(cls.did.desc()).first()
        return top_disease
