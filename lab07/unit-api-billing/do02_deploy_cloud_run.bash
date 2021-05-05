gcloud run deploy public-billing-service \
  --image gcr.io/$GOOGLE_CLOUD_PROJECT/billing-staging-api:0.1 \
  --platform managed \
  --region us-central1 \
  --no-allow-unauthenticated

