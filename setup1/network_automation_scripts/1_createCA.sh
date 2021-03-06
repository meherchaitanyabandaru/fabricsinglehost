echo "================================================================================================="

echo "change directory to orderer ca folder"
cd ../ordererorg/create-certificate-with-ca

echo "turn on ca for ordererorg"
docker-compose up -d
sleep 10

echo "removing old crypto config for ordereorg"
sudo rm -rf ../crypto-config

sudo chmod 777 -R ../.
echo "create crypto material for ordererorg"
./create-certificate-with-ca.sh
sleep 5
sudo chmod 777 -R ../.

echo "turn off ca for ordererorg"
#docker-compose down

echo "================================================================================================="

echo "change directory to Org-1 ca folder"
cd ../../org1/create-certificate-with-ca

echo "turn on ca for org1"
docker-compose up -d
sleep 10

echo "removing old crypto config for ordereorg"
sudo rm -rf ../crypto-config

sudo chmod 777 -R ../.
echo "create crypto material for org1"
./create-certificate-with-ca.sh
sleep 5
sudo chmod 777 -R ../.

echo "turn off ca for org1"
#docker-compose down

echo "================================================================================================="


echo "change directory to Org-1 ca folder"
cd ../../org2/create-certificate-with-ca

echo "turn on ca for org2"
docker-compose up -d
sleep 10

echo "removing old crypto config for ordereorg"
sudo rm -rf ../crypto-config

echo "change directory to org2 ca folder"
cd ../../org2/create-certificate-with-ca

echo "turn on ca for org2"
docker-compose up -d


sudo chmod 777 -R ../.
echo "create crypto material for org2"
./create-certificate-with-ca.sh
sleep 5
sudo chmod 777 -R ../.

echo "turn off ca for org2"
#docker-compose down

echo "================================================================================================="
docker-compose up -d
echo "change directory to org3 ca folder"
cd ../../org3/create-certificate-with-ca

echo "removing old crypto config for ordereorg"
sudo rm -rf ../crypto-config

echo "turn on ca for org3"
docker-compose up -d

sudo  chmod 777 -R ../.
echo "create crypto material for org3"
./create-certificate-with-ca.sh
sleep 5
sudo chmod 777 -R ../.

echo "turn off ca for org3"
#docker-compose down 

echo "================================================================================================="
