#!/bin/bash

fol() {
cd /sdcard/deb
}
dell() {
fol
rm -rf extracted
cd ~/deb
rm -rf *deb extracted
}
cr() {
mkdir ~/deb
mkdir /sdcard/deb
mkdir /sdcard/deb/start
}
extt() {
dell > /dev/null 2>&1
fol
cd start
rm -rf ~/deb/*deb > /dev/null 2>&1
mv *deb ~/deb
msg now extracting your deb file
cd /sdcard/deb
rm -rf extracted
cd ~/deb
dpkg-deb -R *deb extracted
mv extracted /sdcard/deb
msg 
msg Extracted.
}
ctt() {
cd ~/deb
rm -rf ext* > /dev/null 2>&1
fol
cp -rf extracted ~/deb
cd ~/deb
chmod 775 -R extracted
msg Now creating
dpkg-deb -b extracted rootedcyber.deb
cp root* /sdcard/deb
msg
msg now created
}

ban() {
tof extract
fol
cr > /dev/null 2>&1
cd start
if [ -e *deb ];then
msg 1.Extract deb file
echo -e -n "\n\n\n\033[38;2;245;0;172m select : "
read e
case $e in
1)extt ;;
esac
else
msg no any deb file !!
fi
clear
tof created
fol
if [ -e extracted ];then
msg 1.create deb file
echo -e -n "\n\n\n\033[38;2;245;0;172m select : "
read ex
case $ex in
1)ctt ;;
esac
fi
}
ban