# 本科教书秘书辅助系统

本项目为北京科技大学计算机系软件工程课程设计项目，是一个B/S架构的软件系统，用来辅助本科教学秘书系统。
主要技术为JSP+Servlet，连接在MySQL数据库，配置在Tomcat服务器，运用了DAO设计模式。

## Features

1. 排课。任课教师认领教学计划中相应学期的课程，并根据任课⽼老老师的要求，（半⾃动）编排课表：每个⽼老老师都可能提出⾃自⼰己的需求，⽐比如“家远尽量量不不要排第⼀一节”、 “尽量量排在逸夫楼的教室”等，需要尽可能满⾜足⽼老老师们的需求安排课表和教室。

2. 教改/教研/教材等项⽬目管理理：信息发布、评选结果、中期检查、结题验收动态追 踪，每个项⽬目的经费使⽤用记录和统计，以及项⽬目成果信息的登记与管理理

3. SRTP项⽬目管理理：包括⾯面向⽼老老师的项⽬目征集、⾯面向学⽣生的项⽬目发布、项⽬目过程管理理。 SRTP项⽬目、团队、经费、成果等各种数据统计。

4. 本科毕业设计管理理。对本科⽣生毕业设计环节产⽣生的各种⽂文档进⾏行行管理理，包括毕业设 计任务书、选题报告、中期考核表、导师评阅表、评审⼈人意⻅见表、毕业论⽂文电⼦子版 以及相关附件。需通过调研学校的规定了了解相关表格、⽂文档和流程。


## Getting Start

1. 在MySQL中运行srtp.sql脚本，建立数据库表。

2. 将工程导入Eclipse / Intellij Idea。

3. 在Eclipse中Configure Build Path，将JRE Library移除（Remove），然后添加自己的自己的JRE Library（否则将会报错）

4. 将src/Database/Conn.java中连接数据库的用户名和密码修改为自己的密码。

5. Eclipse配置Tomcat，过程略，自行Google。

6. Run On Server

## TODO List

1. 排课算法的改进

2. 代码文件存储的规范化

3. 尽量的代码复用

4. 数据库表的重构

欢迎issues and pull&request