# Print grafana admin password.
kubectl get secret --namespace grafana grafana -o jsonpath="{.data.admin-password}" | base64 --decode
