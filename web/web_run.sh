echo start web
nohup python /images/web.py > $APP_PATH/mkgif.log &
echo $! > $APP_PATH/web_pid