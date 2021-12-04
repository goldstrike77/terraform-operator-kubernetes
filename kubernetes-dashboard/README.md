#### The clusterAdminRole parameter has been completely removed since version 2.0.0 because too dangerous.

#### Print kubernetes dashboard token.

```hcl
kubectl -n kubernetes-dashboard describe secret $(kubectl -n kubernetes-dashboard get secret | grep kubernetes-dashboard-token | awk '{print $1}') | grep 'token:' | sed 's/.*://' | sed 's/^[ \t]*//g'
```