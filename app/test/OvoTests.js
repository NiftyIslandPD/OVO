const { expect } = require("chai");

var contractAddress = "";

describe("Officers v. Outlaws contract", function () {
    it("Deploy", async function () {
      const ovo = await ethers.deployContract("OVOContract");
      //await ovo.mint('0x06Bbe2727cb099dc769B0eD48e109Fde69dE824A', 2);

      contractAddress = ovo.target;

      console.log(contractAddress);
    });
  });

/*   describe("Officers v. Outlaws contract", function () {
    it("Deploy and mint 1", async function () {
      const ovo = await ethers.getContractAt("OVOContract", contractAddress);
      let tx_res = await ovo.mint('0x06Bbe2727cb099dc769B0eD48e109Fde69dE824A', 1);
      console.log({tx_res});
    });
  }); */