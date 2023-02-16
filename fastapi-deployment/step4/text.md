

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


其中描述了 Pod 是由名為 fastapi-helloworld 的 container 組成，而 fastapi-helloworld 是根據名為 localhost:5000/fastapi-helloworld:v1 的 image 運行而成，並且在 Pod 上帶有 `app: fastapi`{{}} 的標籤；然後 `.spec`{{}} 中將帶有標籤 `app: fastapi`{{}} 的 Pod 複製為 3 份


<br>


使用 `kuberctl apply`{{}} 指令由  `deployment.yaml`{{}} 建立此 Deployment，

```
kubectl apply -f deployment.yaml
```{{exec}}


<br>


使用 `kuberctl get`{{}} 指令查看建立的 Deployment
```
kubectl get deployment
```{{exec}}


<br>

