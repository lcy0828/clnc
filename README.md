# clnc

clnc的自动检测重启功能

使用教程

root@Ruijie:/sbin/clnc# ls

1.txt            clnc_bd.conf     clnc_bdgz.conf   ls               zc.log

2.txt            clnc_bd1.conf    clnc_uc.conf     start.sh

3.sh             clnc_bdbj.conf   clnc_wk.conf     status.sh

Core             clnc_bdcns.conf  config.ini       stop.sh

root@Ruijie:/sbin/clnc# pwd

/sbin/clnc

首先将文件移动至/sbin/clnc目录

确保 这些文件在/sbin/clnc目录

输入crontab -e 

添加 

*/1 * * * * bash /sbin/clnc/3.sh &   


*/30 * * * * rm -rf /sbin/clnc/*.log &

注意.log 前有个 * 号

*/1 * * * * 为每分钟检测一次

*/30 * * * * 这行为每30赋值删除一次日志 可以不添加

需要自启clnc百度直连

请在路由器启动项里面添加

sh /sbin/clnc/start.sh 


百度直连ip

中国 江苏 南京 联通112.80.255.21

中国 广东 广州 电信14.215.177.73

中国 广东 广州 联通163.177.151.162

中国 北京 北京 联通123.125.142.40

中国 江苏 南京 电信180.97.104.45

中国 北京 北京 电信220.181.43.12

北京:

clnc_bdbj.conf

南京:

clnc_bd.conf

clnc_bdcns.conf

clnc_bd1.conf

广州

clnc_bdgz.conf


