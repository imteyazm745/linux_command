#Read in one character from STDIN.
#If the character is 'Y' or 'y' display "YES".
#If the character is 'N' or 'n' display "NO".
#No other character will be provided as input.
#Output format echo YES or NO to STDOUT.

read char
if [ $char == 'y' ] || [ $char == 'Y' ]
then
echo "YES"
else
echo "NO"
fi
