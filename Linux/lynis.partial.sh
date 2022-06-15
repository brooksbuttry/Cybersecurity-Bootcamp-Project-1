#!/bin/bash

30 6 * * * sudo lynis audit --test-group malware >> /tmp/lynis.partial_scan.log

40 6 * * * sudo lynis audit --test-group authentication >> /tmp/lynis.partial_scan.log

50 6 * * * sudo lynis audit --test-group networking >> /tmp/lynis.partial_scan.log

10 7 * * * sudo lynis audit --test-group storage >> /tmp/lynis.partial_scan.log

30 7 * * * sudo lynis audit --test-group filesystems >> /tmp/lynis.partial_scan.log

