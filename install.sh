msg() {
echo -e "\033[1;92m"
echo -e "$@" >&2
}
gc() {
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
a() {
printf "\n\033[1;92m Updating package..\n\n"
apt install --fix-broken
apt update
apt update -y
apt upgrade -y
apt-get update -y
apt-get upgrade -y
apt install --fix-broken
apt install git python3 python-pip
gc
}
a