#!/bin/bash
set -euo pipefail

	# Workaround for not running admin adapter
	if [ -n "${WORKAROUND}" ]; then
			echo "Reinstalling admin adapter"
			 iobroker del admin
			 iobroker add admin	
		fi
exec "$@"
