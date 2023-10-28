#!/usr/bin/env bash
set -euo pipefail

export VERSION="1.0.3"
case $RUNNER_OS in
Linux)
	export PLATFORM="x86_64-unknown-linux-gnu"
	;;
macOS)
	export PLATFORM="x86_64-apple-darwin"
	;;
Windows)
	export PLATFORM="x86_64-pc-windows-msvc"
	;;
esac

export DOWNLOAD="https://github.com/catppuccin/toolbox/releases/download/catwalk-v${VERSION}/catwalk-${PLATFORM}"
mkdir -p "${HOME}/.local/bin"
echo "${HOME}/.local/bin" >>"$GITHUB_PATH"
curl -L "${DOWNLOAD}" -o "${HOME}/.local/bin/catwalk" --retry 5
chmod +x "${HOME}/.local/bin/catwalk"
