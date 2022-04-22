


1. sudo docker run -itd  --rm --gpus all --name cuda -p 9823:22 xianzixiang/cuda11  bash
2. docker stop rm
3. docker build -t xianzixiang/cuda11 . 
4. docker push xianzixiang/cuda11
