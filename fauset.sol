// SPDX-License-Identifier: mit
pragma solidity >0.8.0;

contract Faucet {
    function withdraw(uint amount) public {
        require(amount <= 1000000000000000);
        payable(msg.sender).transfer(amount);
    }

    fallback() external payable{}
    receive() external payable{}
}