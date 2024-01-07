pragma solidity 0.8.0;

// create a wallet app such that when a user wants to desosit or withdraw money to/from their wallet instance,
// the transaction can only be executed if m outta n users on the chain sign off on approving or denying the 
// transaction where m users are a majority out of the total n users on chain.

// basic terms for the smart contract
// msg.sender: address of the one who calls a function in the contract.
// msg.value: value of the token being transferred in the function call.
// balance: map (key, value) - map of user address to the balance of the user. key being user's address and value being balannce of ethereum/token value of the user.
// txIndex: index of the newly created transaction.

// variables, structs and  constructors
// list of owners for the wallet
// address of the wallet, alias of the wallet, balance of the wallet
// transaction index, transaction details- sender, receiver, approvers and amount
// 
// numOfConfirmationsRequired

// functions/events for the wallet
// submitTransaction
// confirmtransaction (approve)
// executeTransaction
// revokeConfirmation
// revokeTransaction

contract multiSigWallet {

    address wallet;
    mapping (address => uint) public balance;
    uint numOfConfirmationsRequired;

    struct owner {
        string name;
        address owner;
    }
    struct transaction {

        address sender;
        address receiver;
        uint amount;
        uint numOfConfirmations; 
    }

    owner[] public owners;

    uint txIndex;
    mapping ( uint => transaction) _transactions;   

    constructor (address _wallet, owner [] _owners, uint _numOfConfirmationsRequired ) {
        wallet = _wallet;
        owners = _owners;
        numOfConfirmationsRequired = _numOfConfirmationsRequired;
        balance[_wallet] = 0;
    }

    function submitTransaction (uint _amount, ) public {

        // withdraw or deposit to wallet
        // send approval requests to other owners of the wallet

        
    }

    function confirmTransaction () public {

        // when a request to withdraw or deposit comes in confirm the transaction
    }

    function revokeConfirmation () public  {

        // when a request to withdraw or deposit comes in deny the transaction
    }
}
