

<br>


## 創建 Deployment

Kubernetes Deployment 提供宣告式的方法，描述 Pod 中使用的 image、副本數、生命週期與更新方式。使用以下命令建立 `deployment.yaml`{{}} ：

```plain
touch deployment.yaml
ls
```{{exec}}


<br>


進入編輯環境並於 `deployment.yaml`{{}} 編寫以下內容後存檔：

```yaml{2,6,9,13,17}
apiVersion: apps/v1
kind: Deployment
metadata:
  name: fastapi-deployment
spec:
  replicas: 3
  selector:
    matchLabels:
      app: fastapi
  template:
    metadata:
      labels:
        app: fastapi
    spec:
      containers:
      - name: fastapi-helloworld
        image: localhost:5000/fastapi-helloworld:v1
        ports:
        - containerPort: 80
```{{copy}}


<br>


使用 `kuberctl apply`{{}} 指令由  `deployment.yaml`{{}} 建立名為 fastapi-deployment 的 Deployment，

```
kubectl apply -f deployment.yaml
```{{exec}}


<br>


使用 `kuberctl get`{{}} 指令查看建立的 Deployment
```
kubectl get deployment
```{{exec}}


<br>
