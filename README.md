# Decentralized KYC

> Author: `Biswanath Das`

## KYC contract to import

```sh
import "https://github.com/Biswanathdas1996/kYC-Decentralized/blob/master/KYC.sol";
```

## Sample contract

```sh
contract OTHER {

    address KYCaddress = 0xC9122260fD78C423XXXXXXXXXXXXXX;
    InterfaceKYC kyc = InterfaceKYC(KYCaddress);


    function getAllUserKYC() public view returns( string[] memory ) {
        return kyc.getAllUserKYCData();
    }

    function addUserForKYC(string memory uid, string memory abiLink , string memory data) public {
        kyc.addUser(uid,abiLink,data);
    }

}
```
