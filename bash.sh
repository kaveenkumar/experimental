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
-> allows argument passing via terminal (similar to input() in python) and store it in name
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


echo $RANDOM
-> generate a random number 0-32767

echo $(())
-> the inside paranthesis indicates math operation 

echo $((2 + 3))

echo $(( $RANDOM % 10 ))
-> mod of 0-32k / 10; output is always between 0-9

echo $(( $RANDOM % 20 ))
-> 0 - 20


echo "Do you like coffee? (y/n)"
read coffee
if [[ $coffee == "y" ]]; then
  echo "blah"
else
  echo "blah blah"
fi


echo "Do you like coffee? (y/n)"
read coffee
if [[ $coffee == "y" ]]; then
  echo "blah"
else
  echo "blah blah"
  exit 1
  -> exits the script
fi


if [[ cond 1 || cond 2 ]]; then
-> OR condition

if [[ cond 1 && cond 2 ]]; then
-> AND condition

if [[ outer cond ]]; then
  if [[ inner cond ]]; then
    echo "inner"
  fi
fi


if [[ cond ]]; then
  echo "cond 1"
elif [[ cond 2 ]]; then
  echo "cond 2"
fi


echo "Welcome tarnished to Elden ring, Please select your starting class:
1 - Samurai
2 - Prisoner
3 - Prophet"

read class

case $class in
  1)
    type="Samurai"
    hp=10
    attack=20
    ;;
  2)
    type="Prisoner"
    hp=20
    attack=8
    ;;
  3)
    type="Prophet"
    hp=30
    attack=4
    ;;
esac

echo "You have chosen $type class. Your HP is $hp etc."
