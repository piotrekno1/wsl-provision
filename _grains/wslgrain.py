#!/usr/bin/env python

import os
import udpa


def is_wsl_host():
    """
    Detects whether the function is run under MS WSL.
    http://stackoverflow.com/questions/38859145/detect-ubuntu-on-windows-vs-native-ubuntu-from-bash-script
    """
    with open('/proc/sys/kernel/osrelease') as os_release:
        info = os_release.read()

    is_wsl = 'Microsoft' in info
    return {'wsl': is_wsl}


if __name__ == "__main__":
    print is_wsl_host()
