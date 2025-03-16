# Create a resource from a file. The -f flag is used to specify the file.
kubectl create -f basic-pod.yaml # You can specify the namespace via --namespace (otherwise default namespace is used). --all-namespace to interact with all namespaces
kubectl apply -f basic-pod.yaml # modify or create the object. 
kubectl apply -f basic-pod.yaml view-last-applied/set-last-applied/edit-last-applied # Apply also store previous configurations which can be manipulated
kubectl edit pod basic-pod. # Edit the pod via the default editor (interactive way)
kubectl run <name> --generator=run-pod/v1 --image=<my_image> # # This command runs a pod with the specified name and image using the run-pod/v1 generator. 
kubectl delete pod basicpod

kubectl scale deployment nginx-deployment --replicas=6

# Add label/annotation
kubectl label pods bar color=red
kubectl annotate pods bar color=red
# Use --overwrite to override the label/annotation
# color- remove the label
# While label are used with selector, annotations contains information that are used by tools and libraries.

# execute a command in a running container
kubectl exec -it <pod_name> -- bash

# Rollout undo for deployments
kubectl rollout undo deployments <name> --to-revision=<revision_number> # if revision is not specified is the previous

# add a debugging container
kubectl debug -it ephemeral-demo --image=busybox:1.28 --target=ephemeral-demo

# Create a token for the <service_account_name> (in this case default) service account, that you can use to authenticate as that ServiceAccount
kubectl create token default