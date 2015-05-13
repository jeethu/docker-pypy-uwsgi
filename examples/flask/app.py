from flask import Flask

application = Flask(__name__)

@application.route('/')
def index():
    return "<span style='color:red'>I am app 1</span>"
