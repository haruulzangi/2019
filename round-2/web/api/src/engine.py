import json
from flask import Flask, request, render_template_string
from os import environ

class Flag():
	def __init__(self):
		self.flag = "hz19{Y0U_JU$T_B4MB00Z3D}"
	def get_flag(self):
		return self.flag

app = Flask(__name__)

@app.route('/')
def help():
	if request.method == "GET":
		data = '{"action" : "help", "url" : "/api/<action>"}'
	else:
		data = '{"error" : "Not supported method"}'
	return json.loads(data)

@app.route('/api/<action>', methods = ["GET", "POST"])
def do(action):
	if action == 'help':
		data = '{"GET" : {"action" : "getMSG"}, "POST": {"action" : "setMsg"} }'
		return json.loads(data)
	elif action == 'getMsg':
		data = '{"MESSAGE" : "Temp message"}'
		return json.loads(data)
	elif action == 'setMsg':
		if request.method == "POST" : 
			req_arg = request.get_json(force = True)
			flag = Flag()
			if req_arg:
				if 'msg' in req_arg:
					data = ''' <p>The message is <br/> %s </p> ''' % req_arg['msg']
					return render_template_string(data, obj = 'test')
				else:
					data = '{"error" : "variable msg is missing"}'
			else:
				data = '{"error" : "No parameter given"}'
		else:
			data = '{"error" : "Method not supported"}'
		return json.loads(data)
	else:
		data = '{"error" : "Invalid action"}'
		return json.loads(data)

if "__main__" in __name__:
	app.config['SECRET_KEY'] = "ITS A SECRET KEY NOT FLAG!"
	app.config['tmpObj'] = Flag()
	app.run(host = '0.0.0.0', port = 80, debug = True)
