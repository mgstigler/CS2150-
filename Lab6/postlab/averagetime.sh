#!/bin/bash
#Maddie Stigler
#mgs4ff
#10/21/14
#averagetime.sh

#read in the dictionary and the grid
echo "Please enter the name of your dictionary file: "
read dictionary
echo "Please enter the name of your grid file: "
read grid

#store the times of all of the runs
run1=`./a.out $dictionary $grid | tail -1`
run2=`./a.out $dictionary $grid | tail -1`
run3=`./a.out $dictionary $grid | tail -1`
run4=`./a.out $dictionary $grid | tail -1`
run5=`./a.out $dictionary $grid | tail -1`

#store the total time for the 5 runs
runCombo1=`expr $run1 + $run2`
runCombo2=`expr $run3 + $run4`
runCombo3=`expr $runCombo1 + $runCombo2`
total=`expr $runCombo3 + $run5`

#get and print the average
average=`expr $total / 5`
echo "The average time in milliseconds is: " 
echo $average
