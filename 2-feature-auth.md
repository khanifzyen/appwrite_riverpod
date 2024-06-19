# Pembuatan Fitur Auth

|#|Features|Done|Notes|
|---|---|---|---|
|1|Create snackbar extension for info and error messages|&#9745;|Usage: `context.showSnackBar(String message, Status status)` where `Status` is `enum(info,error)`|
|2|Create Result entity |&#9745;|Sealed class for return in two types: `Success<T>` or `Failed(String message)`|
|3|Create User entity |&#9745;|-|
|4|Create Session entity |&#9745;|Entity `Session` used locally, only `sessionId` and `userId` is used|
|5|Create auth repository|&#x2610;|-|
|6|Create appwrite services|&#x2610;|-|

