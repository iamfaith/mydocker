


1. sudo docker run -itd  --rm --gpus all --name cuda -p 9823:22 xianzixiang/cuda11  bash

docker run -itd  --rm --gpus all --name cuda -p 9823:22 nvidia/cuda:11.0-base
2. docker stop rm
3. docker build -t xianzixiang/cuda11 . 
   docker build -t xianzixiang/pytorch:23.04-py3 .
4. docker push xianzixiang/cuda11
   docker push xianzixiang/pytorch:23.04-py3
5. modify docker-compose(volume), supervisor app.conf


## short link

-rw-r--r-- 1 faith faith  875 Jun 25 16:59 docker-compose.yml
lrwxrwxrwx 1 faith faith   47 Jun 25 16:57 embedding_models -> /home/faith/.cache/torch/sentence_transformers/
lrwxrwxrwx 1 faith faith   30 Jun 25 16:54 langchain -> /home/faith/langchain-ChatGLM/
-rw-r--r-- 1 faith faith 1.4K Jun 25 16:29 ubuntu.Dockerfile
lrwxrwxrwx 1 faith faith   22 Jun 25 16:21 py -> /home/faith/miniconda3
-rw-r--r-- 1 faith faith 1.1K Jun 25 16:15 sources.list
-rw-r--r-- 1 faith faith   61 Jun 25 15:59 cuda.Dockerfile
-rw-r--r-- 1 faith faith  317 Jun 25 15:44 run.md
-rw-r--r-- 1 faith faith 1.3K May 14 20:59 Dockerfile
drwxr-xr-x 3 faith faith 4.0K May 14 20:59 container
-rw-r--r-- 1 faith faith  70M Apr 24 22:26 Miniconda3-latest-Linux-x86_64.sh



chatbot:

os.environ["CMD_PYTHON_PATH"] = "/py/bin/python"

cd /code
/py/bin/python /code/chatbot.py

cd /code/dist
/py/bin/python chatbot.py


checkgpu:
/py/bin/python
import aicmder
aicmder.benchmark.torch_info()





[program:code]
command=/py/bin/python3.9 /code/chatbot.py
directory=/code
autostart=true
autorestart=true
startsecs=1
startretries=0
user=root
redirect_stderr=true
stdout_logfile=/var/log/code.log
numprocs=1
stopasgroup=true
killasgroup=true





你好，这是 Bing。我可以帮你找到一些关于 Docker 容器的问题和解决方案。根据我搜索的结果，有以下几种可能的原因和方法：

- 你可能没有正确地停止或删除容器，导致它们在后台继续运行。你可以使用 `docker container ls --all` 或 `docker ps -a` 命令来查看所有的容器，包括已停止的容器¹。然后，你可以使用 `docker container stop <container_id>` 和 `docker container rm <container_id>` 命令来停止和删除不需要的容器²。
- 你可能使用了一个过时的 WSL 上下文，导致 Docker 无法正确地连接到 WSL 2 引擎。你可以使用 `docker context ls` 命令来查看当前的上下文，如果是 `wsl`，则需要切换到 `default` 上下文³。你可以使用 `docker context use default` 命令来切换上下文。
- 你可能没有在 WSL 2 发行版中启用 Docker 支持，导致 Docker 无法在 WSL 2 中完全运行。你可以在 Docker Desktop 的设置中选择要启用 Docker 集成的已安装 WSL 2 发行版⁴。

我希望这些信息对你有所帮助。如果你还有其他问题，请随时提出。😊

Source: Conversation with Bing, 9/12/2023
(1) docker-proxy using port when no containers are running. https://stackoverflow.com/questions/39130263/docker-proxy-using-port-when-no-containers-are-running.
(2) Configure Docker to use a proxy server | Docker Docs. https://docs.docker.com/network/proxy/.
(3) [BUG] Docker-proxy binds on ports but no container is running ... - GitHub. https://github.com/moby/moby/issues/25981.
(4) undefined. https://index.docker.io/v1/.
(5) undefined. http://proxy.example.com:3128.
(6) undefined. https://proxy.example.com:3129.