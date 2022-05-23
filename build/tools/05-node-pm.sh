#!/usr/bin/bash
set -euxo pipefail

mkdir -p /ci/tools

curl -L https://github.com/yarnpkg/yarn/releases/download/v1.22.19/yarn-v1.22.19.tar.gz | \
    tar xzC /ci/tools
ln -s "/ci/tools/yarn-v1.22.19/bin/yarn" "/ci/bin/yarn"
ln -s "/ci/tools/yarn-v1.22.19/bin/yarnpkg" "/ci/bin/yarnpkg"

curl -L https://github.com/pnpm/pnpm/releases/download/v7.1.3/pnpm-linuxstatic-x64 \
    -o /ci/bin/pnpm
chmod +x /ci/bin/pnpm
