ssh root@$APIM_IP
mkdir /usr/local/wso2
apt update
apt-get install zip unzip
apt install openjdk-8-jre-headless
exit
scp /Users/stefanonegri/DistributedAPIM/resources/mysql-connector-java-8.0.11.jar root@$APIM_IP:/usr/local/wso2
ssh root@$APIM_IP
cd /usr/local/wso2
wget --no-check-certificate -r 'https://docs.google.com/uc?export=download&id=1eGNb0SybLTbIuSxHZF_N4tEPwk1zPeAZ' -O wso2am-3.2.0.zip
unzip wso2am-3.2.0.zip
export WSO2_HOME=/usr/local/wso2/wso2am-3.2.0/
cd $WSO2_HOME/bin
./wso2update_linux
./wso2update_linux
mv /usr/local/wso2/mysql-connector-java-8.0.11.jar ../lib






