#!/bin/bash


if [ -z "$KRSYNC_STARTED" ]; then
    export KRSYNC_STARTED=true
    exec rsync --blocking-io --rsh "$0" $@
fi

namespace=''
pod=$1
shift

if [ "X$pod" = "X-l" ]; then
    pod=$1
    shift
    namespace="-n $1"
    shift
fi

exec kubectl $namespace exec -i $pod -- "$@"