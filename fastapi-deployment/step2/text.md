

<br>


此步驟開始前可以先建立空資料夾，用以存放所有 Kubernetes YAML 檔

```
mkdir k8s_yaml
cd k8s_yaml/
```{{exec}}


<br>


## Kubernetes Namespace

為了方便管理，通常會將相關的 Kubernetes 元件放入相同的 Namespace 中，本課程中也將遵照這個慣例。使用以下命令建立 `namespace.yaml`{{}} ：

```
touch namespace.yaml
ls
```{{exec}}


<br>


進入編輯環境於 `namespace.yaml`{{}} 編寫以下內容：

```yaml
apiVersion: v1
kind: Namespace
metadata:
  name: fastapi
```


<br>


使用 `kuberctl apply`{{}} 指令由  `namespace.yaml`{{}} 建立名為 fastapi 的 Namespace

```
kubectl apply -f namespace.yaml
```{{exec}}


<br>


使用 `kuberctl get`{{}} 指令查看建立的 Namespace
```
kubectl get namespace
```{{exec}}


<br>
