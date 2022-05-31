// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

    struct User {
        string abiLink;
        string data;
        string uid;
        string metadata;
    }

interface  InterfaceKYC{
    function getAllUser() external view returns(string[] memory);
    function getUserData(string memory uid) external view returns(User memory);
    function addUser(string memory uid, string memory abiLink , string memory data ) external ;
    function upadteUserAbi(string memory uid ,string memory abiLink, string memory data  ) external;
    function setUserMetadata(string memory metadata, string memory uid) external;
}

contract KYC {

     mapping(string => User) public users;
     string[] public userList ;

     function addUser(string memory uid, string memory abiLink , string memory data ) external virtual {
        User memory newUser = User({
            abiLink:abiLink,
            data: data,
            uid:uid,
            metadata:""
        });
        users[uid] = newUser;
        userList.push(uid);
    }

    function getAllUser() external view returns(string[] memory){
        return userList;
    }

    function getUserData(string memory uid) external view returns(User memory){
        User storage userData = users[uid];
        return userData;
    }

    function upadteUserAbi(string memory uid ,string memory abiLink, string memory data  ) external {
         User storage userData = users[uid];
         userData.abiLink = abiLink;
         userData.data = data;
    }

    function setUserMetadata(string memory metadata, string memory uid) external {
         User storage userData = users[uid];
         userData.metadata = metadata;
    }

}

