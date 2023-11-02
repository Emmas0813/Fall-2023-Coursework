'''from flask import Flask

app = Flask(__name__)

@app.route('/assignment5')
def assignment5():
    #return 'This is for assignment 5 in CS 3203'

@app.route('/about')
def about():
    return 'Emma Smith, 11/2/2023'

if __name__ == '__main__':
    app.run(host='0.0.0.0, port = 8080')'''

from flask import Flask
app = Flask(__name__)
@app.route('/')
def hello_world():
    return 'Hello, Docker!'