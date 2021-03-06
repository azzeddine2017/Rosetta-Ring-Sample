# Project :Four bit adder
# Author : Gal Zsolt 
# Generated from RosettaCode by Azzeddine Remmal

  

###---------------------------
# Program: 4 Bit Adder - Ring
# Author:  Bert Mariani
# Date:    2018-02-28
# 
# Bit Adder: Input  A B Cin
#            Output S   Cout
#
# A ^ B => axb                XOR gate
#          axb ^ C => Sout    XOR gate
#          axb &amp; C => d       AND gate
#
# A &amp; B => anb                AND gate
#          anb | d => Cout     OR gate
# 
# Call Adder for number of bit in input fields
###-------------------------------------------
### 4 Bits

Cout     = "0" 
OutputS  = "0000"
InputA   = "0101"
InputB   = "1101"
 
   See "InputA:.. "+ InputA +nl
   See "InputB:.. "+ InputB +nl
BitsAdd(InputA, InputB)
   See "Sum...: "+ Cout +" "+ OutputS +nl+nl

###-------------------------------------------
### 32 Bits

Cout     = "0" 
OutputS  = "00000000000000000000000000000000"
InputA   = "01010101010101010101010101010101"
InputB   = "11011101110111011101110111011101"
 
   See "InputA:.. "+ InputA +nl
   See "InputB:.. "+ InputB +nl
BitsAdd(InputA, InputB)
   See "Sum...: "+ Cout +" "+ OutputS +nl+nl

###-------------------------------

Func BitsAdd(InputA, InputB)
	nbrBits = len(InputA)
	 
	for i = nbrBits to 1 step -1
	      A = InputA[i]
	      B = InputB[i]
	      C = Cout
  
              S = Adder(A,B,C)
	      OutputS[i] = "" + S
	next
return
  
###------------------------
Func Adder(A,B,C)
 
    axb  =   A ^ B
    Sout = axb ^ C
    d    = axb &amp; C
 
    anb  =   A &amp; B
    Cout = anb | d    ### Cout is global
 
return(Sout)
###------------------------

 
