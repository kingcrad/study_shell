#!/bin/bash
y=1
until (( $y >5 ))
do
x=1
	while (( $x <= $y ))
	do
		echo -n $[6-$x]
		let x++
	done    
echo 
let y++
done

