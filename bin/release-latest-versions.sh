#!/usr/bin/env bash
#
# Generate Dokan stubs from all the latest versions.
#

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(dirname "$SCRIPT_DIR")"

set -e

WC_JSON="$(wget -q -O- "https://api.wordpress.org/plugins/info/1.0/dokan-lite.json")"

for V in 3.11; do
    printf -v JQ_FILTER '."versions" | keys[] | select(test("^%s\\\\.%s\\\\.\\\\d+$"))' "${V%.*}" "${V#*.}"
    LATEST="$(jq -r "$JQ_FILTER" <<<"$WC_JSON" | sort -t "." -k 3 -g | tail -n 1)"
    if [ -z "$LATEST" ]; then
        echo "No version for ${V}!"
        continue
    fi

    echo "Releasing version ${LATEST} ..."

    if git -C "$ROOT_DIR" rev-parse "refs/tags/v${LATEST}" >/dev/null 2>&1; then
        echo "Tag exists!"
        continue
    fi

    git -C "$ROOT_DIR" status --ignored --short -- source/ | sed -n -e 's#^!! ##p' | xargs --no-run-if-empty -- rm -rf

    printf -v SED_EXP 's#\\("dokan-lite/dokan"\\): "[0-9]\\+\\.[0-9]\\+\\.[0-9]\\+"#\\1: "%s"#' "${LATEST}"
    sed -i -e "$SED_EXP" "$ROOT_DIR/source/composer.json"

    wget -P "$ROOT_DIR/source/" "https://downloads.wordpress.org/plugin/dokan-lite.${LATEST}.zip"
    unzip -q -d "$ROOT_DIR/source/" "$ROOT_DIR/source/dokan-lite."*.zip

    echo "Generating stubs ..."
    "$SCRIPT_DIR/generate.sh"

    git -C "$ROOT_DIR" commit --all -m "Generate stubs for Dokan ${LATEST}"
    git -C "$ROOT_DIR" tag "v${LATEST}"
done
