

<br>


## 介紹

演示透過 Dockerfile 建構一個 FastAPI 的 Docker image，並編寫 Deployment 與 Service 等 Kubernetes 元件公開佈署 API


<br>


## 步驟說明

1. 查看 FastAPI 範例代碼，其中已包含可直接執行的 Dockerfile 與 Kubernetes yaml 檔
2. 使用 `docker build`{{}} 指令透過範例代碼中的 Dockerfile 建構 Docker image
3. (編輯中) Kubernetes Deployment
4. (編輯中) Kubernetes Service


<br>


查看 FastAPI 範例代碼：

```
cd fastapi-hello-world/
ls
```{{exec}}
