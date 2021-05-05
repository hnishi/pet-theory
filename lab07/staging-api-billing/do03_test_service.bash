BILLING_URL=$(gcloud run services describe private-billing-service \
  --platform managed \
  --region us-central1 \
  --format "value(status.url)")
echo $BILLING_URL
curl -X get -H "Authorization: Bearer $(gcloud auth print-identity-token)" $BILLING_URL
