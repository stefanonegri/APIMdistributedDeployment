ssh root@<apim-vm_ip>
mkdir /usr/local/wso2
apt update
apt-get install zip unzip
apt install openjdk-8-jre-headless
exit
scp /Users/stefanonegri/Downloads/wso2am-3.2.0.zip root@168.119.234.86:/usr/local/wso2
ssh root@<apim-vm_ip>
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
cd /usr/local/wso2
unzip wso2am-3.2.0.zip
export WSO2_HOME=/usr/local/wso2/wso2am-3.2.0/
cd $WSO2_HOME/bin
./wso2update_linux
./wso2update_linux


