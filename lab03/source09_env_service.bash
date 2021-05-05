SERVICE_URL=$(gcloud run services describe pdf-converter \
  --platform managed \
  --region us-central1 \
  --format "value(status.url)")
echo $SERVICE_URL
