// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract MUDRNG
{
    uint randNonce = 0;
 
    function ran() external returns(uint)
    {
        randNonce++;
        return uint(keccak256(abi.encodePacked(block.timestamp,msg.sender,randNonce)));
    }
}