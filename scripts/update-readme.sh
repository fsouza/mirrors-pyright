#!/usr/bin/env bash

set -euo pipefail

tag=$(git describe --tags HEAD)
sd 'rev: .+' "rev: ${tag}" README.md
