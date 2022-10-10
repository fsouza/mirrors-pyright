#!/usr/bin/env bash

set -euo pipefail

if git describe --tags --exact-match HEAD &>/dev/null; then
	tag=$(git describe --tags --exact-match HEAD)
	old_sha=$(shasum -a 256 README.md)
	sed -i 's/rev: .\+/rev: '"${tag}" README.md
	new_sha=$(shasum -a 256 README.md)

	if [[ ${new_sha} != "${old_sha}" ]]; then
		git commit -m "Update README" README.md
	fi
fi
