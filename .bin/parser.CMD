@SETLOCAL
@IF NOT DEFINED NODE_PATH (
  @SET "NODE_PATH=G:\vue3_admin_code\vue3_admin_code\node_modules\@babel\parser\bin\node_modules;G:\vue3_admin_code\vue3_admin_code\node_modules\@babel\parser\node_modules;G:\vue3_admin_code\vue3_admin_code\node_modules\@babel\node_modules;G:\vue3_admin_code\vue3_admin_code\node_modules;G:\vue3_admin_code\node_modules;G:\node_modules;G:\vue3_admin_code\vue3_admin_code\node_modules\.pnpm\node_modules"
) ELSE (
  @SET "NODE_PATH=G:\vue3_admin_code\vue3_admin_code\node_modules\@babel\parser\bin\node_modules;G:\vue3_admin_code\vue3_admin_code\node_modules\@babel\parser\node_modules;G:\vue3_admin_code\vue3_admin_code\node_modules\@babel\node_modules;G:\vue3_admin_code\vue3_admin_code\node_modules;G:\vue3_admin_code\node_modules;G:\node_modules;G:\vue3_admin_code\vue3_admin_code\node_modules\.pnpm\node_modules;%NODE_PATH%"
)
@IF EXIST "%~dp0\node.exe" (
  "%~dp0\node.exe"  "%~dp0\..\@babel\parser\bin\babel-parser.js" %*
) ELSE (
  @SET PATHEXT=%PATHEXT:;.JS;=;%
  node  "%~dp0\..\@babel\parser\bin\babel-parser.js" %*
)
