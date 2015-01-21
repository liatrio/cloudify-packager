#!/usr/bin/env bash

#!/usr/bin/env bash

function state_error
{
    echo "ERROR: ${1:-UNKNOWN} (status $?)" 1>&2
    exit 1
}

function wait_for_port
{
    c=0
    while ! echo exit | curl http://localhost:$1;
    do
            if [[ $c -gt 24 ]]; then
                    state_error "failed to connect to service..."
            fi
            echo "host not up yet... retrying... ($c/24)"
            sleep 5;
            c=$((c+1))
    done
}