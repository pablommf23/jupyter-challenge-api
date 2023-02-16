FROM tiangolo/uvicorn-gunicorn:python3.8-slim 


RUN pip install joblib scikit-learn


ENV APP_HOME /app

COPY ./app /app
COPY ./model /model


WORKDIR $APP_HOME


ENV PORT 8080

ENV PYTHONUNBUFFERED True

CMD exec uvicorn main:app --host 0.0.0.0 --port ${PORT} --workers 1