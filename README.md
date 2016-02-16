miui7_patchrom_PANTECH_IM-A860
===========

Get Android SDK
----------------

In order to build patchrom project, you must have android sdk installed.(http://developer.android.com/sdk/installing.html)

And add the sdk tools and platform-tools to PATH.

$ vim .bashrc

$ export PATH=$PATH:/home/xxx/android-sdk/tools:/home/xxx/anroid-sdk/platform-tools

Getting Started
---------------

To get started with MiCode/patchrom, you'll need to get
familiar with [Git and Repo](http://source.android.com/download/using-repo).

To initialize your local repository using the patchrom trees, use a command like this:

$ mkdir patchrom

$ cd patchrom

$ repo init -u git://github.com/MiCode/patchrom.git -b miui-7 -m android-4.4.4.xml

Then to sync up:

$ repo sync

$ git clone https://github.com/garyyiu2015/miui7_patchrom_PANTECH_IM-A860.git pantech

Build
--------
$ . build/envsetup.sh && cd pantech

$ make fullota

And then look at out/fullota.zip,it is the MIUI ROM

Now you can get your own miui ROM, enjoy it!

感谢JellyCandy一直以来带我玩miui

感谢x-s， wuxianlin的开源代码

感谢MIUI patchrom 开源项目

