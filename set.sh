fol() {
cd ~/setup
}
fix() {
apt install --fix-broken
}
oste() {
cd /
if [ -e system ];then
printf "\033[1;92m Found Termux\n"
fol
dpkg -i a*term*deb
cp font* termux* ~/.termux
#cp .zshrc ~
else
printf "\033[1;91m Not Found Termux, any os found\n"
fol
dpkg -i a*os.deb
fi
}
chp() {
cd $PREFIX/bin
if [ -e $a ];then
printf "\n\033[1;93m Already installed $a\n"
else
printf "\n\033[1;95m Installing $a\n"
apt install $a -y || apt reinstall $a -y
fi
}
chps() {
cd /bin
if [ -e $a ];then
printf "\n\033[1;93m Already installed $a\n"
else
printf "\n\033[1;95m Installing $a\n"
apt install $a -y || apt reinstall $a -y
fi
}
chtm() {
cd /
if [ -e system ];then
printf "\033[1;92m Found Termux\n"
chp
else
printf "\033[1;91m Not Found Termux, any os found\n"
chps
fi
}
sta() {
fix
apt update
apt upgrade -y
apt install --fix-broken -y
}
sta
for a in wget python3 figlet toilet python-pip openssh;do
chtm
done
oste
sta
fix