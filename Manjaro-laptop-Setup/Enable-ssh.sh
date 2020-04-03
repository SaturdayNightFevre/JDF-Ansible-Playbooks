sudo pacman -S openssh

sudo systemctl enable sshd

sudo systemctl start sshd

file=/etc/ssh/sshd_config
sudo cp -p $file $file.old &&
awk '
$1=="PermitRootLogin" {$2="yes"}
$1=="PasswordAuthentication" {$2="yes"}
{print}
' $file.old > $file

sudo systemctl restart sshd