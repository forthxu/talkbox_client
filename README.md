talkbox
====

a talkbox build with skynet

### 实例
http://forthxu.com/skynet/
### 云风skynet服务端框架研究
http://forthxu.com/blog/skynet.html

    # clone
    git clone git@github.com:forthxu/talkbox_client.git talkbox_client

### 配置
为了方便放置了一份编译好的客户端在Client/bin，可直接配置 Client/bin/assets/config.xml 运行

源码编译配置默认配置的文件在Client/src/assets/config.xml

    <?xml version="1.0" encoding="utf-8"?>
    <config>
    <ip>forthxu.com</ip>
    <port>10101</port>
    <crossdomain>xmlsocket://forthxu.com:843</crossdomain>
    </config>

#### web访问的安全策略问题
注意：如果通过网页来访问需要提供安全策略，详：http://zuoqiang.iteye.com/blog/942067，我采用的nodejs，回头再改成skynet

    # 安装nodejs
    # centos
    yum install nodejs
    # ubuntu
    #apt-get install nodejs
    
    cd talkbox_client
    nohup node crossdomain.js &
    
### 协议相关
talkbox使用了protobuf压缩数据做通讯，as相关代码和协议放在google目录下
as使用protobuf的方法自己google

### 服务端
https://github.com/forthxu/talkbox


