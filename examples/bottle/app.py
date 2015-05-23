from bottle import Bottle

application = Bottle()

@application.route('/')
def index():
    return "Hello World!"
