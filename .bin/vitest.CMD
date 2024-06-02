@SETLOCAL
@IF NOT DEFINED NODE_PATH (
  @SET "NODE_PATH=G:\vue3_admin_code\vue3_admin_code\node_modules\.pnpm\vitest@1.4.0_@types+node@20.12.6_jsdom@24.0.0_less@4.2.0\node_modules\vitest\node_modules;G:\vue3_admin_code\vue3_admin_code\node_modules\.pnpm\vitest@1.4.0_@types+node@20.12.6_jsdom@24.0.0_less@4.2.0\node_modules;G:\vue3_admin_code\vue3_admin_code\node_modules\.pnpm\node_modules"
) ELSE (
  @SET "NODE_PATH=G:\vue3_admin_code\vue3_admin_code\node_modules\.pnpm\vitest@1.4.0_@types+node@20.12.6_jsdom@24.0.0_less@4.2.0\node_modules\vitest\node_modules;G:\vue3_admin_code\vue3_admin_code\node_modules\.pnpm\vitest@1.4.0_@types+node@20.12.6_jsdom@24.0.0_less@4.2.0\node_modules;G:\vue3_admin_code\vue3_admin_code\node_modules\.pnpm\node_modules;%NODE_PATH%"
)
@IF EXIST "%~dp0\node.exe" (
  "%~dp0\node.exe"  "%~dp0\..\vitest\vitest.mjs" %*
) ELSE (
  @SET PATHEXT=%PATHEXT:;.JS;=;%
  node  "%~dp0\..\vitest\vitest.mjs" %*
)
