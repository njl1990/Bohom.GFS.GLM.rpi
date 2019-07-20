# RPI run.sh
APP_PATH=/usr/local/gfs/glm

#1.cc
echo start cc
nohup python $APP_PATH/rpi/cc.py > $APP_PATH/cc.log & 
echo $! > $APP_PATH/cc_pid

#2.save 
echo start save
nohup python $APP_PATH/rpi/save.py > $APP_PATH/save.log & 
echo $! > $APP_PATH/save_pid

#3.mkgif
echo start mkgif
nohup python $APP_PATH/rpi/mkgif.py > $APP_PATH/mkgif.log & 
echo $! > $APP_PATH/mkgif_pid

#4.web
echo start web
nohup python /images/web.py > $APP_PATH/mkgif.log &
echo $! > $APP_PATH/web_pid
