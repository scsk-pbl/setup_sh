#! /bin/sh

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
sudo apt update
sudo apt install -y docker-ce

git clone https://github.com/toppers/hakoniwa-single_robot.git

cd hakoniwa-single_robot

which docker

service --status-all |& grep docker

service docker status

sudo apt install net-tools

bash docker/pull-image.bash

bash unity/download.bash single-robot  hackev-v1.0.0/WindowsBinary.zip


wget --no-check-certificate https://github.com/scsk-pbl/basic-course/archive/main.tar.gz
tar xpvf main.tar.gz basic-course-main/
mv basic-course-main/ basic-course
mv basic-course/ unity/assets/

sudo chmod 755 unity/assets/basic-course/Build/basic-course.exe

rm main.tar.gz

wget --no-check-certificate https://github.com/scsk-pbl/siroq/archive/main.tar.gz
tar xpvf main.tar.gz siroq-main/
mv siroq-main/ siroq
mv siroq/ sdk/workspace/

chmod -R 777 sdk/workspace/siroq

rm main.tar.gz

cd ..

sudo chmod -R 777 hakoniwa-single_robot


