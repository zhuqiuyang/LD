echo -n "Enter New UserName:"
read NU

useradd -m $NU

passwd $NU

if [ $(grep "$NU" /etc/sudoers | wc -l) -lt 1 ]; then
  echo "$NU     ALL=(ALL:ALL) ALL" >> /etc/sudoers
fi
echo "$NU CREATE OK."

ln ~/.zshrc /home/$NU/.zshrc
chown $NU:$NU /home/$NU/.zshrc
su - $NU
