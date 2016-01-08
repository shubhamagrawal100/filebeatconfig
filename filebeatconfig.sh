echo "Starting file beat installation" 
sudo curl https://packages.elasticsearch.org/GPG-KEY-elasticsearch | sudo apt-key add -
echo "deb https://packages.elastic.co/beats/apt stable main" |  sudo tee -a /etc/apt/sources.list.d/beats.list
sudo apt-get update && sudo apt-get install filebeat
echo "Installation complete, Adding config files."
sudo wget -O /etc/filebeat/filebeat.yml "https://raw.githubusercontent.com/shubhamagrawal100/filebeatconfig/master/filebeat.yml"
echo "Files added. Will now start filebeat. If you want to stop use \"sudo service filebeat stop\" "
sudo update-rc.d filebeat defaults
sudo service filebeat start 
echo "File beat started, please check /var/log/mybeat for logs to see if everything is working"
