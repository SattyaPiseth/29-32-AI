from controls.home import HomePage
from controls.salad import Disease, Diseases
from dbinfo import app, api, db


######### webpage #########
@app.errorhandler(404)
def page_not_found(err):
    return {"msg": "Page not found"}


api.add_resource(HomePage, "/")
api.add_resource(Disease, "/disease", "/disease/<did>")
api.add_resource(Diseases, "/diseases")

if __name__ == "__main__":
    db.init_app(app)
    app.run(host='0.0.0.0', port=5000, debug=True)
