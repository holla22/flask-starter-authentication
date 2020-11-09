#!/bin/sh

# this starts wsgi.py file for the project
gunicorn -w 4 --threads 4 --bind 0.0.0.0:8003 wsgi