// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

    struct UserKYC {
        string abiLink;
        string data;
        string uid;
        string metadata;
    }

interface  InterfaceKYC{
    struct UserKYC {
        string abiLink;
        string data;
        string uid;
        string metadata;
    }
    function getUserData(string memory uid) external view returns(UserKYC memory);
    function getAllUserKYCData() external view returns(string[] memory);
    function addUser(string memory uid, string memory abiLink , string memory data ) external;
    function upadteUserAbi(string memory uid ,string memory abiLink, string memory data  ) external;
    function setUserMetadata(string memory metadata, string memory uid) external;
}

contract KYC {

     mapping(string => UserKYC) public users;
     string[] public userList ;

     function addUser(string memory uid, string memory abiLink , string memory data ) external  {
        UserKYC memory newUser = UserKYC({
            abiLink:abiLink,
            data: data,
            uid:uid,
            metadata:""
        });
        users[uid] = newUser;
        userList.push(uid);
    }

    function getAllUserKYCData() external view returns(string[] memory){
        return userList;
    }

    function getUserData(string memory uid) external view returns(UserKYC memory){
        UserKYC storage userData = users[uid];
        return userData;
    }

    function upadteUserAbi(string memory uid ,string memory abiLink, string memory data  ) external {
         UserKYC storage userData = users[uid];
         userData.abiLink = abiLink;
         userData.data = data;
    }

    function setUserMetadata(string memory metadata, string memory uid) external {
         UserKYC storage userData = users[uid];
         userData.metadata = metadata;
    }

}

