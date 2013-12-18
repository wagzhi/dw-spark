#!/bin/bash 
sd=$(date -r $(expr $(date "+%s") - 86400) "+%d")
sm=$(date -r $(expr $(date "+%s") - 86400) "+%m")
sy=$(date -r $(expr $(date "+%s") - 86400) "+%Y")
fn="/mnt/weblogs2/HZCTC-count-11-106/$sy/$sm/dm2011_hangzhou-access_log.$sy.$sm.$sd.*.*.log.gz"
fnw="/mnt/weblogs2/HZCTC-count-11-106/$sy/$sm/dm2011_hangzhou_wap-access_log.$sy.$sm.$sd.*.*.log.gz"
scp root@172.16.15.4:$fn /Users/paul/dw/106/$sy/$sm/
scp root@172.16.15.4:$fnw /Users/paul/dw/106/$sy/$sm/
fn1="/mnt/weblogs2/HZCTC-count-11-116/$sy/$sm/dm2011_hangzhou-access_log.$sy.$sm.$sd.*.*.log.gz"
fnw1="/mnt/weblogs2/HZCTC-count-11-116/$sy/$sm/dm2011_hangzhou_wap-access_log.$sy.$sm.$sd.*.*.log.gz"
scp root@172.16.15.4:$fn1 /Users/paul/dw/116/$sy/$sm/
scp root@172.16.15.4:$fnw1 /Users/paul/dw/116/$sy/$sm/
