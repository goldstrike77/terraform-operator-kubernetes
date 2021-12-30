#### Print grafana admin password.
```hcl
kubectl get secret --namespace visualization grafana -o jsonpath="{.data.admin-password}" | base64 --decode
```

#### Reference
- [grafana](https://github.com/grafana/helm-charts/blob/main/charts/grafana/README.md)