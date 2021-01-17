#play mp3 file in random time intervals
#Author: Nikolaus Rieder
#possibly move script with .mp3 files into different folder
#if so then write cd /PATH at beginning of script

cd /home/pi/vogelscheuche/

#https://www.eduonix.com/blog/shell-scripting/generating-random-numbers-in-linux-shell-scripting/
#3 ways to generate random numbers in shell

#infinite loop
while [ 1 ]
do
#MIN to MAX = Range of Random number
MIN=600
MAX=1800

#Generate Random number between 0 and MAX and put it in variable number
DIFF=$(($MAX-$MIN+1))
number=$(($(($RANDOM%$DIFF))+$MIN))
#display number for debugging
echo ¨Waiting for $number seconds¨

#wait pre-generated random interval
sleep $number

##play command from sox (http://sox.sourceforge.net/) 
#used to play sounds
#Hawk=1 Eagle=2 Crane=3 Buzzard=4

#choose randomly which file to play
file=$(($(($RANDOM%4))+1))

#play the chosen file
case $file in
	1) play hawk.mp3;;
	2) play eagle.mp3;;
	3) play crane.mp3;;
	4) play buzzard.mp3;;
esac

#DEBUGGING PURPOSE ONLY
#echo ¨File $file¨
#case $file in
#	1) echo ¨hawk¨;;
#	2) echo ¨eagle¨;;
#	3) echo ¨crane¨;;
#	4) echo ¨buzzard¨;;
#esac

done
