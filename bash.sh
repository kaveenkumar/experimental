which $SHELL
-> /bin/bash

echo $USER
echo $HOSTNAME
echo $PWD
-> another way of running the commands

#!/bin/bash
-> called a shebang

whoami
-> user name

date
-> current date and time

bash bash.sh
OR
chmod +x bash.sh
./bash.sh
-> to run the bash script

sleep 1
-> sleep for 1 sec

name="Kaveen"
-> name is a variable
echo "Hello $name"

echo "What is your name?"
read name
-> allows argument passing via terminal (similar to input() in python)
echo "Hello $name"

name=$1
-> first argument passed
./bash.sh Kaveen

name=$1 age=$2

user=$(whoami)
-> format for variable = output of a command

twitter="Elon Musk"
-> on terminal create a variable but this var is not accessible inside scripts
export twitter
-> now the var is accessible systemwide and inside child scripts (sort of global in python)
-> but the environment var is still not permanent
-> edit .bashrc file
export twitter="Elon Musk"
now, everytime system is booted, bashrc runs and the env var is created











