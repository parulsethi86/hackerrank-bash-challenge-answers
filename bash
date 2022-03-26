Q1. Given  lines of input, print the 3rd character from each line as a new line of output. It is guaranteed that each of the  lines of input will have a  character.
Sol: while read line; do echo $line | cut -c3; done

Q2. Display the  2nd and 7th character from each line of text.
Sol: while read line; do echo $line | cut -c 2,7; done 

Q3. The output should contain N lines.Each line should contain the range of characters starting at the 2 position of a string and ending at the 7 position (both positions included).
Sol: while read line; do echo $line | cut -c 2-7; done 

Q4. Display the first 20 lines of an input file.
Sol: head -n20

Q5. Display the first 20 characters of an input file.
sol: head -c20 

Q6. Display the last 20 lines of an input file.
Sol: tail -20 

Q7. Display the last 20 characters of an input file.
tail -c20

Q8. Output the text with all parentheses ()  replaced with box brackets [] .
Sol: tr '()' '[]'

Q9. Delete all the lowercase characters in the given block of text.
Sol: tr -d '[a-z]'

Q. Sample Input

00
00
01
01
00
00
02
02
03
aa
aa
aa
Sample Output

2 00
2 01
2 00
2 02
1 03
3 aa 
Sol: uniq -c | sed -e 's/^[ \t]*//' 

Q. Input Format

You are given a CSV file where each row contains the name of a city and its state separated by a comma.

Output Format

Replace the newlines in the input file with semicolons as demonstrated in the sample.

Sample Input

Albany, N.Y.
Albuquerque, N.M.
Anchorage, Alaska
Asheville, N.C.
Atlanta, Ga.
Atlantic City, N.J.
Austin, Texas
Baltimore, Md.
Baton Rouge, La.
Billings, Mont.
Birmingham, Ala.
Bismarck, N.D.
Boise, Idaho
Boston, Mass.
Bridgeport, Conn.
Sample Output

Albany, N.Y.;Albuquerque, N.M.;Anchorage, Alaska;Asheville, N.C.;Atlanta, Ga.;Atlantic City, N.J.;Austin, Texas;Baltimore, Md.;Baton Rouge, La.;Billings, Mont.;Birmingham, Ala.;Bismarck, N.D.;Boise, Idaho;Boston, Mass.;Bridgeport, Conn.

Sol: paste -d ';' -s 

Q. You are given a CSV file where each row contains the name of a city and its state separated by a comma.

Output Format

Restructure the file so that three consecutive rows are folded into one line and are separated by semicolons.

Sample Input

Albany, N.Y.
Albuquerque, N.M.
Anchorage, Alaska
Asheville, N.C.
Atlanta, Ga.
Atlantic City, N.J.
Austin, Texas
Baltimore, Md.
Baton Rouge, La.
Billings, Mont.
Birmingham, Ala.
Bismarck, N.D.
Boise, Idaho
Boston, Mass.
Bridgeport, Conn.
Sample Output

Albany, N.Y.;Albuquerque, N.M.;Anchorage, Alaska
Asheville, N.C.;Atlanta, Ga.;Atlantic City, N.J.
Austin, Texas;Baltimore, Md.;Baton Rouge, La.
Billings, Mont.;Birmingham, Ala.;Bismarck, N.D.
Boise, Idaho;Boston, Mass.;Bridgeport, Conn.

Sol: paste -d ';' - - -

Q. Task
You are given a text file that will be piped into your command through STDIN. Use grep to display all the lines that contain the word the in them. The search should be sensitive to case. Display only those lines of the input file that contain the word 'the'.

Input Format

A text file will be piped into your command through STDIN.

Output Format

Output only those lines that contain the word 'the'. The search should be case sensitive. The relative ordering of the lines in the output should be the same as it was in the input.

Sol: grep -e '\b the \b'

Q. Input Format

A text file will be piped into your command through STDIN.

Output Format

Output only those lines that contain the word 'the'. The search should NOT be case sensitive. The relative ordering of the lines in the output should be the same as it was in the input.
Sol: grep -ie '\bthe\b' or grep -iw 'the'

Q. Task
You are given a text file that will be piped into your command through STDIN. Use grep to remove all those lines that contain the word 'that'. The search should NOT be sensitive to case.

Input Format

A text file will be piped into your command through STDIN.

Output Format

Only display those lines that do NOT contain the word 'that'. The relative ordering of the lines should be the same as it was in the input file.

Soln : grep -ivw 'that'

Q. For each line in a given input file, transform the first occurrence of the word 'the' with 'this'. The search and transformation should be strictly case sensitive.
Sol: sed -e 's/\bthe\b/this/'

Q. For each line in a given input file, transform all the occurrences of the word 'thy' with 'your'. The search should be case insensitive, i.e. 'thy', 'Thy', 'tHy' etc. should be transformed to 'your'.
Sol: sed -e 's/\bthy\b/your/g'i

Q. Sample Input

A 25 27 50
B 35 75
C 75 78 
D 99 88 76
Sample Output

Not all scores are available for B
Not all scores are available for C

Sol: awk '{ if ($2 =="" || $3 == "" || $4 == "") print "Not all scores are available for", $1}' 

Q. Sample Input

A 25 27 50
B 35 37 75
C 75 78 80
D 99 88 76
Sample Output

A : Fail
B : Fail
C : Pass
D : Pass
Explanation

Only student C and student D have scored   in all three subjects.

Sol: awk ' {if ($2 >= 50 && $3 >= 50 && $4 >= 50) 
      print $1, ": Pass"; 
      else print $1, ": Fail"
      }'
 Q. Output Format

Transform the names as described and display the entire array of country names with a space between each of them.

Sample Input

Namibia
Nauru
Nepal
Netherlands
NewZealand
Nicaragua
Niger
Nigeria
NorthKorea
Norway
Sample Output

.amibia .auru .epal .etherlands .ewZealand .icaragua .iger .igeria .orthKorea .orway

Sol: sed 's/^[A-Z]/./'|paste -s

Q. You are given a list of words with each word on a new line. Each word contains only lowercase letters (). Your task is to write a program to display only those words that are palindromes. Palindromes are strings that read the same when reversed.
Sample Input

test
toy
bob
bil
cow
noon
Sample Output

bob
noon  

Sol: 
while read word; do
drow=`echo $word | rev | tr -d "\r"`
if [ $(echo $word | tr -d "\r") == $drow ]; then
echo "$word"
fi
done

Q. Your task is to use for loops to display only odd natural numbers from  1to 99.
Sol: for i in {1..99..2}; do echo $i; done 

Q. Use a for loop to display the natural numbers from 1 to 50.
Sol: for i in {1..50}; do echo $i; done 

Q.Given two integers,  and , find their sum, difference, product, and quotient.
Sol: read x
read y

echo "`expr $x + $y`"
echo "`expr $x - $y`"
echo "`expr $x \* $y`"
echo "`expr $x / $y`" 

OR 

#!/bin/bash
read X
read Y
echo $((X+Y))
echo $((X-Y))
echo $((X*Y))
echo $((X/Y))

Q. Given two integers, X and Y, identify whether X<Y or X=Y or X>Y .
Soln: 

read X
read Y

if [ "$X" -eq "$Y" ]
then 
    echo "X is equal to Y"
fi
if [ "$X" -gt "$Y" ]
then
    echo "X is greater than Y"
fi
if [ "$X" -lt "$Y" ]
then 
    echo "X is less than Y"
fi

Q. Read in one character from STDIN.
If the character is 'Y' or 'y' display "YES".
If the character is 'N' or 'n' display "NO".
No other character will be provided as in

Sol:  
read option

case $option in
[yY] ) echo "YES"
;;
[nN] ) echo "NO"
;;
* ) echo " Put nNyY"
;;
esac

Q. Given three integers (x,y , and z) representing the three sides of a triangle, identify whether the triangle is scalene, isosceles, or equilateral.

If all three sides are equal, output EQUILATERAL.
Otherwise, if any two sides are equal, output ISOSCELES. 
Otherwise, output SCALENE.

Soln: 
read x
read y
read z

if [[ "$x" -eq "$y" ]] && [[ "$y" -eq "$z" ]]
then 
	echo "EQUILATERAL"
elif [[ "$x" -eq "$y" ]] || [[ "$y" -eq "$z" ]] || [[ "$z" -eq "$x" ]]
then 
 	echo "ISOSCELES"
else
 	echo "SCALENE"
fi       

Q. A mathematical expression containing +,-,*,^, / and parenthesis will be provided. Read in the expression, then evaluate it. Display the result rounded to  decimal places.
Sol: 
read line
echo "scale = 3; $line" | bc -l 

printf %.3f "`echo $line | bc -l`"

Q. Given n integers, compute their average, rounded to three decimal places.

Sol: 
read num
ctr=$num
sum=0
while [ $ctr -gt 0 ]
do
   read x
   sum=$((sum + x))
   ctr=$((ctr - 1))     
done
printf "%.3f\n" `echo "$sum/$num" | bc -l`
