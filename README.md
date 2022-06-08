# ces-system

> Author: `Biswanath Das`

## Instalation

```sh
import "https://github.com/Biswanathdas1996/kYC-Decentralized/blob/master/KYC.sol";
```

```sh
contract OTHER {

    address KYCaddress = 0x32616DbDxxxxxxxxxxxxxxxxx;
    InterfaceKYC kyc = InterfaceKYC(KYCaddress);


    function getAllUserKYC() public view returns( string[] memory ) {
        return kyc.getAllUserKYCData();
    }

    function getUserDataKYC(string memory uid) public view returns(UserKYC memory) {
        return kyc.getUserData(uid);
    }

    function addUserForKYC(string memory uid, string memory abiLink , string memory data) public {
        kyc.addUser(uid,abiLink,data);
    }

}
```
