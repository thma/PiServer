# PiServer
This is a demo of an OpenFAAS compliant server written in haskell

After running the build.sh script the server will be available in the OpenFAAS UI.
The server expects a positive integer value as input parameter N.
The server will then return PI with a precision of N decimal digits.
(The actual calculation is done the HasBigDecimal library based on Chudnovskis algorithm)

# Ho to Build
- execute ./build.sh
