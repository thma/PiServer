# PiServer
This is a demo of an OpenFAAS compliant service written in haskell

After running the build.sh script the server will be available in the OpenFAAS UI.
The server expects a positive integer value as input parameter N.
The server will then return PI with a precision of N decimal digits.
(The actual calculation is done the HasBigDecimal library based on Chudnovskis algorithm)

# Ho to Build
- install Openfaas: http://docs.openfaas.com/deployment/docker-swarm/
  (There is also an Kubernetes version: http://docs.openfaas.com/deployment/kubernetes/)

- install OpenFAAS command line interface: http://docs.openfaas.com/cli/install/

- install AlpineHaskell (A minimalistic docker image providing essential runtime libs for haskell programs): https://github.com/thma/AlpineHaskell

- execute PiServer/build.sh

- test installation 
open http://127.0.0.1:8080/ui/ in your browser and click on the "piserver" entry in the left menu.
on the right press on the "invoke" button. You will receive an Response Body: "ERROR: please provide an integer to specify how many decimals of pi you want me to compute"
fill in a positive integer (say 234) into the "Request body" field and press "invoke" again.
This time the Response Body should be PI with your specified accuracy, say: "3.141592653589793238462643383279502884197169399375105820974944592307816406286208998628034825342117067982148086513282306647093844609550582231725359408128481117450284102701938521105559644622948954930381964428810975665933446128475648233786
".
