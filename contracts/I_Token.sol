pragma solidity 0.6.6;

import "../node_modules/openzeppelin-solidity/contracts/token/ERC20/IERC20.sol";

interface I_Token is IERC20 {

    function buy(uint256 _tokens) external;
    function sell(uint256 _tokens) external;
    function setTransition() external;
    function getBuyCost(uint256 _tokens) external view returns(uint256);
    function getSellAmount(uint256 _tokens) external view returns(uint256);
    function getCurve() external view returns (
        uint256,
        uint256,
        uint256
    );
    function getCollateralInstance() external view returns(address);
    function getTokenStatus() 
        external 
        view 
        returns(
            bool,
            bool
        );
    function getTransitionThresholds() external view returns(uint256,uint256,uint256);
}