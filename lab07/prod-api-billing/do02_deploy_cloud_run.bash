gcloud run deploy billing-prod-service \
  --image gcr.io/$GOOGLE_CLOUD_PROJECT/billing-prod-api:0.1 \
  --platform managed \
  --region us-central1 \
  --no-allow-unauthenticated

