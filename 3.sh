sh /sbin/clnc/status.sh > /sbin/clnc/1.txt
cat /sbin/clnc/1.txt | awk 'NR==27' | awk '{print substr($0,11)}' >  /sbin/clnc/2.txt
str1=$( cat /sbin/clnc/2.txt)
echo $str1
if [ "$str1" = "正在运行" ] ; then
	date >> /sbin/clnc/zc.log
	echo "正常运行"
	echo "正常" >> /sbin/clnc/zc.log
else
	date >> /sbin/clnc/yc.log
	echo "正在重启"
	echo "正常执行启动命令" >> /sbin/clnc/yc.log
	sh /sbin/clnc/start.sh >> /sbin/clnc/yc.log
	sh /sbin/clnc/status.sh > /sbin/clnc/1.txt
	echo "1.txt 内容"
	cat 1.txt
fi

