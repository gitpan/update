set what=%1
set extension=Tk

if "%what%" = "" goto all
if "%what%" = "all" goto all
if "%what%" = "test" goto test
if "%what%" = "install" goto install
if "%what%" = "uninstall" goto uninstall

echo Do not know what to do for "%what%"
exit 1

:all
echo Nothing to do for "all"
goto end

:test
perl -Mblib basic_demo
perl -Mblib demos/widget
goto end

:install
perl -MExtUtils::Install -e install_default %extension%
goto end

:uninstall
perl do_uninst
:end
