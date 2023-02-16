

<br>


此步驟將使用 Docker 官方提供的 Registry image 建構私人的 Registry Server, 其目的有以下
1. 模擬使用 `docker push`{{}} 指令推送建構完成的 image 而不用註冊或登入 Docker Hub
2. 供後續 Kubernetes 拉取 image，且一樣不需經由 Docker Hub


<br>


## 佈署 Registry Server

執行以下指令啟動 Registry container:

```plain
docker run -d -p 5000:5000 --restart=always --name registry registry:2
```{{exec}}

此 Registry container 將背景執行於 5000 端口，現在可以開始使用 Registry 了


<br>


## 推送 image

首先使用 `docker tag`{{}} 指令重新標記建構完成的 image

```plain
docker tag fastapi-helloworld:v1 localhost:5000/fastapi-helloworld:v1
```{{exec}}

接著使用 `docker push`{{}} 指令推送標記後的 image

```plain
docker push localhost:5000/fastapi-helloworld:v1
```{{exec}}


<br>


## 檢驗

通過[連結]({{TRAFFIC_HOST1_5000}}/v2/_catalog)查看 Registry 中所有的 image，當然現在只會有 fastapi-helloworld image

```json
{"repositories":["fastapi-helloworld"]}
```{{}}


<br>

