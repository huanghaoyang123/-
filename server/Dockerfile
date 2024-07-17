# 使用基于Java的Docker镜像作为基础
FROM openjdk:17-jdk

# 设置工作目录
WORKDIR /app

# 将Spring Boot可执行Jar文件复制到容器中
COPY target/your-spring-boot-app.jar /app/your-spring-boot-app.jar

# 暴露应用程序的端口
EXPOSE 8088

# 定义启动命令
ENTRYPOINT ["java", "-jar", "/app/server.jar"]
