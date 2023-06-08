pragma solidity ^0.8.17;

import {GovHelpers} from 'aave-helpers/GovHelpers.sol';
import {EthereumScript} from 'aave-helpers/ScriptUtils.sol';
import {AaveV3EthENSListing_20230517_Payload} from './AaveV3EthENSListing_20230517_Payload.sol';

contract CreateProposal is EthereumScript {
  function run() external broadcast {
    GovHelpers.Payload[] memory payloads = new GovHelpers.Payload[](1);
    payloads[0] = GovHelpers.buildMainnet(address(0x4449A4d0C1cA7C0EA218F11C8a84DD9b8e633D43));
    GovHelpers.createProposal(
      payloads,
      0x767918bb5dba938c3d3cfa06c068a1179352749ac3d3735d9029061a38ffbb5a
    );
  }
}

contract DeployPayloadEthereum is EthereumScript {
  function run() external broadcast {
    new AaveV3EthENSListing_20230517_Payload();
  }
}
