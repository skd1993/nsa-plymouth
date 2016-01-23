##nsa-plymouth##

A cool NSA-style plymouth bootsplash for Ubuntu.

##Installation Instructions##

The theme can be easily installed by running the **install.sh** file.
Alternatively it can be done manually too by using the following commands.


####Manual installation####

* make a directory in plymouth directory as stated below where the theme will be stored
`mkdir /lib/plymouth/themes/my-theme`

* copy the directory holding the theme files to the new place
`cp --recursive /path/to/my-theme /lib/plymouth/themes/my-theme`

* set it as default boot splash theme
`sudo ln -sf /lib/plymouth/themes/my-theme/my-theme.plymouth /etc/alternatives/default.plymouth`

In order to get back to the system default theme:
`sudo update-alternatives --config default.plymouth` and select the default theme you want, then `sudo update-initramfs -u`

##Previewing the theme##

Simply run the **preview.sh** file. It will install **plymouth-x11** if required. Then follow the instructions.

####Current Preview####
![](http://imgur.com/pyqrmvO.png)

####Animated Preview####
[animated preview nsa-plymouth](http://gph.is/1IzkUZI)

##LICENSE##
Copyright (c) 2016 SHOBHIT
Permission is hereby granted, free of charge, to any person obtaining copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
