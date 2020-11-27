mkdir -pv /Users/hjdeng/redis-dir
redis-cli -p 6379 shutdown
redis-cli -p 6380 shutdown
redis-cli -p 6381 shutdown
redis-cli -p 26379 shutdown
redis-cli -p 26380 shutdown
redis-cli -p 26381 shutdown
redis-server master/master-redis.conf --daemonize yes
redis-server master/sentinel.conf --sentinel --daemonize yes
redis-server slave1/s1-redis.conf --daemonize yes
redis-server slave1/s1-sentinel.conf --sentinel --daemonize yes
redis-server slave2/s2-redis.conf --daemonize yes
redis-server slave2/s2-sentinel.conf --sentinel --daemonize yes
