pragma solidity >=0.4.22 <0.7.0;


/**
 * @title Messages
 * @dev Stores all the messages
 */
contract Messages {
    mapping(uint256 => string) private messages;
    uint256 private messageCount;

    /**
     * @dev Initialize number of messages to zero
     */
    constructor() public {
        messageCount = 0;
    }

    /**
     * @dev Add the given message to the list
     * @param message message to add
     */
    function addMessage(string memory message) public {
        messages[messageCount] = message;
        messageCount++;
    }

    /**
     * @dev Gets the messages at a given index
     * @param index index of message to get
     * @return message at the index
     */
    function getMessage(uint256 index) public view returns (string memory) {
        return messages[index];
    }

    /**
     * @dev Gets the number of messages
     * @return number of messages
     */
    function getMessageCount() public view returns (uint256) {
        return messageCount;
    }
}
