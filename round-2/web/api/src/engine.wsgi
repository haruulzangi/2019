#! /usr/bin/python
import sys
import logging

logging.basicConfig(stream=sys.stderr)

from engine import app as application
