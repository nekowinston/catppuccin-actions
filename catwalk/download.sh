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
curl -L "${DOWNLOAD}" -o "${GITHUB_ACTION_PATH}/catwalk" --retry 5
echo "${GITHUB_ACTION_PATH}" >>"$GITHUB_PATH"
chmod +x "${GITHUB_ACTION_PATH}/catwalk"
