# It gets deployed in invoce-ninja namespace by default
# Make sure that you firs creates persistent storage claim
# named invoiceninja-nfs in this namespace
kubectl apply -f cm-environment.yaml
kubectl apply -f cm-nginx.yaml
kubectl apply -f sec-environment.yaml
kubectl apply -f invoiceninja.yaml
kubectl apply -f service.yaml
kubectl apply -f ingress.yaml