# ==============================================================================
# EXPERIMENT 9: Automate Running Containerized App Using Kubernetes
# ==============================================================================

# Step 1: Create or Start Kubernetes Cluster
# ------------------------------------------------------------------------------
# Create a Kubernetes cluster using a cloud provider (GCP, AWS) or a local installation (Minikube):
minikube start

# Step 2: Push the Docker Image to Registry
# ------------------------------------------------------------------------------
# Push the Docker image of your application to a container registry like Docker Hub:
docker tag myimage:latest yourusername/myimage:latest
docker push yourusername/myimage:latest

# Step 3: Apply the Deployment and Service to the Cluster
# ------------------------------------------------------------------------------
# Apply the deployment manifest using the kubectl command-line tool:
kubectl apply -f deployment.yaml

# Apply the service manifest to expose the deployment to the network:
kubectl apply -f service.yaml

# Step 4: Verify the Deployment
# ------------------------------------------------------------------------------
# Verify the deployment by checking the status of the pods and the service:
# List all running pods for the deployment
kubectl get pods

# List all services and their assigned cluster IPs / ports
kubectl get services

# Inspect detailed status of the deployment
kubectl describe deployment myapp
