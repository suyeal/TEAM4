function emailCheck() {
	if (document.f.email.value == "") {
		alert('���̵� �Է��Ͽ� �ֽʽÿ�.');
		document.f.email.focus();
		return;
	}
	var url = "emailCheck.do?id=" + document.f.email.value;
	window.open(url, "_blank_1", "toolbar=no, menubar=no, scrollbars=yes, resizable=no, width=450, height=200");
}




