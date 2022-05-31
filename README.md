# ces-system

> Author: `Biswanath Das`

## Instalation

```sh
import "https://github.com/Biswanathdas1996/kYC-Decentralized/blob/master/KYC.sol";
```

```sh
function getAllUserKYC(address addr) public view returns( string[] memory ) {
        InterfaceKYC c = InterfaceKYC(addr);
        return c.getAllUser();
    }
```
