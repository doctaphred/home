"""
This file is meant to be executed on REPL startup.

See https://docs.python.org/3/using/cmdline.html#envvar-PYTHONSTARTUP
"""
from collections import *
from functools import *
from itertools import *

import json
import os
import random
import re
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
    import yaml
except ImportError:
    pass


try:
    __IPYTHON__
except NameError:
    pass
else:
    # IPython info
    # e.g.: IPython 3.5.2 (default, Jun 29 2016, 13:43:58)
    #       [GCC 4.2.1 Compatible Apple LLVM 7.3.0 (clang-703.0.31)]
    print('\nIPython ' + sys.version)

# Path to executable
# e.g.: /usr/local/opt/python3/bin/python3.5
print(sys.executable)
