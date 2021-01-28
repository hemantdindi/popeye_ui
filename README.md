# popeye-ui
A UI for Popeye - https://github.com/derailed/popeye

# Usage 

A docker image is already available at - ``` hemantdindi/popeye-ui:v0.1 ```

Popeye UI is aimed at running popeye on the k8s environment for which sanity report is generated immediately.

Using it is very simple, deploy the k8s artefacts using kubectl

```sh
kubectl create -f popeye-ui-namespace.yaml
kubectl create -f popeye-ui-rbac.yaml
kubectl create -f popeye-ui-deployment.yaml
```

In this case, We are creating a LoadBalancer Service. Navigate to the LoadBalancerIP:8000 to access the UI.
In case you want to use NodePort, please create a service accordingly.

## UI for Popeye

![Screenshot 01](./images/ui-01.png)
![Screenshot 02](./images/ui-02.png)
