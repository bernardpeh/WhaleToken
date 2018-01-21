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

  /**
   * @dev Constructor that gives msg.sender all of existing tokens.
   */
  function WhaleToken(address _owner) public {
    totalSupply = INITIAL_SUPPLY;
    balances[_owner] = INITIAL_SUPPLY;
    Transfer(0x0, _owner, INITIAL_SUPPLY);
  }

}
