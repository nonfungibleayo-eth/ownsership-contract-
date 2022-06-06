/// SPDX-License-Identifier: MIT;
pragma solidity > 0.4.0 <= 0.9.0;

contract ownership {
    address public owner; 

    constructor (uint amount) public {
        owner = msg.sender;
        amount = msg.value;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "only owner");
        _;
    }

    function newOwner(address newOwn) external onlyOwner {
        require(newOwn != address(0), "invalid");
        owner = newOwn;
    }

    function stake(uint amount) external onlyOwner {
        require(amount > 250, "insufficeint");
        amount * 2;
    }

    function askAccess(uint amt, address owner2) external {
     require(amt >= 200, "not-granted");
     owner = owner2;
    }
}
