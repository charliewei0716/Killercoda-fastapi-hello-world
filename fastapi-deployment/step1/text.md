

<br>


## 建構 Docker image

可以使用 `docker build`{{}} 指令從範例代碼中的 Dockerfile 建構 Docker image。以下是此指令的語法：

```bash{4}
# Build an image
# OPTIONS - optional;  一些額外的設定
# PATH - required;  Dockefile 的引用位置
docker build [OPTIONS] PATH

# 其中 OPTIONS 可以是:
-t, --tag - 設定 image 的 name 與 tag
-f, --file - 設置 Dockerfile 的檔名

# 完整 OPTIONS 可使用以下指令查找
docker build --help
```{{}}


<br>


例如你可以直接執行以下代碼，使用當前目錄中 Dockerfile 建構名為 fastapi-helloworld 的 Docker image ，並設定其 tag 為 v1

```bash
docker build -t fastapi-helloworld:v1 .
```{{exec}}


<br>



觀察其中的 log 並等待 Docker image 建構完成，使用以下指令查看所有的 Docker image：

```bash
docker image ls
```{{exec}}


<br>


## 創建 Docker container

接著需要對 Docker image 進行測試並驗證是否符合預期的行為。使用 Docker image 創建 container，可以使用 `docker run`{{}} 指令，以下是此指令的語法：

```bash{5}
# Execute an image
# OPTIONS - optional;  一些額外的設定
# IMAGE -  required; 提供要執行的 image 名稱
# COMMAND and ARGS - optional; 指示容器在啟動時要運行的特定命令
docker run [OPTIONS] IMAGE [COMMAND] [ARG...]

# 其中 OPTIONS 可以是:
-d, --detach - 容器於背景執行
-p, --publish - 將容器端口暴露給主機
-it - 開啟交互式介面

# 完整 OPTIONS 可使用以下指令查找
docker run --help
```

<br>


例如你可以直接執行以下代碼，使用上述建立的 Docker image 創建為 container，設定 container 於背景執行並綁定本機與 container 端口

```bash
docker run -d -p 80:80 fastapi-helloworld:v1
```{{exec}}


<br>

