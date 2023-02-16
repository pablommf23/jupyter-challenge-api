import uvicorn
import FastAPI, Query from fast API
import joblib from sklearn.externals


delay_probability_build = open("model/picke_model.pkl","rb")
delay_probability_vector = joblib.load(delay_probability_build)

app = FastAPI()


@app.get('/')
async def index():
  return {"text":"Our First route"}

if __name__ == '__main__':
uvicorn.run(app,host="127.0.0.1",port=8000)


@app.get('/predict/{name}')
async def predict(name: str = Query(None, min_length=2, max_length=12)):
  if request.method == 'GET':
    namequery = request.form['namequery']
    data = [namequery]
    vect = delay_probability_vector.transform(data).toarray()
    result = delay_probability_vector.predict(vect)

    return {"orig_name": name, "prediction": result}