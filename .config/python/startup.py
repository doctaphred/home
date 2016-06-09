#!/usr/bin/env python
"""
This file is meant to be executed on REPL startup,
or directly executed in order to run a single Python command.

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
    pass


# sys.argv[0] is the empty string if exec'd, as during REPL startup.
# If this file is instead executed directly, eval its args as Python
if sys.argv[0]:
    command = ' '.join(sys.argv[1:])
    if not command or '-h' in sys.argv or '--help' in sys.argv:
        print('Evaluate and print some Python')
    else:
        result = eval(command)
        try:
            pp(result)
        except NameError:
            pprint(result)
