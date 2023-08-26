
const hre = require("hardhat");

async function main() {
  
  const DegenToken = await hre.ethers.getContractFactory("DegenToken");
  const degentoken = await DegenToken.deploy();
  await degentoken.deployed();

  console.log(`A contract with balance of eth deployed to ${degentoken.address}`);
}


main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});

