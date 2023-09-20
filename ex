ext() {
cd /sdcard
if [ -e deb/extract/extracted-deb ];then
random
printf "\n Successfully extracted deb file\n"
else
printf "\n\033[1;91m Not extracted !!!\n"
fi
}
bls() {
cd /sdcard
if [ -e deb/create/create-deb.deb ];then
random
printf "\n Successfully created deb file\n"
else
printf "\n\033[1;91m Not created !!!\n"
fi
}
ex() {
cd ~/deb
rm -rf *deb
cp /sdcard/deb/extract/*deb ~/deb
cd ~/deb
dpkg-deb -R *deb extracted-deb
chmod 755 ext* -R
cp -rf extracted-deb /sdcard/deb/ext*
ext
menu
}
bl() {
cp -rf /sdcard/deb/ext*/extr* ~/deb
if [ -e /sdcard/deb/extract/extracted-deb ];then 
rm -rf /sdcard/deb/ext*/extr*
fi
chmod -R 755 ~/deb/extracted-deb
cd ~/deb
dpkg-deb -b extracted-deb create-deb.deb
cp create-deb.deb /sdcard/deb/create
bls
}
pa() {
random
echo -e -n "Enter Password: "
read
exit
}
menu() {
random
echo -e -n "\n[1] Extract-deb \t\t [2] Create-deb\n\033[0m"
random
echo -n "Select : "
read o
case $o in
1)ex ;;
2)bl ;;
*)pa ;;
esac
}
menu