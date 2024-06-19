from flask import Flask,request
import socket 
from db import DB

app = Flask(__name__)
mysqldb = DB()

# Landing page
@app.route("/")
def hello():
    return f"Hello from codehub \n"

# /users path 
@app.route("/users")
def get_users():
    return mysqldb.get_users() 

# /user getting id from request
@app.route("/user")
def get_user():
    id = request.args.get('id') # reading /user?id=<value>
    print("ID is", id)
    return mysqldb.get_user_by_id(id)

if __name__ == "__main__":
    app.run()