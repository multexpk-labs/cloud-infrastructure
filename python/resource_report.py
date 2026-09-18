#!/usr/bin/env python3

import json
import os
import platform
import shutil
import socket

root_total, root_used, root_free = shutil.disk_usage('/')

report = {
    'hostname': socket.gethostname(),
    'platform': platform.platform(),
    'kernel': platform.release(),
    'cpu_count': os.cpu_count(),
    'root_disk_gb': {
        'total': round(root_total / 1024**3, 2),
        'used': round(root_used / 1024**3, 2),
        'free': round(root_free / 1024**3, 2),
    },
}

print(json.dumps(report, indent=2))
