@SETLOCAL
@IF NOT DEFINED NODE_PATH (
  @SET "NODE_PATH=G:\vue3_admin_code\vue3_admin_code\node_modules\.pnpm\vue-tsc@1.8.27_typescript@5.3.3\node_modules\vue-tsc\bin\node_modules;G:\vue3_admin_code\vue3_admin_code\node_modules\.pnpm\vue-tsc@1.8.27_typescript@5.3.3\node_modules\vue-tsc\node_modules;G:\vue3_admin_code\vue3_admin_code\node_modules\.pnpm\vue-tsc@1.8.27_typescript@5.3.3\node_modules;G:\vue3_admin_code\vue3_admin_code\node_modules\.pnpm\node_modules"
) ELSE (
  @SET "NODE_PATH=G:\vue3_admin_code\vue3_admin_code\node_modules\.pnpm\vue-tsc@1.8.27_typescript@5.3.3\node_modules\vue-tsc\bin\node_modules;G:\vue3_admin_code\vue3_admin_code\node_modules\.pnpm\vue-tsc@1.8.27_typescript@5.3.3\node_modules\vue-tsc\node_modules;G:\vue3_admin_code\vue3_admin_code\node_modules\.pnpm\vue-tsc@1.8.27_typescript@5.3.3\node_modules;G:\vue3_admin_code\vue3_admin_code\node_modules\.pnpm\node_modules;%NODE_PATH%"
)
@IF EXIST "%~dp0\node.exe" (
  "%~dp0\node.exe"  "%~dp0\..\vue-tsc\bin\vue-tsc.js" %*
) ELSE (
  @SET PATHEXT=%PATHEXT:;.JS;=;%
  node  "%~dp0\..\vue-tsc\bin\vue-tsc.js" %*
)
