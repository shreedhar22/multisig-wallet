# multisig-wallet
Multi Signature Wallet app in Solidity

## Initial Setup


1) Install Truffle and create a Truffle project. This will create an emptry ethereum project for writing smart contracts

```
npm install -g truffle
truffle init
```

2) install some NPM packages that we will use for testing.

```
npm init -f
npm i --save-dev chai chai-as-promised
```

3) Check that Truffle was installed by typing

```
truffle
```

4) Create React Typescript web-app 
npx create-react-app  multisig-wallet-web --typescript