# Pembuatan Fitur Auth

|#|Features|Done|Notes|
|---|---|---|---|
|1|Create snackbar extension for info and error messages|&#9745;|Usage: `context.showSnackBar(String message, Status status)` where `Status` is `enum(info,error)`|
|2|Create Result entity |&#9745;|Sealed class for return in two types: `Success<T>` or `Failed(String message)`|
|3|Create User entity |&#9745;|-|
|4|Create Session entity |&#9745;|Entity `Session` used locally, only `sessionId` and `userId` is used|
|5|Create Auth repository|&#9745;|Abstract class `AuthRepository`, consist of abstract method `register`,`login`,`logout`|
|6|Create Appwrite services|&#9745;|Class `AppwriteAuthRepository` implements `AuthRepository`|
|7|Create Usecase (abstract class) |&#9745;|Abstract class `usecase`|
|8|Create Usecase register (implementation) |&#x2610;|Class `register` implements `usecase`|

