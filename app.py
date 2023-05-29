from dbinfo import app, api, db, render_template

from controls.salad import HomePage,Disease,DiseaseList
######### webpage #########
@app.errorhandler(404)
def page_not_found(err):
    return {"msg": "page not found"}

api.add_resource(HomePage, "/")
api.add_resource(Disease, "/disease/<did>")
api.add_resource(DiseaseList, "/diseaselist")

if __name__ == "__main__":
    db.init_app(app)
    app.run(host='0.0.0.0', port=5000, debug=True)
