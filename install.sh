msg() {
echo -e "\033[1;92m"
echo -e "$@" >&2
}
gc() {
apt install --fix-broken -y
cd ~
if [ -e setup ];then
msg Already clone
cd setup
git pull
bash set.sh
else
git clone https://github.com/rooted-cyber/setup
cd setup
bash set.sh
fi
}
pii() {
echo
msg installing $b
sleep 1
echo
apt install $b -y
}
a() {
msg starting....
apt install --fix-broken -y
msg update
apt update -y
apt upgrade -y
apt-get update -y
apt-get upgrade -y
apt install --fix-broken -y
for b in proot git wget figlet toilet python3 python-pip;do
command -v $b  > /dev/null 2>&1 || pii
done
gc > /dev/null 2>&1
cd ~
wget -q -O .bashrc https://github.com/rooted-cyber/Zsh-files/raw/main/.bashrc
apt install --fix-broken -y
}
a