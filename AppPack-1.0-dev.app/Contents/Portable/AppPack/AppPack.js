(function (root, target) {

    target(root);

})(this, function () {

    "use strict";

    this.AppPack = function () {};

    this.AppPack.prototype.boot = function () {

        function RemoveZoneIdentifier(f, path, fs) {
            var SubFolders = new Enumerator(f.SubFolders);
            var SubFiles   = new Enumerator(f.files);

            for (; !SubFolders.atEnd(); SubFolders.moveNext()) {
                RemoveZoneIdentifier(
                    SubFolders.item(),
                    fs.BuildPath(path, SubFolders.item().Name),
                    fs
                );
            }

            for (; !SubFiles.atEnd(); SubFiles.moveNext()) {
                try {
                    var FileStream = fs.OpenTextFile(
                        path + "\\" + SubFiles.item().Name+':Zone.Identifier',
                        2
                    );
                    FileStream.Close();
                } catch(e) {

                }
            }
        }

        var FileSystem        = new ActiveXObject("Scripting.FileSystemObject");
        var Shell             = new ActiveXObject("WScript.Shell");
        var Shortcut          = Shell.CreateShortcut(".\\AppPack-1.0-dev.lnk");
        Shortcut.IconLocation = Shell.currentDirectory + "\\Contents\\Resources\\AppPack.ico";

        Shortcut.Save();

        RemoveZoneIdentifier(
            FileSystem.GetFolder('.'),
            FileSystem.GetAbsolutePathName('.'),
            FileSystem
        );

        Shell.Run(
            "mshta " +
            Shell.currentDirectory +
            "\\Contents\\Windows\\AppPack.hta " +
            Shell.currentDirectory +
            "\\Contents\\Portable\\AppPack\\AppPack.html"
        );
    };
});
