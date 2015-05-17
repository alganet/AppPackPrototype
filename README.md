AppPack
=======

AppPack is (yet to be) a (proper) format to distribute cross-platform apps.

  - *Simple*: One zip file for each app. Extract and run.
  - *Portable*: Runs on Windows, OS X, Linux and many more.
  - *Compatible*: Pack shell, node.js, PHP and much more platforms.
  - *Lightweight*: AppPacks are ~50KB each plus your application.
  - *Robust*: Obsessive (automated) testing and documentation.

For Users
---------

Not yet.

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
  4. When changing versions, change them on:
    1. The .app folder
    2. The .desktop and .lnk shortcuts
    3. The .AppPack.ini file
  5. Window may be small on Linux (the size of the Hello world, or your app)
  6. Currently, only works on Linux which has Firefox (though Chromium can and will be supported).

Structure Description:

    /AppPack-1.0-dev.app       # 1. Reused OS X Bundle
      /Contents                # 2. Reused OS X Bundle Folder
      	/MacOS                 # 3. Required OS X Bundle Folder
      	  /AppPack             # 4. Required OS X Bundle Binary
      	  /AppPack.wflow       # 5. OS X Automator Workflow to open popups
      	/Portable              # 6. Portable Code! Yay
      	  /AppPack-1.0         # 7. AppPack private libraries
      	    /AppPack.html      # 8. A Hello World (for now)
      	    /AppPack.js        # 9. (yet to be) Portable JS Object
      	    /AppPack.sh        # 10. A launcher for Desktop Unixzes
      	    /AppPack.ini       # 11. (Yet to be) package identification
      	/Windows               # 12. Specific Windows Folder
      	  /AppPack.hta         # 13. Windows Native HyperText HTML Application
      	Info.plist             # 14. Required OS X Bundle Information
  	  /.AppPack.ini            # 15. Specifies which portable folder will open
  	  /.AppPack.sh             # 16. Hidden executable main for Unixzes
  	  /AppPack-1.0-dev.desktop # 17. Executable launcher for FreeDesktop Linux
  	  /AppPack-1.0-dev.lnk     # 18. Launcher for Windowzes

![yet to be a Mosai unusual project](https://avatars0.githubusercontent.com/u/5083441?v=3&s=48)
