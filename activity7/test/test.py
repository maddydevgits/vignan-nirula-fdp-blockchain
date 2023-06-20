from web3 import Web3,HTTPProvider
import json

def connect_with_blockchain():
    # Select the Blockchain Server
    blockchainServer='http://127.0.0.1:7545'

    # Connect Web3 with Blockchain Server
    web3=Web3(HTTPProvider(blockchainServer))
    
    # Select the account for making transaction fee
    web3.eth.default_account=web3.eth.accounts[0]
    
    # Select the contract
    with(open('../build/contracts/register.json') as f):
        artifact_json=json.loads(f)
        artifact_abi=artifact_json['abi']
        contract_address=artifact_json['networks']['5777']['address']
    
    # Connect with Contract
    contract=web3.eth.contract(
        address=contract_address,
        abi=artifact_abi)
    
    return(contract,web3)
    
