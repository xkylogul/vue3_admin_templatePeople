#!/usr/bin/env pwsh
$basedir=Split-Path $MyInvocation.MyCommand.Definition -Parent

$exe=""
$pathsep=":"
$env_node_path=$env:NODE_PATH
$new_node_path="G:\vue3_admin_code\vue3_admin_code\node_modules\.pnpm\typescript@5.3.3\node_modules\typescript\bin\node_modules;G:\vue3_admin_code\vue3_admin_code\node_modules\.pnpm\typescript@5.3.3\node_modules\typescript\node_modules;G:\vue3_admin_code\vue3_admin_code\node_modules\.pnpm\typescript@5.3.3\node_modules;G:\vue3_admin_code\vue3_admin_code\node_modules\.pnpm\node_modules"
if ($PSVersionTable.PSVersion -lt "6.0" -or $IsWindows) {
  # Fix case when both the Windows and Linux builds of Node
  # are installed in the same directory
  $exe=".exe"
  $pathsep=";"
} else {
  $new_node_path="/mnt/g/vue3_admin_code/vue3_admin_code/node_modules/.pnpm/typescript@5.3.3/node_modules/typescript/bin/node_modules:/mnt/g/vue3_admin_code/vue3_admin_code/node_modules/.pnpm/typescript@5.3.3/node_modules/typescript/node_modules:/mnt/g/vue3_admin_code/vue3_admin_code/node_modules/.pnpm/typescript@5.3.3/node_modules:/mnt/g/vue3_admin_code/vue3_admin_code/node_modules/.pnpm/node_modules"
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
    $input | & "$basedir/node$exe"  "$basedir/../typescript/bin/tsserver" $args
  } else {
    & "$basedir/node$exe"  "$basedir/../typescript/bin/tsserver" $args
  }
  $ret=$LASTEXITCODE
} else {
  # Support pipeline input
  if ($MyInvocation.ExpectingInput) {
    $input | & "node$exe"  "$basedir/../typescript/bin/tsserver" $args
  } else {
    & "node$exe"  "$basedir/../typescript/bin/tsserver" $args
  }
  $ret=$LASTEXITCODE
}
$env:NODE_PATH=$env_node_path
exit $ret