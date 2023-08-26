// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Degen_Token_Gaming is ERC20, Ownable {
    struct GameStoreItem {
        string itemName; // New field for item name
        uint256 itemPrice;
        uint256 itemStock;
    }

    mapping(uint256 => GameStoreItem) public gameStoreInventory;
    uint256 public totalItems;

    constructor() ERC20("Degen_Token", "_DEGEN_") {
        _mint(msg.sender, 1000); // Initial supply: 1,000
    }

    function mintOwnerTokens(address recipient, uint256 amount) public onlyOwner {
        _mint(recipient, amount);
    }

    function transferTokensTo(address to, uint256 amount) public {
        require(to != address(0), "Invalid recipient address");
        _transfer(msg.sender, to, amount);
    }

    function redeemTokensFor(uint256 amount) public {
        require(balanceOf(msg.sender) >= amount, "Insufficient balance");
        _burn(msg.sender, amount);
    }

    function checkAccountTokenBalance(address account) public view returns (uint256) {
        return balanceOf(account);
    }

    function burnUserTokens(uint256 amount) public {
        require(balanceOf(msg.sender) >= amount, "balance is Insufficient");
        _burn(msg.sender, amount);
    }

    function addItemToGameStore(string memory itemName, uint256 price, uint256 stock) public onlyOwner {
        require(price > 0, "Price should be more than 0");
        require(stock > 0, "Stock should be more than 0");
        totalItems++;
        gameStoreInventory[totalItems] = GameStoreItem(itemName, price, stock);
    }

    function getGameStoreInventory() public view returns (GameStoreItem[] memory) {
        GameStoreItem[] memory items = new GameStoreItem[](totalItems);
        for (uint256 i = 1; i <= totalItems; i++) {
            items[i - 1] = gameStoreInventory[i];
        }
        return items;
    }

    function redeemGameStoreItem(uint256 itemId) public {
        require(itemId > 0 && itemId <= totalItems, "item ID not valid");
        GameStoreItem storage item = gameStoreInventory[itemId];
        require(item.itemStock > 0, "Item is out of stock so not avaliable");
        require(balanceOf(msg.sender) >= item.itemPrice, "balance is not sufficient plese check you balance before making transaction");

        _transfer(msg.sender, owner(), item.itemPrice); // Transfer tokens to owner
        _burn(msg.sender, item.itemPrice); // Burn tokens from user
        item.itemStock--;
    }
}
