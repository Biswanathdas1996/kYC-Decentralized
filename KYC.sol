// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

    struct UserKYC {
        string abiLink;
        string data;
        string uid;
        string metadata;
    }

interface  InterfaceKYC{
    function getUserData(string memory uid) external view  returns(string[] memory);
    function validateUser(string memory uid) external view  returns(bool);
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

    function getUserData(string memory uid) external view  returns(string[] memory){
        UserKYC storage userData = users[uid];
       string[] memory returnData = new string[](4); // 5 empty items
        returnData[0] = userData.uid;
        returnData[1] = userData.abiLink;
        returnData[2] = userData.metadata;
        returnData[3] = userData.data;
       return returnData;
    }


    function validateUser(string memory uid) external view  returns(bool){
        bytes memory tempEmptyStringTest = bytes(users[uid].uid);
        if(tempEmptyStringTest.length == 0){
            return false;
        }else{
            return true;
        }
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

