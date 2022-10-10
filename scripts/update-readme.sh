#!/usr/bin/env bash

set -euo pipefail

tag=$(git describe --tags HEAD)
old_sha=$(shasum -a 256 README.md)
sd 'rev: .+' "rev: ${tag}" README.md
new_sha=$(shasum -a 256 README.md)

if [[ ${new_sha} != "${old_sha}" ]]; then
	git commit -m "Update README" README.md
fi
