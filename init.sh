#!/bin/bash

NODE_VIRTUAL_ENV=$1
if [ -z $NODE_VIRTUAL_ENV ]; then
  echo "usage: $0 </path/to/nodeenv> <cmd>"
  exit 1
fi

. $NODE_VIRTUAL_ENV/bin/activate

shift 1
exec "$@"

deactivate
