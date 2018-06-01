# This Dockerfile defines a OpenFaas compliant function as a service
# deployment of the piServer Demo.

# Use Alpine based haskell runtime image (install from https://github.com/thma/AlpineHaskell)
FROM alpine-haskell

# Define the function binary here
ADD piServer /usr/bin
ENV fprocess="piServer"

# add FAAS watchdog
ADD https://github.com/openfaas/faas/releases/download/0.8.0/fwatchdog  /usr/bin
RUN chmod +x /usr/bin/fwatchdog

# Set to true to see request in function logs
ENV write_debug="false"

HEALTHCHECK --interval=5s CMD [ -e /tmp/.lock ] || exit 1
CMD [ "fwatchdog" ]
