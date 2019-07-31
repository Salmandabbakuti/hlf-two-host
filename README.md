**This Repository utilizes ```fabric-samples/basic-network```**

### Steps
 
 1. export fabric-samples ```bin``` directory to path
 
 ```
 export PATH= $PWD/bin:$PATH    #execute it in fabric-samples directory
 ```
 2. Run ```$ ./generate.sh``` to generate crypto-matirials and genesis block
 
 
 3. Modifying ca Container keyfile and peer2 IP address in ```docker-compose.yml```
   
 ```
    - FABRIC_CA_SERVER_CA_KEYFILE=/etc/hyperledger/fabric-ca-server-config/<New KeyFile>  #can be found in crypto-config/peerOrganizations/org1.example.com/ca/ directory
  
    extra_hosts:
    - "peer1.org1.example.com:<Second machine IP address>"
 ```
 
  4. Start Network with ```./start.sh```
  
  5. Copy ```crypto-config``` directory to second machine's project  ```host2/```sub-directory
  
  6. Modify ```docker-compose-peer2.yml``` file ```extra-hosts``` section with first host IP Address
  
  7. Start network(peer2) with ```./start-peer2.sh```
  
  
