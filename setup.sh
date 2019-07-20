#!/bin/sh
APP_PATH=/usr/local/gfs/glm/rpi/
IMAGE_PATH=/images
INFO_PATH=/info
GIF_PATH=/gif

echo Create application path ...

echo create: $APP_PATH
mkdir -p $APP_PATH
echo create: $IMAGE_PATH
mkdir -p $IMAGE_PATH
echo create: $GIF_PATH
mkdir -p $GIF_PATH
echo create: $INFO_PATH
mkdir -p $INFO_PATH

# 1. build cc 
echo Install cc
echo Copy application files...
cp ./cc/cc.py $APP_PATH/cc.py
cp run.sh ~/Desktop/run.sh
chmod 777 ~/Desktop/run.sh

# build cc dependence
echo install application dependence...
#apt update
pip install -i https://pypi.tuna.tsinghua.edu.cn/simple Pillow
pip install -i https://pypi.tuna.tsinghua.edu.cn/simple opencv-python

# 2. build save
echo Install save
echo Copy application files...
cp ./save/save.py $APP_PATH/save.py

# 2. build mkgif
echo Install mkgif
echo Copy application files...
cp ./mkgif/mkgif.py $APP_PATH/mkgif.py

# 4.build runner 
echo Install appllication entrace...
sudo cp ./run.sh  $APP_PATH/run.sh
sudo cp ./stop.sh  $APP_PATH/stop.sh
sudo cp ./web/web.py $IMAGE_PATH/web.py
sudo chmod 777 $APP_PATH/run.sh
sudo chmod 777 $APP_PATH/stop.sh

echo Success!