# maccms10
基于MACCMSv10版本 采用MariaDB数据库 支持docker一键部署 仅供学习用途 请勿公网搭建

Based on Maccmsv10 + MariaDB database

~ Only for learning purpose ~


# dockerhub
https://hub.docker.com/repository/docker/gs0245/maccms10

# How to start docker
```sh
run -v /opt/maccms10:/data -p 7878:7878 gs0245/maccms10
```

管理后台 http://127.0.0.1:7878/admin123.php 

用户名 admin

密码  admin123

视频 - 播放器 - 导入对应影视资源站提供的播放器代码

采集 - 自定义接口 添加影视资源站的源
