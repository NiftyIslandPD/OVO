const { expect } = require("chai");
var contractAddress = "";
describe("Deploy the Officers v. Outlaws contract...", function () {
    it("Deploy", async function () {
      const ovo = await ethers.deployContract("OfficersVsOutlaws");
      contractAddress = ovo.target;
      console.log(contractAddress);
    });
  });
