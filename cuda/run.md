


1. sudo docker run -itd  --rm --gpus all --name cuda -p 9823:22 xianzixiang/cuda11  bash

docker run -itd  --rm --gpus all --name cuda -p 9823:22 nvidia/cuda:11.0-base
2. docker stop rm
3. docker build -t xianzixiang/cuda11 . 
4. docker push xianzixiang/cuda11
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


checkgpu:
/py/bin/python
import aicmder
aicmder.benchmark.torch_info()




