if [ $# -eq 0 ];then
msg tu command
msg
msg command:
msg ins - install all thing
msg cpp - copy files or plugins
msg env - create env
msg ses - generate session
msg os - setup termux/os
msg st - start ultroid
msg
exit
fi
fol() {
cd ~/Termux-Ultroid/Ultroid
}
uos() {
fol
pip3 install -r req*
fol
pip3 install telethon==1.36.0
fol
pip3 install -r res*/st*/opt*
}
termux() {
fol
pip3 install -r req*
fol
pip3 install telethon==1.36.0
for c in coloredlogs gitpython bs4 pytz enhancer telegraph aiohttp requests;do
msg installing
pip3 install $c
done
}
ins() {
cd /bin
if [ -e apt ];then
msg os found !!!
echo
echo
uos
else
msg Termux found !!!
echo
echo
termux
fi
}
star() {
fol
if [ -e startup ];then
bash startup
else
msg First install ultroid !!
echo
echo
exit 1
fi
}
if [ $1 == "ins" ];then
ins
elif  [ $1 == "cpp" ];then
bash -c "$(curl -fsSl https://gist.githubusercontent.com/rooted-cyber/1bd2b7d3eb4d66ab06ab5e83098395e3/raw/cpp)"
elif [ $1 == "env" ];then
fol
python3 -c "$(curl -fsSl https://gist.githubusercontent.com/rooted-cyber/02bcbcec333d5698dfb696156f8bdc09/raw/env)"
elif [ $1 == "ses" ];then
python3  -c "$(curl -fsSl https://gist.githubusercontent.com/rooted-cyber/832b915e64246556827da92176b41a4b/raw/pyro)"
elif [ $1 == "os" ];then
bash -c "$(curl -fsSl https://gist.githubusercontent.com/rooted-cyber/a9ae0aff5fd27e7e40acb68eadbcd1d9/raw/setup)"
elif [ $1 == "st" ];then
star
else
msg invalid
fi