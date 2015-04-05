import fileinput
import locale 
import os
import time
from datetime import date




def liquidationAccount(x):
	d={}
	for num in x:
		if num in d:
			d[num]+=1
		else:
			d[num]=1
	return d

if __name__ == "__main__":
	fir = open('out.txt','w')
	for line in fileinput.input(files=('menu.txt')):
		print( line.partition('$')[0] + 
			str(object=(
				0.75*locale.atoi(line.partition('$')[2].strip() 
					))) + ' euros',file=fir)

	temp = [3,5,4,3,3,4,7,5,5,3]
	print(liquidationAccount(temp),file=fir)
	

	fileNames = [name for name in os.listdir() if os.path.isfile(name)]
	for file in fileNames:
		print(file)
		file= file.replace(' ','')
		print(file)
		print(file.partition('.'))
		os.rename(file,
			file.partition('.')[0]
			+date.today().isoformat().replace('-','')
			+file.partition('.')[1]
			+file.partition('.')[2])

