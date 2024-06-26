#!/usr/bin/env pwsh
$basedir=Split-Path $MyInvocation.MyCommand.Definition -Parent

$exe=""
$pathsep=":"
$env_node_path=$env:NODE_PATH
$new_node_path="G:\vue3_admin_code\vue3_admin_code\node_modules\.pnpm\vue-tsc@1.8.27_typescript@5.3.3\node_modules\vue-tsc\bin\node_modules;G:\vue3_admin_code\vue3_admin_code\node_modules\.pnpm\vue-tsc@1.8.27_typescript@5.3.3\node_modules\vue-tsc\node_modules;G:\vue3_admin_code\vue3_admin_code\node_modules\.pnpm\vue-tsc@1.8.27_typescript@5.3.3\node_modules;G:\vue3_admin_code\vue3_admin_code\node_modules\.pnpm\node_modules"
if ($PSVersionTable.PSVersion -lt "6.0" -or $IsWindows) {
  # Fix case when both the Windows and Linux builds of Node
  # are installed in the same directory
  $exe=".exe"
  $pathsep=";"
} else {
  $new_node_path="/mnt/g/vue3_admin_code/vue3_admin_code/node_modules/.pnpm/vue-tsc@1.8.27_typescript@5.3.3/node_modules/vue-tsc/bin/node_modules:/mnt/g/vue3_admin_code/vue3_admin_code/node_modules/.pnpm/vue-tsc@1.8.27_typescript@5.3.3/node_modules/vue-tsc/node_modules:/mnt/g/vue3_admin_code/vue3_admin_code/node_modules/.pnpm/vue-tsc@1.8.27_typescript@5.3.3/node_modules:/mnt/g/vue3_admin_code/vue3_admin_code/node_modules/.pnpm/node_modules"
}
if ([string]::IsNullOrEmpty($env_node_path)) {
  $env:NODE_PATH=$new_node_path
} else {
  $env:NODE_PATH="$new_node_path$pathsep$env_node_path"
}

$ret=0
if (Test-Path "$basedir/node$exe") {
  # Support pipeline input
  if ($MyInvocation.ExpectingInput) {
    $input | & "$basedir/node$exe"  "$basedir/../vue-tsc/bin/vue-tsc.js" $args
  } else {
    & "$basedir/node$exe"  "$basedir/../vue-tsc/bin/vue-tsc.js" $args
  }
  $ret=$LASTEXITCODE
} else {
  # Support pipeline input
  if ($MyInvocation.ExpectingInput) {
    $input | & "node$exe"  "$basedir/../vue-tsc/bin/vue-tsc.js" $args
  } else {
    & "node$exe"  "$basedir/../vue-tsc/bin/vue-tsc.js" $args
  }
  $ret=$LASTEXITCODE
}
$env:NODE_PATH=$env_node_path
exit $ret
