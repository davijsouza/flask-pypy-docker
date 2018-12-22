#!/usr/bin/env python 

import os 
import sys 
from os import path 
from datetime import datetime, timedelta

BASE_URL = 'http://localhost:8001/'
APP_URL = 'http://localhost:8001'

APP_HTTP_HOST = ''

APP_NAME = 'LavenderProject'

BASEDIR = os.path.abspath(os.path.dirname(__file__))

# App Debug Mode
DEBUG = True 

# Secret Key for App
SECRET_KEY = 'changethiswithveryrandomstringcharacters'