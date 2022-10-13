// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.15;

import "@OpenZeppelin/openzeppelin-contracts/tree/master/contracts/token/ERC20/ERC20.sol";
import "https://github.com/compound-finance/compound-protocol/blob/master/contracts/ComptrollerInterface.sol";

contract MyDefi is ERC20{

    function invest() external {
        dai.approve(address(cDai), 10000); cDai.mint(10000);
    }
        
    function cashout() external { 
        int balance cDai.balanceOf(address(this));
        redeem(balance);
    }
    function borrow() external {
        dai.approve(address (cDai), 10000); 
        _mint(10000);
        address markets = new address(1); 
        markets [0]= cDai; 
        comptroller.enterMarkets (markets);
        cBat.borrow(100);
    }
    function payback() external {
        bat.approve(address (cBat), 200); 
        cBat. repayBorrow(100);
    }
}