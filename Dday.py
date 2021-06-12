from flask import Flask,render_template,request
from flask_sqlalchemy import SQLAlchemy
import json
import pymysql  #for connecting database along with SQLAlchemy
from datetime import datetime
with open('config.json', 'r') as c:
    params = json.load(c)["params"] #all the params are in jason file.
local_server = True
app = Flask(__name__)
if (local_server):

    app.config['SQLALCHEMY_DATABASE_URI'] = params['local_uri'] #for local server
else:
    app.config['SQLALCHEMY_DATABASE_URI'] = params['prod_uri'] #for production server when hosting

db = SQLAlchemy(app)

class Contacts(db.Model): #for contact database
    Sno = db.Column(db.Integer, primary_key=True)
    Name = db.Column(db.String(80), nullable=False)
    Phone_num = db.Column(db.String(12), nullable=False)
    Email = db.Column(db.String(20), nullable=False)
    mess = db.Column(db.String(120), nullable=False)
    date = db.Column(db.String(12), nullable=True)

class Thoughts(db.Model): #for thoughts database
    Sno = db.Column(db.Integer, primary_key=True)
    Title = db.Column(db.String(80), nullable=False)
    slug = db.Column(db.String(25), nullable=False)
    Story = db.Column(db.String(300), nullable=False)
    date = db.Column(db.String(12), nullable=True)
    img_file = db.Column(db.String(12), nullable=True)

@app.route("/") #home page of website
def home():
    posts = Thoughts.query.filter_by().all()[0:params['no_of_post']]
    return render_template('index.html', params=params, posts=posts)


@app.route("/post/<string:post_slug>", methods=['GET'])
def post_route(post_slug):
    post = Thoughts.query.filter_by(slug=post_slug).first()



    return render_template('post.html', params=params, post=post)



@app.route("/about")
def about():
    return render_template('about.html', params=params)
@app.route("/contact", methods = ['GET', 'POST']) #we use get post so that user can interact with website and
                                                  #users can send us message.
def contact():
    if (request.method == 'POST'):

        name = request.form.get('name')
        email = request.form.get('email')
        phone = request.form.get('phone')
        message = request.form.get('message')

        entry = Contacts(Name=name, Phone_num=phone, date=datetime.now(), mess = message, Email=email)
        db.session.add(entry)
        db.session.commit()


    return render_template('contact.html', params=params)

app.run(debug=True)
