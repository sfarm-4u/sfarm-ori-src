// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.8.0;

import "./ICurveFiActions.sol";

interface ICurvePool {}

interface ICurveGauge {}

interface ICurveTokenMiner {}

contract CurveFiActions is ICurveFiActions {
	address internal _curvePoolAddress;
	address internal _curveGaugeAddress;
	address internal _curveTokenMinerAddress;

	ICurvePool internal _curvePool;
	ICurveGauge internal _curveGauge;
	ICurveTokenMiner internal _curveTokenMiner;

	constructor(
		address curvePoolAddress,
		address curveGaugeAddress,
		address curveTokenMinerAddress
	) {
		_curvePoolAddress = curvePoolAddress;
		_curvePool = ICurvePool(curvePoolAddress);

		_curveGaugeAddress = curveGaugeAddress;
		_curveGauge = ICurveGauge(curveGaugeAddress);

		_curveTokenMinerAddress = curveTokenMinerAddress;
		_curveTokenMiner = ICurveTokenMiner(curveTokenMinerAddress);
	}

	function deposit(
		address token,
		address toProtocol,
		uint256 amount
	) external override returns (uint256) {}

	function deposit(
		address[] calldata tokens,
		address[] calldata toProtocols,
		uint256[] calldata amounts
	) external override returns (uint256) {}

	function withdraw(
		address token,
		address fromProtocol,
		uint256 amount
	) external override returns (uint256) {}

	function mintReward(address gaugeAddress)
		external
		override
		returns (uint256)
	{}
}
