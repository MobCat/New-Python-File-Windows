# New Python file for Windows
Adds new python file to your windows context menu.<br>
Right now only tested on windows 7 and 10.<br>
Your kinda on your own for win 11, sorry.<br>
![newpy](https://user-images.githubusercontent.com/26048525/158840171-f29c4d41-eb67-46ab-a1b9-8969e47fd7b3.jpg)

## Why?
Well for some reason when you install python they don't add a new context menu for this. Or even give you an option.<br>
And I found it super annoying to make a new text file and rename the extension any time I wanted a new python script. Soo lets make our own context menu then.<br><br>

## How to install
1. Download the `Install.bat`, `Uninstall.bat` and `newpy.py` files from this repository to a single folder somewhere.<br>
2. Edit the `newpy.py` script with anything you want. This is the new file that will be created any time you click the new file context menu.<br>
So you can put any info you like in there that your going to always add to a new script like the build environment or user info, anything you want really.<br>
The defult script is just setup for the build environment of python 3.8.10 so you may want to change that at least.<br>
![newpy](https://user-images.githubusercontent.com/26048525/158842881-40707903-18de-46e1-a4ff-18bdf17b0a8f.jpg)<br>
Also yes, you can just remove all text from this script and save it to just make a new blank file with no fluf.<br>
Ok now we got some weird windows things to get around, I'll see If I can clean this up at a later point. But for now "it just works".<br>
3. Run `Install.bat` normally to copy the new python template to your python "program files" folder then press any key to close the window.<br>
4. Now run `Install.bat` as administrator. It will setup the required registry file we need for our new context menu. Then press any key to close the window again.<br>
Now you should have a make new python file in your windows context menu.<br><br>

## How to uninstall
1. Run the `Uninstall.bat` as administrator and it will remove the new file template and reg edit all on it's own, simple enough.<br>
As this script is independent of Python, anytime you update or uninstall python itself you will need to uninstall this script too.<br>

## Extra fluf
I did have this script install directly into your current python "program files" folder and that's really where it should live but you had to edit the bat file by hand with your current python version as there was no way for the bat script to find it, So it wasn't very user friendly.<br>
So now it just dumps the new file in the base python program files, not the python ver program files. The script still has code comments for this so you can change it back if you want.<br>
The `newfile.reg` is a normal windows registry file for also adding windows new file context menu items and is set up for our new python thing too. However it does not copy the new python template, just adds the registry file. I found it nicer to just shove registry info directly into reg.exe with a bat file as I can also copy the template at the same time.<br>
The only down sides to this is you have to run the bat files as admin as reg.exe is a system32 file. But then also run it normally as if you run it as admin it auto cd's to system32 so has no idea where you ran the script from so it needs an absolute system path for copying the python template.<br>
I could also get around this maybe by telling people to download the files to a special folder on c: drive so I can include an absolute system path in the script.. idk... for now just running it twice works I guess..
