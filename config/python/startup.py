"""
This file is meant to be executed on REPL startup.

See https://docs.python.org/3/using/cmdline.html#envvar-PYTHONSTARTUP
"""
from collections import *
from functools import *
from itertools import *

import os
import random
import sys
import time
from datetime import datetime
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
    __IPYTHON__
except NameError:
    pass
else:
    print('\nIPython ' + sys.version)

print(sys.executable)
