#!/usr/bin/env bash
set -euo pipefail

cd /home/huangnv/blog/huangnvBlog

export PATH="/home/huangnv/.local/node-v22.22.1/bin:/home/huangnv/.local/bin:/usr/local/bin:/usr/bin:/bin:$PATH"

pnpm build
exec python3 -m http.server 4321 --bind 0.0.0.0 --directory dist
