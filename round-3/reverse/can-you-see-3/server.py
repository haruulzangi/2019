# -*- coding: utf-8 -*-
#can-you-see-2 flag HZ19{Th1s-1$-H0w-I-R0ll-BB8}
import socket
import sys
from _thread import *
import os

HOST = '0.0.0.0'
PORT = 9999

s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
print('Socket created')

try:
	s.bind((HOST, PORT))
except socket.error as msg:
	print('Bind failed. Error Code : ' + str(msg[0]) + ' Message ' + msg[1])
	sys.exit()

print('Socket bind complete')
s.listen(100)
print('Socket now listening!')

def clientthread(conn, addr):
	conn.send('Your access CODE? \n'.encode('utf-8')) #send only takes string
	while True:
		data = conn.recv(1024)
		print ("{}:{}".format(addr, data))
		if len(data) != 10:
			conn.sendall("Invalid LENGTH".encode('utf-8'))
			conn.close()
		elif data.decode('utf-8')[0:3] != "bb8":
			conn.sendall("You'r not BB-8 !!!".encode('utf-8'))
			conn.close()
		else:
			try:
				data = data.decode('utf-8')
				print(data[5])
				if data[3] != "9":
					raise Exception('err', 'err')
				a = 90 / int(data[5])
				if a > 10:
					conn.sendall("Congratulations!!!".encode('utf-8'))
					conn.close()
			except ZeroDivisionError as zde:
				print ("Exception occured!!!")
				for line in open("/tmp/{}".format(str(data[0:3]))): conn.sendall(line.encode('utf-8'))
			except Exception as e:
				print ("MAIN EXCEPT", str(e))
				conn.sendall("Invalid CODE!!!".encode('utf-8'))
				conn.close()
while 1:
	conn, addr = s.accept()
	print('Connected with ' + addr[0] + ':' + str(addr[1]))
	start_new_thread(clientthread ,(conn, addr[0],))
s.close()
