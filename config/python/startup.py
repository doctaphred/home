"""
This file is meant to be executed on REPL startup.

See https://docs.python.org/3/using/cmdline.html#envvar-PYTHONSTARTUP
"""
from collections import *
from contextlib import *
from functools import *
from itertools import *
from traceback import *

import collections
import contextlib
import functools
import itertools
import json
import os
import random
import re
import sys
import time
import traceback
import traceback as tb
from datetime import datetime, timedelta
from pprint import pprint

try:
    from pathlib import Path
except ImportError:
    pass

try:
    import numpy as np
except ImportError:
    pass

try:
    import pp
except ImportError:
    pp = pprint

try:
    import yaml
except ImportError:
    pass


# Path to executable
# e.g.: /usr/local/opt/python3/bin/python3.5
print(sys.executable)
