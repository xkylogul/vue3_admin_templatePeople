@SETLOCAL
@IF NOT DEFINED NODE_PATH (
  @SET "NODE_PATH=G:\vue3_admin_code\vue3_admin_code\node_modules\.pnpm\vite@5.2.8_@types+node@20.12.6_less@4.2.0\node_modules\vite\bin\node_modules;G:\vue3_admin_code\vue3_admin_code\node_modules\.pnpm\vite@5.2.8_@types+node@20.12.6_less@4.2.0\node_modules\vite\node_modules;G:\vue3_admin_code\vue3_admin_code\node_modules\.pnpm\vite@5.2.8_@types+node@20.12.6_less@4.2.0\node_modules;G:\vue3_admin_code\vue3_admin_code\node_modules\.pnpm\node_modules"
) ELSE (
  @SET "NODE_PATH=G:\vue3_admin_code\vue3_admin_code\node_modules\.pnpm\vite@5.2.8_@types+node@20.12.6_less@4.2.0\node_modules\vite\bin\node_modules;G:\vue3_admin_code\vue3_admin_code\node_modules\.pnpm\vite@5.2.8_@types+node@20.12.6_less@4.2.0\node_modules\vite\node_modules;G:\vue3_admin_code\vue3_admin_code\node_modules\.pnpm\vite@5.2.8_@types+node@20.12.6_less@4.2.0\node_modules;G:\vue3_admin_code\vue3_admin_code\node_modules\.pnpm\node_modules;%NODE_PATH%"
)
@IF EXIST "%~dp0\node.exe" (
  "%~dp0\node.exe"  "%~dp0\..\vite\bin\vite.js" %*
) ELSE (
  @SET PATHEXT=%PATHEXT:;.JS;=;%
  node  "%~dp0\..\vite\bin\vite.js" %*
)
