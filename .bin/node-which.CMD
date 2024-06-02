@SETLOCAL
@IF NOT DEFINED NODE_PATH (
  @SET "NODE_PATH=G:\vue3_admin_code\vue3_admin_code\node_modules\which\bin\node_modules;G:\vue3_admin_code\vue3_admin_code\node_modules\which\node_modules;G:\vue3_admin_code\vue3_admin_code\node_modules;G:\vue3_admin_code\node_modules;G:\node_modules;G:\vue3_admin_code\vue3_admin_code\node_modules\.pnpm\node_modules"
) ELSE (
  @SET "NODE_PATH=G:\vue3_admin_code\vue3_admin_code\node_modules\which\bin\node_modules;G:\vue3_admin_code\vue3_admin_code\node_modules\which\node_modules;G:\vue3_admin_code\vue3_admin_code\node_modules;G:\vue3_admin_code\node_modules;G:\node_modules;G:\vue3_admin_code\vue3_admin_code\node_modules\.pnpm\node_modules;%NODE_PATH%"
)
@IF EXIST "%~dp0\node.exe" (
  "%~dp0\node.exe"  "%~dp0\..\which\bin\node-which" %*
) ELSE (
  @SET PATHEXT=%PATHEXT:;.JS;=;%
  node  "%~dp0\..\which\bin\node-which" %*
)
