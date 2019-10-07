import hmac
import threading
import socket

FLAG = b"*************"
password = b'SHA1 was the most common HMAC method in the old good days. Unfortunately now it is retired'


class serverThread(threading.Thread):
    def __init__(self, sock):
        threading.Thread.__init__(self)
        self.getflag(sock)

    def getflag(self, sock):
        sock.send((b"The password is: '" + password + b"'\n"))
        sock.send(b"Try to read flag.\n")
        sock.send(b"Send your password.\n")
        key = sock.recv(1024).strip()
        assert key != password
        if hmac.new(key, b"secret", "sha1").digest() == hmac.new(password, b"secret", "sha1").digest():
            sock.send(FLAG)
        else:
            sock.send(b"Fail\n")
        sock.close()


if __name__ == "__main__":
    s = socket.socket()
    s.bind(("0.0.0.0", 9000))
    s.listen(5)
    while True:
        c = s.accept()
        serverThread(c).start()
