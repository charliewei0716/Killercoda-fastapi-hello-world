
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
