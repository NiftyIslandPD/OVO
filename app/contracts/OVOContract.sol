// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;
import "./ERC721A.sol";
import "./Ownable.sol";
contract OfficersVsOutlaws is Ownable, ERC721A {
    // Open Edition.
    uint256 public tokenCost = 0.002 ether;
    bool public mintPaused; 
    string private _baseTokenURI = "https://nipd.xyz/ovo/data/";
    constructor() ERC721A("Officers vs Outlaws", "OVO") {
        mintPaused = false;
    }
    function mint(address to, uint256 quantity) external payable {
        require(!mintPaused, "Mint is paused");
        require(msg.value >= quantity * tokenCost, "Insufficient Funds");
        _mint(to, quantity);
    }
    function setCost(uint256 _cost) public onlyOwner {
        tokenCost = _cost;
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