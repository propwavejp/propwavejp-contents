// SPDX-License-Identifier: MIT
pragma solidity ^ 0.8.13;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import "@openzeppelin/contracts/utils/Strings.sol";

contract ResortMemberships is ERC1155{
    uint256 public constant SATURDAY = 0;
    uint256 public constant SUNDAY = 1;
    uint256 public constant WEEKDAYS = 2;

    constructor() ERC1155("https://propwavejp.github.io/propwavejp-contents/lets-issue-property-backed-nft-token/metadata/{id}.json"){
        _mint(msg.sender, SATURDAY, 52, "");
        _mint(msg.sender, SUNDAY, 52, "");
        _mint(msg.sender, WEEKDAYS, 260, "");
    } 
    function uri(uint256 _tokenId) override public view returns (string memory) {
	    return string(
		    abi.encodePacked(
                "https://propwavejp.github.io/propwavejp-contents/lets-issue-property-backed-nft-token/metadata/",
		        Strings.toString(_tokenId),
		        ".json"
		    )
	    );
    }
}

