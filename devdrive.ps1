md d:\packages\npm
setx /M npm_config_cache D:\packages\npm
xcopy  %AppData%\npm-cache d:\packages\cargo /e /s
xcopy  %LocalAppData%\npm-cache d:\packages\cargo /e /s

md d:\packages\pip
setx /M PIP_CACHE_DIR D:\packages\pip
xcopy  %LocalAppData%\pip\Cache d:\packages\pip /e /s

md d:\packages\nuget
setx /M NUGET_PACKAGES D:\packages\nuget
xcopy  %USERPROFILE%\.nuget\packages d:\packages\nuget /e /s

