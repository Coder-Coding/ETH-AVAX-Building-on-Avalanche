
# Metacrafters Project of Degen Gaming ERC20 Token Smart Contract
This repository contains the smart contract code for the `Degen_Gaming ERC20 token` deployed on the Avalanche network. The `Degen_Gaming ERC20 token` is designed to facilitate rewards, transfers, redemptions, balance checks,owner transfer, store inventory and token burning within the `Degen_Gaming` platform.

## Description
I created a `ETH-AVX-DegenToken` smart contract which performs function like facilitate rewards, transfers, redemptions, balance checks,owner transfer, store inventory and token burning which is deployed on Avalanche network and connected through Metamask wallet and every single tranction done using my contract are shown and stroed on `SNOWTRACE`.

## Contract Functionality
#### mintOwnerTokens :
The Degen Gaming platform's owner can mint new tokens using the mint function. This function creates and distributes tokens to players as rewards.

#### transferTokensTo :
Players can transfer their tokens to others using the transfer function. This allows for seamless token transfers between participants.

#### redeemTokensFor :
Players can redeem their tokens for in-game store items using the redeemTokens function. This feature enhances the in-game experience by allowing players to utilize their tokens.

#### checkAccountTokenBalance :
Players can easily check their token balance using the balanceOf function. This provides transparency and ensures players can monitor their holdings.

#### burnUserTokens :
The burn function allows token holders to burn tokens that are no longer needed. This feature provides flexibility and helps maintain a healthy token ecosystem.

## DEPLOYMENT
Create a hardhat project and write the contract in it and then run your blockchain connect it with remix ide and test the transction on fuji testnet
## Install
hardhat installation

1. `npm install --save-dev hardhat`.

2. `npx hardhat`.

3. Create a javascript project, write the contract.

4. Connect with remix by following command.

5. `npm install -g @remix-project/remixd` this will install the remix depemdency globally.

6. `remixd -s ./ --remix-ide https://remix.ethereum.org`

8. start your hardhat by `npx hardhat node`.

9. Go to remix ide and connect with localhost.

10. deploy your project on remix ide.

11. Test the project on Fuji testnet

## Credits
This program/contract is a solution to the project task provided by MetaCrafters and probleam solved by `Parvesh Saini`.