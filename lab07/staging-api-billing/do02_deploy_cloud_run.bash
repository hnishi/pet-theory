gcloud run deploy private-billing-service \
  --image gcr.io/$GOOGLE_CLOUD_PROJECT/billing-staging-api:0.2 \
  --platform managed \
  --region us-central1 \
  --no-allow-unauthenticated

