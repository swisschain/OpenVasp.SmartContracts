# vasp.contracts

## Build and deploy

* make file with name `.env` and setup params. You can use `.env.format` as example.
* `npm install`
* `truffle compile`
* `truffle migrate --network ropsten`

## Verify source code in etherscan.io

* `truffle run verify VASP --network ropsten`
* `truffle run verify VaspFactory --network ropsten`
* `truffle run verify VaspBuilder --network ropsten`
