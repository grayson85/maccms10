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

# docker-compose
```sh
version: '3.3'
services:
    maccms10:
        volumes:
            - '/mnt/storage/docker/maccms_test:/data'
            # - '/mnt/storage/docker/maccms_test/template:/opt/maccms10/template' (optional - 方便更改模板)
        ports:
            - '7878:7878'
        image: gs0245/maccms10
        #network_mode: host (optional)
        restart: unless-stopped
```

# 管理后台 
`
http://127.0.0.1:7878/admin123.php 
`
# 后台登入
`
用户名 admin
密码  admin123
`

视频 - 播放器 - 导入对应影视资源站提供的播放器代码

采集 - 自定义接口 添加影视资源站的源

# 搭建完成后
前台
![image](https://user-images.githubusercontent.com/37401242/179199357-2e32c3e2-4b29-4878-81d5-8ea482bb35ff.png)

后台
![image](https://user-images.githubusercontent.com/37401242/179199608-add9f13f-738a-4112-a332-b4858d900d52.png)
