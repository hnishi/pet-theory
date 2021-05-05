gcloud run deploy frontend-prod-service \
  --image gcr.io/$GOOGLE_CLOUD_PROJECT/frontend-prod:0.1 \
  --platform managed \
  --region us-central1 \
  --allow-unauthenticated
