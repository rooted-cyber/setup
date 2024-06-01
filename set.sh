fol() {
cd ~/setup
}
msg() {
echo -e "\033[1;92m"
echo -e "$@" >&2
}
cpos() {
fol
dpkg -i *os*
}
teos()
fol
cp font* termux* ~/.termux
dpkg -i *termux*
}
fot() {
cd /bin
if [ -e apt ];then
msg os found !!!
cpos
echo
echo
else
msg Termux found !!!
echo
teos
fi
}