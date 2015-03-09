salt:
  cloud: 
    providers:
      - gce
    gce_project: PROJECT_ID
    gce_service_account_email_address: email@developer.gserviceaccount.com
salt_cloud_certs:
  gce: 
    pem: |
      -----BEGIN RSA PRIVATE KEY-----
      ...
      ...
      -----END RSA PRIVATE KEY-----