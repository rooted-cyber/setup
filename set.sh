dl() {
cd ~
wget -O tu https://gist.githubusercontent.com/rooted-cyber/05ca0b015cdbdb3ac87bb9cdaed3da75/raw/tu
}
fol() {
cd ~/setup
}
msg() {
echo -e "\033[1;92m"
echo -e "$@" >&2
}
cpost() {
fol
dpkg -i *os*
}
teos() {
fol
cp font* termux* ~/.termux
dpkg -i *termux*
}
fot() {
cd /bin
if [ -e apt ];then
msg os found !!!
cpost
dl
echo
echo
else
msg Termux found !!!
echo
teos
dl
fi
}
fot
