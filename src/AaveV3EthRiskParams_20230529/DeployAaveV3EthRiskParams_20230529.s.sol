pragma solidity ^0.8.16;

import {GovHelpers} from 'aave-helpers/GovHelpers.sol';
import {AaveV3EthRiskParams_20230529} from './AaveV3EthRiskParams_20230529.sol';
import 'aave-helpers/ScriptUtils.sol';

contract CreateProposal is EthereumScript {
  function run() external broadcast {
    GovHelpers.Payload[] memory payloads = new GovHelpers.Payload[](1);
    payloads[0] = GovHelpers.buildMainnet(0xFa6481b09c273d17701fb90427D6658a028EdC18);
    GovHelpers.createProposal(payloads, 0x169718719612fd6abd2fe3361fb879b2ad8087d4e00b9c9c3449dc9d2474f62a);
  }
}

contract DeployPayloadEthereum is EthereumScript {
  function run() external broadcast {
    new AaveV3EthRiskParams_20230529();
  }
}
