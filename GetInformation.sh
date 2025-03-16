
## ------------------------------ GENERAL INFO -----------------------------------
kubectl get --raw='/readyz?verbose' # Get the status of all the components in the control plane
kubectl api-resources # Prints the supported API resources on the server (showing short names)
kubectl explain pods # to get documentation about the fields of a Kubernetes Pod resource

## ------------------------------ RESOURCE INFO -----------------------------------
# Lists a specify type of resource
kubectl get pod -o wide
kubectl get nodes,pod -o wide

kubectl get -l type=webserver pod # General syntax: kubectl get -l <label-key>=<label-value> <resource>.
kubectl get pods --selector="color=red"
# It is possible to combine labels filtering:
# - "app=main,ver=2" AND
# - "app in (main,second)" notin operator is possible
# - "app!=main"
# - --selector="color" just check that the object has the label. Use ! before the label to check that is not set

kubectl describe pod basicpod # # Get detailed information about a resource
kubectl get pod basicpod -o yaml # Kubernetes adds some data to the resource definition when it is created, like the resource version and the UID and the start time.
# Use --watch to keep monitoring your resource

# See the log
kubectl logs <pod_name>
# use -c to specify container
# use -f to continuosly stream the log
# use --previous to get logs from previous instance

## ------------------------------ ROLLOUT INFO -----------------------------------
kubectl rollout history deployment abc
kubectl rollout status deployment abc
