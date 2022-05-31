# ces-system

> Author: `Biswanath Das`

## Instalation

```sh
import "./KYC.sol";
```

```sh
function getAllUserKYC(address addr) public view returns( string[] memory ) {
        InterfaceKYC c = InterfaceKYC(addr);
        return c.getAllUser();
    }
```
