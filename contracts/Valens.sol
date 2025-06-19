// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Valens is ERC20, Ownable {
    constructor(
        uint256 initialSupply
    ) ERC20("Valens", "VLNS") Ownable(msg.sender) {
        _mint(msg.sender, initialSupply * 10 ** decimals());
    }

    // Optional: Add a burn function
    function burn(uint256 amount) public {
        _burn(msg.sender, amount);
    }
}
