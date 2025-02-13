// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {nftmarketplace} from "../src/nft-marketplace.sol";

import "forge-std/Script.sol";

// import "../lib/forge-std/src/Vm.sol";

contract DeployScript is Script {
    function run() public {
        vm.startBroadcast();

        nftmarketplace nft = new nftmarketplace();

        console.log("NFT-Marketplace Contract Address:", address(nft));

        vm.stopBroadcast();
    }
}
