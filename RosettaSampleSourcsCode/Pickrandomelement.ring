# Project :Pick random element
# Author : Gal Zsolt 
# Generated from RosettaCode by Azzeddine Remmal

 aList  = "abcdefghij"
for i = 1 to 10
    letter = random(9) + 1
    if letter > 0
       see aList[letter] + nl
    ok       
next 
