curl https://packages.elasticsearch.org/GPG-KEY-elasticsearch | sudo apt-key add -
echo "deb https://packages.elastic.co/beats/apt stable main" |  sudo tee -a /etc/apt/sources.list.d/beats.list
sudo apt-get update && sudo apt-get install filebeat
sudo update-rc.d filebeat defaults 95 10
sudo wget -O /etc/filebeat/filebeat.yml "https://raw.githubusercontent.com/shubhamagrawal100/filebeatconfig/master/filebeat.template.json"
sudo wget -O /etc/filebeat/filebeat.yml "https://raw.githubusercontent.com/shubhamagrawal100/filebeatconfig/master/filebeat.yml"
sudo /etc/init.d/filebeat start
