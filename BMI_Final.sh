#!/bin/sh
x=18.50
y=24.90
z=29.90

echo "please enter your weight in Kg: "
read weight
echo "please enter your your height in Meter: "
read height

total_weight=$weight
total_height=$(echo "scale=4;$height*$height" | bc)
BMI=$(echo "scale=2;$total_weight/$total_height" | bc)

echo "--------------------------------"
echo "your weight is $weight Kg"
echo "your height is $height Meter"
echo "your BMI is: $BMI"


if test [ $BMI -le $x ]
then
        echo "your BMI is $BMI. You are underweight"
elif test [ $BMI -le $y ]
then
        echo "your BMI is $BMI. You are normal"
elif test [ $BMI -le $z ]
then
        echo "Your BMI is $BMI. YOu are overweight "
else
        echo "You BMI is $BMI. You are Obese"
fi
