(function (root, target) {

	target(root);

})(this, function () {
	this.AppPack = function () {

	    var FileObject = new ActiveXObject('Scripting.FileSystemObject'),
	        IniStream  = FileObject.OpenTextFile(".AppPack.ini", 1, false);

	    while( ! IniStream.AtEndOfStream) {
	        document.body.innerHTML += IniStream.ReadLine() + '<br/>';
	    }

	    IniStream.Close();
	}
});
