# from lightgbm import LGBMClassifier
import joblib
import flask
from flask import request

app = flask.Flask(__name__)
app.config["DEBUG"] = True

# main index page route
@app.route('/')
def home():
    return '<h1>API is working.. </h1>'

@app.route('/predict',methods=['GET'])
def predict():
    model = joblib.load('lgbm.ml')
    # model.predict([[188,1,1,0,0.0,0,1,0,0,0,1,0]])
    predict = model.predict([[int(request.args['a']),
                            int(request.args['b']),
                            int(request.args['c']),
                            int(request.args['e']),
                            float(request.args['d']),
                            int(request.args['f']),
                            int(request.args['g']),
                            int(request.args['h']),
                            int(request.args['i']),
                            int(request.args['l']),
                            int(request.args['m']),
                           ]])
    return flask.jsonify(str(predict)[1])

if __name__ == "__main__":
    app.run(debug=True)
