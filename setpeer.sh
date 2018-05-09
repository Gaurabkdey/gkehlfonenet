
#!/bin/bash
export ORDERER_CA=/opt/ws/crypto-config/ordererOrganizations/onenet/msp/tlscacerts/tlsca.onenet-cert.pem

if [ $# -lt 2 ];then
	echo "Usage : . setpeer.sh Org1| <peerid>"
fi
export peerId=$2

if [[ $1 = "Org1" ]];then
	echo "Setting to organization Org1 peer "$peerId
	export CORE_PEER_ADDRESS=$peerId.onenet:7051
	export CORE_PEER_LOCALMSPID=Org1MSP
	export CORE_PEER_TLS_CERT_FILE=/opt/network/gkehlfonenet/crypto-config/peerOrganizations/onenet/peers/peer0.onenet/tls/server.crt
	export CORE_PEER_TLS_KEY_FILE=/opt/network/gkehlfonenet/crypto-config/peerOrganizations/onenet/peers/peer0.onenet/tls/server.key
	export CORE_PEER_TLS_ROOTCERT_FILE=/opt/network/gkehlfonenet/crypto-config/peerOrganizations/onenet/peers/peer0.onenet/tls/ca.crt
	export CORE_PEER_MSPCONFIGPATH=/opt/network/gkehlfonenet/crypto-config/peerOrganizations/onenet/users/Admin@onenet/msp
fi

	
