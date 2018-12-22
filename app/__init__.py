#!/usr/bin/env python 

import sys 
import os 
from os import path 

from datetime import datetime

from flask import Flask, jsonify, url_for

# app 
app = Flask(__name__, instance_relative_config=True)

# load config 
app.config.from_object('config')
app.config.from_pyfile('application.cfg', silent=True)

# add default route 
@app.route('/', methods=['GET'])
def index():
    response = jsonify({
        'msg': 'Lavender',
        'systime': int(datetime.now().strftime('%s'))
    })

    response.status_code = 200
    return response