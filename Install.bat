::MobCat's add new py file to context menu script thingy
::Made for python 3.8.10 edit to your own needs.

::Copy newpy.py to python 3.8.x folder.
::COPY newpy.py "C:\Users\%username%\AppData\Local\Programs\Python\Python38\newpy.py"
::Lazy "universal" copy
COPY newpy.py "C:\Users\%username%\AppData\Local\Programs\Python\newpy.py"

::Install reg key
::Reg.exe add "HKCR\.py\ShellNew" /v "FileName" /t REG_SZ /d "C:\Users\%username%\AppData\Local\Programs\Python\Python38\newpy.py" /f
Reg.exe add "HKCR\.py\ShellNew" /v "FileName" /t REG_SZ /d "C:\Users\%username%\AppData\Local\Programs\Python\newpy.py" /f

echo done.
pause