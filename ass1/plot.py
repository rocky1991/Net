import matplotlib.pyplot as plt
import numpy as np
import csv 
x = []
y = []
z = [] 
with open('Q3_results.csv','r') as file:
	reader = csv.reader(file,delimiter=',')
	for row in reader:
		x.append(int(row[0]))
		y.append(float(row[1]))
		z.append(float(row[2]))
		# newMat.append(','.join(row))




plt.plot(x,y,'r--',label='sender')
plt.plot(x,z,'bs',label='receiver')
plt.xlabel('Bandwidth Setting(Mbits/sec)')
plt.ylabel('Measured Bandwidth(Mbits/sec)')
plt.legend(bbox_to_anchor=(0, 1), loc=2, borderaxespad=0.)

plt.show()
# newMat = []
# for item in mat:
# 	newMat.append(item)
# newMat = np.asmatrix(newMat)
# print(newMat)