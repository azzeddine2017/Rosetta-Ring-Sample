# Project :Phrase reversals
# Author : Gal Zsolt 
# Generated from RosettaCode by Azzeddine Remmal

  
aString = "Welcome to the Ring Language"
bString = ""
see reverseString(aString)

func reverseString cString
     for i= len(cString) to 1 step -1
         bString = bString + cString[i]
     next
     return bString
 
