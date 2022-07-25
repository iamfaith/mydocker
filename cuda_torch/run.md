DOCKER_BUILDKIT=0 docker-compose up --build

issue with A100:
/torch/bin/python -m pip install torch==1.9.0+cu111 torchvision==0.10.0+cu111 torchaudio==0.9.0 -f https://download.pytorch.org/whl/torch_stable.html

https://peaku.co/questions/3066-%C2%BFcomo-se-usa-pytorch-(%2B-cuda)-con-una-gpu-a100


1. sudo docker run -itd  --rm --gpus all --name cuda -p 9823:22 xianzixiang/cuda11  bash
2. docker stop rm
3. docker build -t xianzixiang/cuda11 . 
4. docker push xianzixiang/cuda11
5. modify docker-compose(volume), supervisor app.conf