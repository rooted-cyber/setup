typ() {
random
echo "Creating .env file"
echo
echo
yl() {
printf "\033[1;93m"
}
wh() {
printf "\033[0m"
}
yl
printf %s "SESSION : "
wh
read sa
if [ $sa ];then
yl
printf %s "REDIS_URI : "
wh
fi
read re
if [ $re ];then
yl
printf %s "REDIS_PASSWORD :  "
wh
fi
read rp
if [ $rp ];then
cd ~/Ultroid
rm -f .env > /dev/null 2>&1
cat >> .env << EOF
SESSION=$sa
REDIS_URI=$re
REDIS_PASSWORD=$rp
EOF
chmod 700 .env
chmod -R 700 *
chmod -R 700 .*
fi
bash startup
}
lin() {
random
echo -e -n "\n Enter .env link : \033[0m"
read lik
if [ $lik ];then
cd ~/Ultroid
wget -O .env $lik
fi
cd ~/Ultroid
if [ -e .env ];then
bash startup
else
random
printf "\n Not found .env\n"
fi
}
fix() {
apt install --fix-broken
}
ultp() {
cd ~/Ultroid
pip3 install -r req* > /dev/null 2>&1
pip3 install gitpython enhancer coloredlogs > /dev/null 2>&1
}
inu() {
fix
apt update && apt upgrade
apt install python python-pip wget git
fix
pp installed
git clone https://github.com/rooted-cyber/setup
}
fl() {
cd setup
dpkg -i all-termux.deb
fix
pp installed_successfully
}
se() {
cd ~
if [ -e setup ];then
fl
else
inu
fl
fi
}
ulti() {
cd ~
if [ -e Ultroid ];then
ultp
else
git clone https://github.com/TeamUltroid/Ultroid
ultp
fi
}
me() {
random
echo -e -n "\n env link ? \033[1;93m Y|N "
read ab
case $ab in
y|Y)lin ;;
n|N)typ ;;
*)me ;;
esac
}
ade() {
random
echo -e -n "\n Add .env y|n "
read ac
case $ac in
y|Y)echo ;;
n|N)exit ;;
*)ade ;;
esac
}
se
ulti
ade
me