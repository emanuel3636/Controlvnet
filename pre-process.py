#Arquivo Original: time, id, x, y, speed
#2 horas: 7200 segundos
#8 horas: 28800 segundos

from math import sqrt

dadosIn = open("A6-d10-h11.log",'r')

dic = {}

time = 1
timeFinish = 1800
nextTime = 90

dadosOut = open("A6200.txt",'w')

t = 1
while True:

	eof = dadosIn.readline()
	valor = eof.rstrip().split()

	if(not eof or int(valor[0]) > int(time) ):
		#print(time)
	
		for i in dic:
			for j in dic:
				if(i != j):
					dist = sqrt( (dic[i][0]-dic[j][0])**2 + (dic[i][1]-dic[j][1])**2 )
					if(dist <= 200):
						dadosOut.write(i +" "+ j + " " + str(t) + " " +str(t)+ "\n")

		if(not eof or int(valor[0]) >  int(timeFinish)):
			print "[=>] Leitura terminada"
			break

		dic = {}
		time = time + nextTime
		t += 1

	if (int(valor[0]) == int(time)) :
		vall = valor[1]
		dic[vall] = (float(valor[2]),float(valor[3]))


dadosIn.close()
dadosOut.close()
