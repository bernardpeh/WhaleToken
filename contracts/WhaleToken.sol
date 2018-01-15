pragma solidity ^0.4.18;

import 'zeppelin-solidity/contracts/token/StandardToken.sol';

/**
 * @title WhaleToken
 * @dev Very simple ERC20 Token example, where all tokens are pre-assigned to the creator.
 * Note they can later distribute these tokens as they wish using `transfer` and other
 * `StandardToken` functions.
 */
contract WhaleToken is StandardToken {

  string public constant name = "WhaleToken";
  string public constant symbol = "WHALE";
  uint public constant decimals = 18;

  uint public constant INITIAL_SUPPLY = 500000 * (10 ** uint256(decimals));
  address public constant owner = 0x69c168f4A372e52fE51A4435638a9a893B3Ac9D1;
  /**
   * @dev Constructor that gives msg.sender all of existing tokens.
   */
  function WhaleToken() public {
    totalSupply = INITIAL_SUPPLY;
    balances[owner] = INITIAL_SUPPLY;
    Transfer(0x0, owner, INITIAL_SUPPLY);
  }

}
