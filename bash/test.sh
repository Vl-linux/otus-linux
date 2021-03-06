#!/bin/bash
arr=(a b c d e f) #массив
for i in "${arr[@]}";do #перебираем массив в заданном выражении
echo "$i" #выводим значение i
done
echo "###"
echo ${arr[0]} 

arr=($(ls)); 
echo ${arr[5]} 


for ((i=0;i<${#arr[@]};i++));do #задали индекс, индекс меньше значения в arr, на каждую операцию добавляем индекс
echo "$i: ${arr[$i]}"
done

#бесконечный цикл (проверяется условие - выполняется цикл) while
i=0
while (( $i < ${#arr[@]} ));do #пока i меньше количества элементов в масиве, делать следующую операцию
echo "${arr[$i]}" #вывести элемент
((i++)) #приростить i (i растет постоянно, как только сравняется - цикл кончается)
done

# цикл until
i=5
until [[ i -eq 10 ]]; do #Checks if i=10 (пока не случится заданное условие, выполняють следуюшее)
echo "i=$i" #Print the value of i
i=$((i+1)) #Increment i by 1
done
