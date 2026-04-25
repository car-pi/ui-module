#!/bin/bash
echo "RUNNING ui-module/update.sh"
export MODULE_ROOT="$ROOT/modules/ui-module"

git submodule init
git submodule update --recursive
git submodule foreach "./update.sh || true"

$MODULE_ROOT/install/common/common.sh

echo "Update complete for ui-module/update.sh"
