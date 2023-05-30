from dbinfo import db

class tbdiseases(db.Model):
    
    did = db.Column("did", db.Integer, primary_key = True)
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