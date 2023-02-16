FROM tiangolo/uvicorn-gunicorn:python3.8-slim 

COPY ./model /model
COPY ./app /app

EXPOSE 8080

ENTRYPOINT ["uvicorn", "app:app --reload"]

CMD ["uvicorn", "app.app:app", "8080"]