AppPack
=======

AppPack is (a prototype for) a format to distribute cross-platform apps.

[Check the screenshots!](http://imgur.com/a/xISk0)

  - *Simple*: One zip file for each app. Extract and run.
  - *Portable*: Runs on Windows, OS X, Linux and many more.
  - *Compatible*: Pack shell, node.js, PHP and much more platforms.
  - *Lightweight*: AppPacks are ~50KB each plus your application.
  - *Robust*: (Future) Obsessive automated testing and documentation.

For Users
---------

  - *Icons*: Tested on Ubuntu, OS X and Windows.

For Developers
--------------

Checking if multi-platform works:

  1. Clone the repo
  2. Click the clickable icon
  	- AppPack-1.0-dev.lnk should be clickable on Windows.
  	- AppPack-1.0-dev.desktop should be clickable on Linux.
  	- AppPack-1.0-dev.app folder should be clickable on OS X 10.6 or higher.
  3. You should see a "Hello" displayed in HTML as a standalone app.

Troubleshooting:

  1. /Contents/MacOS/AppPack must be executable
  2. /.AppPack.sh must be executable
  3. /AppPack-1.0-dev.desktop must be executable

Structure Description:

    /AppPack-1.0-dev.app       # 1. Reused OS X Bundle
      /Contents                # 2. Reused OS X Bundle Folder
      	/MacOS                 # 3. Required OS X Bundle Folder
      	  /AppPack             # 4. Required OS X Bundle Binary
      	  /AppPack.wflow       # 5. OS X Automator Workflow to open popups
      	/Portable              # 6. Portable Code! Yay
      	  /AppPack             # 7. AppPack private libraries
      	    /AppPack.html      # 8. A Hello World (for now)
      	    /AppPack.js        # 9. (yet to be) Portable JS Object
      	    /AppPack.sh        # 10. A launcher for Desktop Unixzes
      	    /AppPack.ini       # 11. (Yet to be) package identification
      	/Windows               # 12. Specific Windows Folder
          /AppPack.hta         # 13. Windows Native HyperText HTML Application
          /AppPack.wsf         # 14. Windows Script File bootup
      	Info.plist             # 15. Required OS X Bundle Information
      /.AppPack.bat            # 16. Hidden executable main for Winzes
      /.AppPack.ini            # 17. Specifies which portable folder will open
  	  /.AppPack.sh             # 18. Hidden executable main for Unixzes
  	  /AppPack-1.0-dev.desktop # 19. Executable launcher for FreeDesktop Linux
  	  /AppPack-1.0-dev.lnk     # 19. Launcher for Windowzes

![yet to be a Mosai unusual project](https://avatars0.githubusercontent.com/u/5083441?v=3&s=48)
