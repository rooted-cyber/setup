fix() {
apt update
apt upgrade -y
apt install curl -y
bash -c "$(curl -fsSl https://gist.githubusercontent.com/rooted-cyber/a9ae0aff5fd27e7e40acb68eadbcd1d9/raw/setup)"
}
fix


dl() {
wget -O tu https://gist.githubusercontent.com/rooted-cyber/05ca0b015cdbdb3ac87bb9cdaed3da75/raw/tu
}
uli() {
cd ~/Termux-Ultroid
git clone https://github.com/TeamUltroid/Ultroid
cd Ultroid
dl
bash tu ins
bash tu env
bash tu st
}
tso() {
cd ~
if [ -e Termux-Ultroid ];then
uli
else
mkdir ~/Termux-Ultroid
uli
fi
}
tso