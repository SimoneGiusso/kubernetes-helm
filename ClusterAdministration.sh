# Commands to be run on the control plane node

# By default, there is a taint (opposite of nodeaffinity) to avoid scheduling pods on the master node where the control plane is running. P.S. master node not visible for managed k8s
kubectl describe nodes | grep -i taint
# To remove the taint from the master node, run the following command (do not run this command on a production cluster):
kubectl taint nodes --all node-role.kubernetes.io/control-plane-

# To change configuration (e.g. default namespace)
kubectl config set-context my-new-context --namespace=my-namespace
# To start the new context
kubectl config use-context my-new-context