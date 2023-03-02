![k8s Deployment](./k8s-deployment.png)

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


其中內容包含：
1. Pod 是由 1 個 container 組成
2. 其 container 名為 fastapi-helloworld，且容器端口設定為 80
3. container 使用名為 localhost:5000/fastapi-helloworld:v1 的 image
4. Pod 上具有 `app: fastapi`{{}} 的標籤
5. `.spec.selector.matchLabels`{{}} 與 `.spec.replicas`{{}} 指定將帶有標籤 `app: fastapi`{{}} 的 Pod 複製為 3 份


<br>


使用 `kuberctl apply`{{}} 指令由  `deployment.yaml`{{}} 將 Deployment 建立於名為 fastapi 的 Namespace

```
kubectl apply -f deployment.yaml -n fastapi
```{{exec}}


<br>


<br>


## 驗證

使用 `kuberctl get`{{}} 指令查看 fastapi 中的 Deployment

```
kubectl get deployment -n fastapi
```{{exec}}


<br>


<br>


## 實驗

因為 `deployment.yaml`{{}} 中的 `.spec.replicas`{{}} 設定，上述 Deployment 會確保一定有 3 個可使用的 Pod；以下實驗將透過手動移除 Pod 以模擬異常情況發生，觀察 Deployment 如何確保 Pod 的數量 


<br>


使用 `kubectl get`{{}} 指令查看由 `deployment.yaml`{{}} 建立的 3 個 Pod：

```
kubectl get pod -n fastapi
```{{exec}}

使用 Deployment 創建的 Pod 具有 {Deployment_name}-XXX-XXX 的命名格式；記下任一個 Pod 的名稱，替換並執行以下指令：

```
kubectl delete pod {Pod_name} -n fastapi
```{{copy}}

再次使用 `kubectl get`{{}} 指令查看 Pod 的變化：

```
kubectl get pod -n fastapi
```{{exec}}

可重複執行上述步驟，了解 Deployment 中的 replicas 機制


<br>

