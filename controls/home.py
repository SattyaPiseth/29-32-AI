from flask_restful import Resource


class HomePage(Resource):
    @classmethod
    def get(cls):
        return {"msg": "Hello world!"}
