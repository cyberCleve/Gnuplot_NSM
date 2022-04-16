#!/bin/bash

tcpreplay -v -i lo -x 1000 UFTP_v3_transfer.pcapng | cut -d ' ' -f 1 | grep -E [0-9]{2}:[0-9]{2}:[0-9]{2} | xargs -I_ date +%s -d_ | uniq -c | awk '{print $2,$1}'
