# jupyter-challenge-api

Since serialized model was provided and Python solutions are prefered on 2 applications to put the model in a RESTful endpoint /predict: Scikit-Learn and FastAPI. Uvicorn brings an easy web server

# Docker image 
 Dock

# GKE deployment

ADD your public IP to allowed from private cluster

gcloud container clusters update regional-private-dev --enable-master-authorized-networks --region=us-central1    --master-authorized-networks 35.237.136.217/32

Download Kubeconfig


gcloud container clusters get-credentials regional-private-dev --region us-central1 --project latam-challenge

Deploy 

kubectl -f api.yml

# Uploading newer images and Application Pipeline

Pushing to any of two environment branches (develop or main) should upload docker image to GCR

# Future Steps

-Add workload identity and authenticate to private GKE AND apply new deployment when new image is uploaded
-Trim docker image
-Enable Slack notification when pipeline is done

# References

 * [FastAPI and Scikit-Learn: Easily Deploy Models](https://nickc1.github.io/api,/scikit-learn/2019/01/10/scikit-fastapi.html)
 * [FastAPI. Deployment](https://fastapi.tiangolo.com/deployment/)
 * [FastAPI. Imágenes de Docker oficiales](https://github.com/tiangolo/uvicorn-gunicorn-fastapi-docker)
