// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "./ERC721A.sol";
import "./Ownable.sol";

contract OVOContract is Ownable, ERC721A {
    uint256 public constant MAX_OFFICER_SUPPLY = 1000000;
    uint256 public constant MAX_OUTAW_SUPPLY = 1000000;
    uint256 public constant PRICE_PER_TOKEN = 0.001 ether;
    
    bool public mintPaused; 
    string private _baseTokenURI = "https://bellmorecode.com/ovo/data/";

    constructor() ERC721A("Officers vs Outlaws", "OVO") {
        mintPaused = false;
    }

    function mint(address to, uint256 quantity) external payable {
        require(!mintPaused, "Mint is paused");
        require(msg.value >= quantity * PRICE_PER_TOKEN, "Insufficient Funds");
        _mint(to, quantity);
    }

    function withdraw() external onlyOwner {
        (bool success, ) = msg.sender.call{value: address(this).balance}("");
        require(success, "Transfer Failed");
    }

    function setBaseURI(string calldata baseURI) external onlyOwner {
        _baseTokenURI = baseURI;
    }

    function _baseURI() internal view override returns (string memory) {
        return _baseTokenURI;
    }

    function pauseMint(bool _paused) external onlyOwner {
        mintPaused = _paused;
    }
}