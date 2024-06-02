@SETLOCAL
@IF NOT DEFINED NODE_PATH (
  @SET "NODE_PATH=G:\vue3_admin_code\vue3_admin_code\node_modules\rollup\dist\bin\node_modules;G:\vue3_admin_code\vue3_admin_code\node_modules\rollup\dist\node_modules;G:\vue3_admin_code\vue3_admin_code\node_modules\rollup\node_modules;G:\vue3_admin_code\vue3_admin_code\node_modules;G:\vue3_admin_code\node_modules;G:\node_modules;G:\vue3_admin_code\vue3_admin_code\node_modules\.pnpm\node_modules"
) ELSE (
  @SET "NODE_PATH=G:\vue3_admin_code\vue3_admin_code\node_modules\rollup\dist\bin\node_modules;G:\vue3_admin_code\vue3_admin_code\node_modules\rollup\dist\node_modules;G:\vue3_admin_code\vue3_admin_code\node_modules\rollup\node_modules;G:\vue3_admin_code\vue3_admin_code\node_modules;G:\vue3_admin_code\node_modules;G:\node_modules;G:\vue3_admin_code\vue3_admin_code\node_modules\.pnpm\node_modules;%NODE_PATH%"
)
@IF EXIST "%~dp0\node.exe" (
  "%~dp0\node.exe"  "%~dp0\..\rollup\dist\bin\rollup" %*
) ELSE (
  @SET PATHEXT=%PATHEXT:;.JS;=;%
  node  "%~dp0\..\rollup\dist\bin\rollup" %*
)
