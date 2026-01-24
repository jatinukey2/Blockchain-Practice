(async () => {
    const address = "0x19a0870a66B305BE9917c0F14811C970De18E6fC";
    const abiArray = [
	{
		"inputs": [],
		"name": "myUint",
		"outputs": [
			{
				"internalType": "uint256",
				"name": "",
				"type": "uint256"
			}
		],
		"stateMutability": "view",
		"type": "function"
	},
	{
		"inputs": [
			{
				"internalType": "uint256",
				"name": "newUint",
				"type": "uint256"
			}
		],
		"name": "setMyUint",
		"outputs": [],
		"stateMutability": "nonpayable",
		"type": "function"
	}
];
const contractInstance = new web3.eth.Contract(abiArray, address);

console.log(contractInstance.methods.myUint().call());

let accounts = await web3.eth.getAccounts();
let txResult = await contractInstance.methods.setMyUint(56).send({from: accounts[0]});

console.log(contractInstance.methods.myUint().call());
console.log(txResult);


})()