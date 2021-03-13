aws eks --region $(terraform output -raw region) update-kubeconfig --name $(terraform output -raw cluster_name)
kubectl version
wget -O v0.3.7.tar.gz https://codeload.github.com/kubernetes-sigs/metrics-server/tar.gz/v0.3.7 && tar -xzf v0.3.7.tar.gz
kubectl apply -f metrics-server-0.3.7/deploy/1.8+/

kubectl get deployment metrics-server -n kube-system

kubectl apply -f https://raw.githubusercontent.com/kubernetes/dashboard/v2.0.0-beta8/aio/deploy/recommended.yaml
