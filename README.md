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

  1. Clone the repo
  2. Click the clickable icon
  	2a. AppPack-1.0-dev.lnk should be clickable on Windows.
  	2b. AppPack-1.0-dev.desktop should be clickable on Linux.
  	2c. AppPack-1.0-dev.app folder should be clickable on OS X 10.6 or higher.
  3. You should see a "Hello" displayed in HTML as a standalone app.

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
  	  /.AppPack.bat            # 15. Hidden main for Windows
  	  /.AppPack.ini            # 16. Specifies which portable folder will open
  	  /.AppPack.sh             # 17. Hidden executable main for Unixzes
  	  /AppPack-1.0-dev.desktop # 18. Executable launcher for FreeDesktop Linux
  	  /AppPack-1.0-dev.lnk     # 19. Launcher for Windowzes

