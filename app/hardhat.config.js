require("@nomicfoundation/hardhat-toolbox");
require("dotenv").config();

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: {
    version: "0.8.20",
    settings: {
      optimizer: {
        enabled: true,
        runs: 200
      }
    }
  },
  networks: {
    hardhat: {
      chainId: 1337,
    },
    sepolia: {
      url: process.env.SEPOLIA_RPC_URL,
      accounts: [process.env.ACTIVE_PRIVATE_KEY]
    },
    amoy: {
      url: process.env.AMOY_RPC_URL,
      accounts: [process.env.ACTIVE_PRIVATE_KEY]
    }, 
    polygon:{
      url: process.env.POLYGON_RPC_URL,
      accounts: [process.env.ACTIVE_PRIVATE_KEY]
    }
  }
};
