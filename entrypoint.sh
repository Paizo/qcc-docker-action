#!/bin/sh -l

set -e
set -o pipefail
echo -e "Running command\n"

bash -c "set -e;  set -o pipefail; export PATH=/qtools/bin:$PATH; $1"
