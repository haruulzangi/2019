import hmac
import threading
from _thread import *
import socket

FLAG = b"hz19{SHA1_h4s_n0t_g00d_loop$}"
password = b'SHA1 was the most common HMAC method in the old good days. Unfortunately now it is retired'


class serverThread(threading.Thread):
    def __init__(self, sock, ip):
        # threading.Thread.__init__(self)
        self.ip = ip
        self.sock = sock
        print("address %s connected" % str(self.ip))
        self.getflag(sock)

    def getflag(self, sock):
        try:
            sock.send((b"The password is: '" + password + b"'\n"))
            sock.send(b"Try to read flag.\n")
            sock.send(b"Send your password.\n")
            # sock.setTimeout
            key = sock.recv(1024).strip()

            print(key)
            assert key != password
            if hmac.new(key, b"secret", "sha1").digest() == hmac.new(password, b"secret", "sha1").digest():
                sock.send(FLAG)
            else:
                sock.send(b"Fail\n")
        except (Exception, ex):
            print (ex)
            print("something error")
        finally:
            sock.close()
            return


if __name__ == "__main__":
    s = socket.socket()
    s.bind(("0.0.0.0", 9000))
    s.listen(256)
    print ('Server has started')
    while True:
        c, addr = s.accept()
        start_new_thread(serverThread, (c, addr[0]))
        # serverThread(addr, c).start()
