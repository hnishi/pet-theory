gcloud run services add-iam-policy-binding frontend-prod-service \
  --member=serviceAccount:billing-service-sa@$GOOGLE_CLOUD_PROJECT.iam.gserviceaccount.com \
  --role=roles/run.invoker \
  --region us-central1 \
  --platform managed
