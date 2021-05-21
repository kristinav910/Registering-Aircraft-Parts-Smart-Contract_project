pragma solidity ^0.5.5;
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/token/ERC721/ERC721Full.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/drafts/Counters.sol";
contract PartRegistry is ERC721Full {
    constructor() ERC721Full("PartsToken", "PART") public { }
    using Counters for Counters.Counter;
    Counters.Counter token_ids;
    struct Part_Info {
        string Description;
        string Part_Number;
        string Status_Work;
        uint List_Price;
        uint Current_Value;
    }
    mapping(uint => Part_Info) public parts_list;
    event Appraisal(uint token_id, uint Current_Value, string report_uri);
    function registerParts(address owner,
        string memory Description,
        string memory Part_Number,
        string memory Status_Work,
        uint List_Price,
        uint initial_value,
        string memory token_uri) public returns(uint) {
        token_ids.increment();
        uint token_id = token_ids.current();
        _mint(owner, token_id);
        _setTokenURI(token_id, token_uri);
        parts_list[token_id] = Part_Info(
        Description,
        Part_Number,
        Status_Work,
        List_Price,
        initial_value);
        return token_id;
    }
    function newAppraisal(uint token_id, uint new_value, string memory report_uri) public returns(uint) {
        parts_list[token_id].Current_Value = new_value;
        emit Appraisal(token_id, new_value, report_uri);
        return parts_list[token_id].Current_Value;
    }
}