

<br>


請完成以下項目：
- 使用 yaml 佈署一個滿足以下條件的 Deployment ：
    - 其中 Pod 帶有一個使用 nginx:1.14.2 映像檔的容器
    - 確保同時間一定有兩個 Pod 可以提供服務
- 使用 yaml 佈署一個 Service，使 Pod 對外服務於 30666 端口


<br>


使用[超連結]({{TRAFFIC_HOST1_30666}})查看 Nginx 初始頁面


<details><summary>Deployment 提示</summary>


<br>


```yaml
apiVersion: apps/v1
kind: Deployment
metadata:
  name: nginx-deployment
spec:
  selector:
    matchLabels:
      app: nginx
  replicas: ???
  template:
    metadata:
      labels:
        app: nginx
    spec:
      containers:
      - name: nginx
        image: ???
        ports:
        - containerPort: 80
```


<br>


</details>


<br>


<details><summary>Service 提示</summary>


<br>


```yaml{12}
apiVersion: v1
kind: Service
metadata:
  name: nginx-service
spec:
  selector:
    app: nginx
  type: NodePort
  ports:
  - port: 80
    targetPort: 80
    nodePort: ???
```


<br>


</details>


