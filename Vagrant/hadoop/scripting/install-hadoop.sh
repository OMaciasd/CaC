#!/bin/bash
apt-get update
apt-get install -y ssh pdsh openjdk-11-jdk

# Descargar Hadoop (cambia la versión y el enlace según tus necesidades)
wget https://downloads.apache.org/hadoop/common/hadoop-3.3.6/hadoop-3.3.6.tar.gz
tar -xvzf hadoop-3.3.6.tar.gz
mv hadoop-3.3.6 /usr/local/hadoop

# Aquí puedes continuar con la configuración de Hadoop...
echo export HADOOP_HOME=/usr/local/hadoop >> /home/vagrant/.bashrc
echo export PATH=$PATH:$HADOOP_HOME/bin >> /home/vagrant/.bashrc

cat > $HADOOP_HOME/etc/hadoop/core-site.xml <<EOL
<?xml version="1.0"?>
<configuration>
   <property>
      <name>fs.defaultFS</name>
      <value>hdfs://localhost:9000</value>
   </property>
</configuration>
EOL

$HADOOP_HOME/bin/hdfs namenode -format
$HADOOP_HOME/sbin/start-dfs.sh

$HADOOP_HOME/sbin/start-yarn.sh
