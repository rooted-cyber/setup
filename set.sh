cpp() {
cp -f tu /bin
chmod 777 /bin/tu
sudo rm /bin/tu
sudo cp tu /bin
sudo chmod 777 /bin/tu
cp tu $PREFIX/bin
chmod 777 $PREFIX/bin/tu
}
mtt() {
cd /
if [ -e setup ];then
cd /set*
cp con* tok* /m*t*t
cp tu y* ran* ul /bin
chmod 777 /bin/tu /bin/y* /bin/ran* /bin/ul
fi
}
dl() {
cd ~
wget -O tu https://gist.githubusercontent.com/rooted-cyber/05ca0b015cdbdb3ac87bb9cdaed3da75/raw/tu
cpp > /dev/null 2>&1
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
dpkg -i *os* || sudo dpkg -i *os*
}
teos() {
fol
cp font* termux* ~/.termux
dpkg -i *termux*deb
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
mtt
