pragma solidity ^0.5.0;

import "openzeppelin-solidity/contracts/ownership/Ownable.sol";

import "openzeppelin-solidity/contracts/token/ERC721/ERC721Full.sol";
import "openzeppelin-solidity/contracts/token/ERC721/ERC721Mintable.sol";
import "openzeppelin-solidity/contracts/token/ERC721/ERC721Burnable.sol";
import "openzeppelin-solidity/contracts/token/ERC721/ERC721Pausable.sol";

contract ERC721Token is Ownable, ERC721Mintable, ERC721Burnable, ERC721Pausable, ERC721Full {

  constructor(string memory name, string memory symbol) public ERC721Full(name, symbol) {}

  /**
    * @dev Gets the list of token IDs of the requested owner.
    * @param owner address owning the tokens
    * @return uint256[] List of token IDs owned by the requested address
    */
  function tokensOfOwner(address owner) external view returns (uint256[] memory) {
    return _tokensOfOwner(owner);
  }

}