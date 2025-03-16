# Repo command
helm add repo <repo-name> <repo-url> # Add a Helm repository (fetch index.yaml file) containing Helm charts
helm repo add bitnami https://charts.bitnami.com/bitnami
helm repo remove <repo-name> # Remove a Helm repository

helm repo list # List Helm repositories installed

helm search repo <repo-name> # Search for Helm charts in a repository

helm repo update # Update the list of Helm repositories

helm pull <repo-name>/<chart-name> # Download a Helm chart from a repository directly

helm repo index <directory> # Generate an index.yaml file for a Helm repository containing packaged Helm charts
# Options:
# --merge: Merge the generated index.yaml file with an existing one

#Chart command
helm install <installation-name> <chart-name> --values <file_name>.yaml # Install a Helm chart. Installation name is a custom name for the installation
helm install my-release bitnami/drupal --values values.yaml
# Options:
# --values: Specify the values file for the installation
# --set: Set values for the installation
# --namespace: Specify the namespace for the installation
# --version: Specify the version of the chart to install
# --wait: Wait for the installation to complete. I.e. wait for all pods to be up and running
# --atomic: Like wait by rollback the installation if it fails
# --timeout: Specify the time to wait for the installation to complete
# --dry-run: Simulate the installation
# --debug: Enable debug mode
# --generate-name: Generate a name for the installation. By default a combination of the chart name and a timestamp is used. --name-template can be used to specify a custom name template e.g. myapp-{{ randAlphaNum 5 }}
# --post-renderer: Specify a command where to sent YAML data that can be modified before being sent to Kubernetes
helm uninstall <chart-name> # Uninstall a Helm chart
# -- keep-history: Keep the history of the installation

helm upgrade <chart-name> <chart-name> --values <file_name>.yaml # Upgrade a Helm chart
# --install: Install the chart if it doesn't exist
# --force: will delete and recreate the object even if it was not necessary by default
# --cleanup-on-fail: will delete the new resources created during the upgrade if the upgrade fails


helm history <chart-name> # Get the history of a Helm installation

helm rollback <chart-name> <revision-number> # Rollback a Helm installation to a previous revision

helm create <chart-name> # Create a new Helm chart for you
helm lint <chart-name> # Lint a Helm chart
helm template <chart-name> # Render a Helm chart locally without interrogating the Kubernetes cluster
helm get template <chart-name> # Get the template as they were sent to Kubernetes (i.e. if it interepted by Servish Mesh, it will show the template before the injection)

# Some other commands
helm get notes <chart-name> # Get the notes for a Helm installation
helm get values <chart-name> # Get the values for test last installation (with --all flag to get all the given values for the installation, not the default)
helm inspect values <chart-name> # Inspect the default values for a Helm chart
helm get manifest <chart-name> # Get the exact manifest helm is applying to the cluster with values applied

#
helm package <chart-name> # Package a Helm chart into a versioned chart archive
helm dependency update <chart-name> # Update the dependencies for a Helm chart if any (run before packaging the chart)
helm dependency build <chart-name> # Resolve the dependencies for a Helm chart if any

helm plugin install <plugin-name> # Install a Helm plugin
helm plugin list # List installed Helm plugins
helm plugin remove <plugin-name> # Remove a Helm plugin
helm plugin update <plugin-name> # Update a Helm plugin

