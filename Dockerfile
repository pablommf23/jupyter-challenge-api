FROM tiangolo/uvicorn-gunicorn:python3.8-slim 

COPY ./model /model
COPY ./app /app
ENV PORT 8080

ENV PYTHONUNBUFFERED True

ENTRYPOINT ["uvicorn", "app:app --reload"]

CMD exec uvicorn main:app --host 0.0.0.0 --port ${PORT} --workers 1