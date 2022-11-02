#1. Given N lines of input, print the 3rd character from each line as a new line of output.
#It is guaranteed that each of the n lines of input will have a 3rd character.

#solution :- 
cut -c 3

#2. Display the 2nd and 7th character from each line of text.

#Sample Input- Hello,World,how are you

#Sample Output -e,o,oe

cut -c 2,7 #it will print 2nd and the 7th character from each line of text.

#3. Display a range of characters starting at the 2nd position of a string and ending at the 7th position (both positions included).
#Sample Input - Hello, World, how are you

#Sample Output - ello, orld, ow are

#Solution
cut -c 2-7

#4. Display the first four characters from each line of text.
cut -c 1-4

