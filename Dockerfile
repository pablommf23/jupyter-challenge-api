FROM tiangolo/uvicorn-gunicorn:python3.8-slim 

ENV DEBIAN_FRONTEND=noninteractive

ENV MODULE_NAME=app 

ADD requirements.txt . 

RUN pip install -r requirements.txt \    
    && rm -rf /root/.cache 

EXPOSE 8000

ENTRYPOINT ["uvicorn", "app:app --reload"]

CMD ["uvicorn", "app.app:app", "8000"]