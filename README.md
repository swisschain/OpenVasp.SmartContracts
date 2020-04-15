# How to use Vasp Builder

You want to create a new Vasp Smart Contract? 
And you do not want to understand deployment magic and vant to do it by API or by UI?

YES it is possible!

Just open DAPP on etherscan.io and create your VASP smart contract.

Instructions to create VASP in ropsten network (testnet):
1. You should have address with 0.06 ETH in ropsten network
2. You should have metamask plugin in your brouser, if you want to so it by UI.
3. Goto page https://ropsten.etherscan.io/address/0xD900Af4e7FcA95F52fc65F13199ffBEA0fb9Db9b#writeContract
4. Call method `1. Build` and fill 5 parameters
5. After transaction executed, check event list in transaction or in smart contract
5.1. In event `VaspCreated` you can see vasp address in first property
5.2. Alternative way to find VASP address - call READ method getLast and provide your ETH address.

# how to deploy it by yourself

## Build and deploy

* make file with name `.env` and setup params. You can use `.env.format` as example.
* `npm install`
* `truffle compile`
* `truffle migrate --network ropsten`

## Verify source code in etherscan.io

* `truffle run verify VASP --network ropsten`
* `truffle run verify VaspFactory --network ropsten`
* `truffle run verify VaspBuilder --network ropsten`
