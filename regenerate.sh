
echo 'Re-creating Certificates for network...' 

CURRENT_DIR=$PWD
cd crypto-config/peerOrganizations/org1.example.com/ca/
PRIV_KEY=$(ls *_sk)
cd $CURRENT_DIR
sed -i "s/${PRIV_KEY}/CA_PRIVATE_KEY/g" docker-compose.yml

./generate.sh

echo 'Manually Add second machine IP Address in docker-compose.yml'
