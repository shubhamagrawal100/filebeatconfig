sudo wget -O /etc/filebeat/filebeat.yml "https://raw.githubusercontent.com/shubhamagrawal100/filebeatconfig/master/filebeat.yml"
echo "Files added. Will now start filebeat. If you want to stop use \"sudo service filebeat stop\" "
sudo service filebeat restarted 
echo "File beat restarted, please check /var/log/mybeat for logs to see if everything is working"

