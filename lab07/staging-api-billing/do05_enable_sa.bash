gcloud run services add-iam-policy-binding private-billing-service \
  --member=serviceAccount:billing-service-sa@$GOOGLE_CLOUD_PROJECT.iam.gserviceaccount.com \
  --role=roles/run.invoker \
  --region us-central1 \
  --platform managed
