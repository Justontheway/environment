## redis设置
* 安装 - ```docker pull redis:6.0.20-alpine```
* 运行 - ```docker run --name redis -p 6379:6379 -d redis:6.0.20-alpine```
* 带持久化运行 - ```docker run --name redis -p 6379:6379 -d redis:6.0.20-alpine redis-server --save 60 1 --loglevel warning```
  * 每60s内至少有1次写就进行snapshot生成
* 运行客户端连接 - ```docker run -it --rm redis:6.0.20-alpine redis-cli -h <redis-host-ip>```

## NOTE
* 配置文件为```/usr/local/etc/redis/redis.conf```
* 快照数据在```/data```目录下

## 参考
* https://hub.docker.com/_/redis

