//SPDX-License-Identifier: MIT
pragma solidity 0.8.11;

contract MyContract{
    function getRandomNumber() public pure returns (uint){
        return 9;
    }

    function payMeBack() external payable {
        uint256 randomNumber = getRandomNumber();
        uint256 ethRefund = msg.value / randomNumber;
        payable(msg.sender).transfer(ethRefund);
    }
}

