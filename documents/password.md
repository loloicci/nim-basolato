Password
===
[back](../README.md)

Table of Contents

<!--ts-->
   * [Password](documents/password.md#password)
      * [API](documents/password.md#api)
      * [Example](documents/password.md#example)

<!-- Added by: runner, at: Wed Jul 29 09:34:28 UTC 2020 -->

<!--te-->

Basolato has its own useful password library. It uses `bcrypt` package inside.  
https://github.com/runvnc/bcryptnim

## API
```
proc genHashedPassword*(val:string):string =

proc isMatchPassword*(input, hashedPassword:string):bool =
```

## Example
```
import basolato/password

let pass1 = "Password!"
let pass2 = "Password!"
let pass3 = "WrongPassword"
let hashed = genHashedPassword(pass1)

echo isMatchPassword(pass2, hashed)
>> true

echo isMatchPassword(pass3, hashed)
>> false
```