#!/bin/bash
clear

#for ((i=1; i<=20; i++)); do 
#	./netctrl "Time$i.txt" -M  statistics -m switchboard >> Parcial1.txt
#done 

for ((i=1; i<=13; i++)); do 
	./netctrl "Time$i.txt" -M  statistics -m liu >> Parcial2.txt
done


cat -n Parcial2.txt | sed -n '2~2p' >> Resultado_Liu33

cat -n Parcial2.txt | sed -n '1~2p' >> Resultado_Liu1333

