#### Print bootstrap password.
kubectl get secret --namespace cattle-system bootstrap-secret -o go-template='{{.data.bootstrapPassword|base64decode}}{{ "\n" }}'

#### Remove namespace
Can remove namespace by running [kubectl edit namespace cattle-system] and remove the finalizer called controller.cattle.io/namespace-auth then save.

#### Restore the webhooks.
kubectl get validatingwebhookconfiguration rancher.cattle.io -o yaml > vwc-rancher.cattle.io.yaml
kubectl get mutatingwebhookconfiguration rancher.cattle.io -o yaml > mwc-rancher.cattle.io.yaml
kubectl delete validatingwebhookconfiguration rancher.cattle.io
kubectl delete mutatingwebhookconfiguration rancher.cattle.io