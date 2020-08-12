# recovery-data

用于定时恢复gin-vue-admin数据库的数据

### 构建镜像：
docker build -t zhubingjian/recovery-data:1.1 .

### 运行镜像
docker run -d --restart=always --name recovery-data zhubingjian/recovery-data:1.1