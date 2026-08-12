#!/usr/bin/env bash
set -Eeuo pipefail

case "${1:-}" in
deploy)
	if [[ -z "${EXAMPLE:-}" ]]; then
		echo "EXAMPLE is unavailable"
		exit 1
	fi

	printf '%s' "$EXAMPLE" | sha256sum
	;;
*)
	echo "usage: $0 deploy" >&2
	exit 2
	;;
esac
