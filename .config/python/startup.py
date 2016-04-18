"""
This file is meant to be executed on REPL startup.

See https://docs.python.org/3/using/cmdline.html#envvar-PYTHONSTARTUP
"""
from collections import *
from functools import *
from itertools import *

import random
import time
from datetime import datetime

try:
    import numpy as np
except ImportError:
    pass

try:
    import pp
except ImportError:
    pass
