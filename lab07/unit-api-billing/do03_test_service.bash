SERVICE_URL=$(gcloud run services describe public-billing-service \
  --platform managed \
  --region us-central1 \
  --format "value(status.url)")
echo $SERVICE_URL
curl -X GET $SERVICE_URL
