import hardhat from "hardhat";

const { ethers } = hardhat;

async function main() {
  const initialSupply = 1_000_000_000;
  const Valens = await ethers.getContractFactory("Valens");
  const valens = await Valens.deploy(initialSupply);

  console.log("Deploying contract...");
  await valens.waitForDeployment();
  console.log("Valens deployed to:", await valens.getAddress());
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});