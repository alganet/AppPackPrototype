var sh = new ActiveXObject("WScript.Shell");
var shortcut = sh.CreateShortcut(".\\AppPack-1.0-dev.lnk");
shortcut.IconLocation = sh.currentDirectory + "\\Contents\\Resources\\AppPack.ico";
shortcut.Save();
