@echo off
call delete_junk.bat
del *.synctex.gz
echo Deleting PDF too!
del *.pdf
echo Boom! Gone!
