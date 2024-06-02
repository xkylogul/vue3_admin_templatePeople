@SETLOCAL
@IF NOT DEFINED NODE_PATH (
  @SET "NODE_PATH=G:\vue3_admin_code\vue3_admin_code\node_modules\.pnpm\npm-run-all2@6.1.2\node_modules\npm-run-all2\bin\npm-run-all\node_modules;G:\vue3_admin_code\vue3_admin_code\node_modules\.pnpm\npm-run-all2@6.1.2\node_modules\npm-run-all2\bin\node_modules;G:\vue3_admin_code\vue3_admin_code\node_modules\.pnpm\npm-run-all2@6.1.2\node_modules\npm-run-all2\node_modules;G:\vue3_admin_code\vue3_admin_code\node_modules\.pnpm\npm-run-all2@6.1.2\node_modules;G:\vue3_admin_code\vue3_admin_code\node_modules\.pnpm\node_modules"
) ELSE (
  @SET "NODE_PATH=G:\vue3_admin_code\vue3_admin_code\node_modules\.pnpm\npm-run-all2@6.1.2\node_modules\npm-run-all2\bin\npm-run-all\node_modules;G:\vue3_admin_code\vue3_admin_code\node_modules\.pnpm\npm-run-all2@6.1.2\node_modules\npm-run-all2\bin\node_modules;G:\vue3_admin_code\vue3_admin_code\node_modules\.pnpm\npm-run-all2@6.1.2\node_modules\npm-run-all2\node_modules;G:\vue3_admin_code\vue3_admin_code\node_modules\.pnpm\npm-run-all2@6.1.2\node_modules;G:\vue3_admin_code\vue3_admin_code\node_modules\.pnpm\node_modules;%NODE_PATH%"
)
@IF EXIST "%~dp0\node.exe" (
  "%~dp0\node.exe"  "%~dp0\..\npm-run-all2\bin\npm-run-all\index.js" %*
) ELSE (
  @SET PATHEXT=%PATHEXT:;.JS;=;%
  node  "%~dp0\..\npm-run-all2\bin\npm-run-all\index.js" %*
)
