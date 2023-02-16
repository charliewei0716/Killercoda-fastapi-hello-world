

<br>


## 創建 Service

Kubernetes Service 主要定義了 Pod 的存取規則。使用以下命令建立 `service.yaml`{{}} ：

```plain
touch service.yaml
ls
```{{exec}}


<br>


進入編輯環境並於 `service.yaml`{{}} 編寫以下內容後存檔：

```yaml{2,7,11}
apiVersion: v1
kind: Service
metadata:
  name: fastapi-service
spec:
  selector:
    app: fastapi
  ports:
  - port: 80
    targetPort: 80
  type: NodePort
```{{copy}}


<br>


其中將帶有 `app: fastapi`{{}} 標籤的 Pod 使用 NodePort 方式對外公開


<br>


使用 `kuberctl apply`{{}} 指令由  `service.yaml`{{}} 將 Service 建立於 fastapi Namespace

```
kubectl apply -f service.yaml -n fastapi
```{{exec}}


<br>


<br>


## 驗證

使用 `kuberctl get`{{}} 指令查看 fastapi 中的 Service
```
kubectl get svc -n fastapi
```{{exec}}


<br>
