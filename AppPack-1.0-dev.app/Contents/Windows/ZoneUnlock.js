function loop(f, path) {
    var fe = new Enumerator(f.SubFolders);
    for (; !fe.atEnd(); fe.moveNext()) {
        loop(fe.item(), fso.BuildPath(path, fe.item().Name));
    }

    var fc=new Enumerator(f.files);
    for (; !fc.atEnd(); fc.moveNext()) {
        var fileName=fc.item().Name+':Zone.Identifier';
        try {
            f1 = fso.OpenTextFile(path + "\\" + fileName,2); // If the Zone Identifier does not exist ..
            total++;
            f1.Close();
        } catch(e) {

        }
    }
}

var shell = new ActiveXObject("WScript.Shell");
var fso   = new ActiveXObject("Scripting.FileSystemObject");
var total = 0;
var rf    = fso.GetFolder('.');
loop(rf, fso.GetAbsolutePathName('.'))
