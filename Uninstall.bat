::MobCat's add new py file to context menu script thingy
::This should remove the new file context menu thingy we added

::Remove newpy.py to python 3.8.x folder.
::DEL "C:\Users\%username%\AppData\Local\Programs\Python\Python38\newpy.py"
::Lazy "universal" remove
DEL "C:\Users\%username%\AppData\Local\Programs\Python\newpy.py" /F /Q

::Remove reg key
Reg.exe delete "HKCR\.py\ShellNew" /v "FileName" /f

echo done.
pause