SERVICE_URL=$(gcloud run services describe frontend-staging-service \
  --platform managed \
  --region us-central1 \
  --format "value(status.url)")
curl -X GET $SERVICE_URL
echo see the web page in a browser: $SERVICE_URL
