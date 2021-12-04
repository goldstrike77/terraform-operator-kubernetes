#### Print bootstrap password.

kubectl get secret --namespace cattle-system bootstrap-secret -o go-template='{{.data.bootstrapPassword|base64decode}}{{ "\n" }}'

Can remove namespace by running [kubectl edit namespace cattle-system] and remove the finalizer called controller.cattle.io/namespace-auth then save.