

<br>


## 介紹

對於 FastAPI 框架，演示透過 Dockerfile 建構其 Docker image，並編寫 Deployment 與 Service 等 Kubernetes 元件完成 API 佈署


<br>


<br>


## 步驟說明

1. 查看 FastAPI 範例代碼，其中包含可直接執行的 Dockerfile
2. 使用 `docker build`{{}} 指令建構 Docker image 與 `docker run`{{}} 指令測試 image
3. 建立地端的 Registry Server 用以模擬 `docker push`{{}} 流程，並提供 Kubernetes 拉取 image
4. 建立 Kubernetes Namespace
5. 建立 Kubernetes Deployment
6. 建立 Kubernetes Service


<br>

