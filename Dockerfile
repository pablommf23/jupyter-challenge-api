FROM tiangolo/uvicorn-gunicorn:python3.8-slim 

COPY ./model /model
COPY ./app /app

EXPOSE 8000

ENTRYPOINT ["uvicorn", "app:app --reload"]

CMD ["uvicorn", "app.app:app", "8000"]