pragma solidity ^0.8.17;

import {GovHelpers} from 'aave-helpers/GovHelpers.sol';
import {EthereumScript} from 'aave-helpers/ScriptUtils.sol';
import {AaveV3Eth1INCHListing_20230517_Payload} from './AaveV3Eth1INCHListing_20230517_Payload.sol';

contract CreateProposal is EthereumScript {
  function run() external broadcast {
    GovHelpers.Payload[] memory payloads = new GovHelpers.Payload[](1);
    payloads[0] = GovHelpers.buildMainnet(0x134C50556dE1A83Dd947c9460a58d8d60a289CEa);
    GovHelpers.createProposal(payloads, 0x111f8f9fddd053337e3251dad1a74474c42dba045a55aed0f38db8099ca84778);
  }
}

contract DeployPayloadEthereum is EthereumScript {
  function run() external broadcast {
    new AaveV3Eth1INCHListing_20230517_Payload();
  }
}
