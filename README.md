# Decentralized KYC

> Author: `Biswanath Das`

## KYC contract to import

```sh
import "https://github.com/Biswanathdas1996/kYC-Decentralized/blob/master/KYC.sol";
```

## Sample contract

```sh
contract OTHER {

    address KYCaddress = 0xC9122260fD78C423BXXXXXXXXXXXXXXXX;
    InterfaceKYC kyc = InterfaceKYC(KYCaddress);

    // To get all the user data from KYC
    function getAllUserKYC() public view returns( string[] memory ) {
        return kyc.getAllUserKYCData();
    }

    // Add new user data to KYC
    function addUserForKYC(string memory uid, string memory abiLink , string memory data) public {
        kyc.addUser(uid,abiLink,data);
    }

}
```
