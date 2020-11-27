Redis sentinel configuration and usage
===========

## Redis Sentinel Master-slave Info Overview
```aidl
Master: 6379
Slaves: 6380,6381
Sentinel: 26379,  26380, 26381
```

## How to start
Run `./restart.sh` to restart a redis sentinel master-slave cluster.
```aidl
chmod 777 ./restart.sh
./restart.sh
```

## Test
1. Enter the main sentinel
(1) redis-cli -p 26379 
(2) INFO
(3) Press "Ctrl" to exit

2. Asking on slave2 sentinel : who is the master
(1) redis-cli -p 26381
(2) sentinel get-master-addr-by-name redis-local-cluster
(3) Press "Ctrl" to exit

3. Stop current master
(1) redis-cli -p 6379 shutdown
(2) Do step2 again, you will see a new master
(3) Press "Ctrl" to exit



