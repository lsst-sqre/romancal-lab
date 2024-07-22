#!/bin/bash
CONFIG_FILE=$1

# Load the appropriate conda environment
. /opt/romancal/runtime/loadromancal

# And now transfer control over to Python
exec python3 -m ipykernel -f ${CONFIG_FILE}
