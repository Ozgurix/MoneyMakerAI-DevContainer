alias k="kubectl"

export AWS_ACCESS_KEY_ID=$(kubectl get secret aiw-secret -n moneymaker-ai -o jsonpath='{.data.AWS_ACCESS_KEY_ID}' | base64 --decode)
export AWS_SECRET_ACCESS_KEY=$(kubectl get secret aiw-secret -n moneymaker-ai -o jsonpath='{.data.AWS_SECRET_ACCESS_KEY}' | base64 --decode)
export DATABASE_HOST=$(kubectl get svc moneymaker-ai-mysql -n moneymaker-ai -o jsonpath='{.spec.clusterIP}')
export MLFLOW_HOST=$(kubectl get svc moneymaker-ai-mlflow -n moneymaker-ai -o jsonpath='{.spec.clusterIP}')
export MLFLOW_S3_ENDPOINT_URL=http://$(kubectl get svc moneymaker-ai-minio -n moneymaker-ai -o jsonpath='{.spec.clusterIP}'):9000