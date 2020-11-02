// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.8.0;

/**
 * @dev Interface of the vault standard actions.
 */
interface ICurveFiActions {
	function deposit(
		address token,
		address toProtocol,
		uint256 amount
	) external returns (uint256);

	function deposit(
		address[] calldata tokens,
		address[] calldata toProtocols,
		uint256[] calldata amounts
	) external returns (uint256);

	function withdraw(
		address token,
		address fromProtocol,
		uint256 amount
	) external returns (uint256);

	function mintReward(address gaugeAddress) external returns (uint256);
}
