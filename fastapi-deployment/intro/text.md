

<br>


## 介紹

演示透過 Dockerfile 建構一個 FastAPI 的 Docker image，並編寫 Deployment 與 Service 等 Kubernetes 元件公開佈署 API


<br>


## 步驟說明

1. 查看 FastAPI 範例代碼，其中包含可直接執行的 Dockerfile
2. 使用 `docker build`{{}} 指令建構 Docker image，與 `docker run`{{}} 測試 image
3. 建立地端的 Registry Server，模擬 `docker push`{{}} 流程，並提供 Kubernetes 拉取 image
4. 建立 Kubernetes Namespace
5. (編輯中) Kubernetes Deployment
6. (編輯中) Kubernetes Service


<br>


查看 FastAPI 範例代碼：

```
cd fastapi-hello-world/
ls
```{{exec}}
