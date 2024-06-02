@SETLOCAL
@IF NOT DEFINED NODE_PATH (
  @SET "NODE_PATH=G:\vue3_admin_code\vue3_admin_code\node_modules\.pnpm\eslint@8.57.0\node_modules\eslint\bin\node_modules;G:\vue3_admin_code\vue3_admin_code\node_modules\.pnpm\eslint@8.57.0\node_modules\eslint\node_modules;G:\vue3_admin_code\vue3_admin_code\node_modules\.pnpm\eslint@8.57.0\node_modules;G:\vue3_admin_code\vue3_admin_code\node_modules\.pnpm\node_modules"
) ELSE (
  @SET "NODE_PATH=G:\vue3_admin_code\vue3_admin_code\node_modules\.pnpm\eslint@8.57.0\node_modules\eslint\bin\node_modules;G:\vue3_admin_code\vue3_admin_code\node_modules\.pnpm\eslint@8.57.0\node_modules\eslint\node_modules;G:\vue3_admin_code\vue3_admin_code\node_modules\.pnpm\eslint@8.57.0\node_modules;G:\vue3_admin_code\vue3_admin_code\node_modules\.pnpm\node_modules;%NODE_PATH%"
)
@IF EXIST "%~dp0\node.exe" (
  "%~dp0\node.exe"  "%~dp0\..\eslint\bin\eslint.js" %*
) ELSE (
  @SET PATHEXT=%PATHEXT:;.JS;=;%
  node  "%~dp0\..\eslint\bin\eslint.js" %*
)
