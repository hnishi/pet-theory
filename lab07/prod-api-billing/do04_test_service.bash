PROD_BILLING_SERVICE=private-billing-service
PROD_BILLING_URL=$(gcloud run services \
  describe $PROD_BILLING_SERVICE \
  --platform managed \
  --region us-central1 \
  --format "value(status.url)")
echo $PROD_BILLING_URL
curl -X get -H "Authorization: Bearer $(gcloud auth print-identity-token)" \
  $PROD_BILLING_URL
