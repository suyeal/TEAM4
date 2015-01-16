function emailCheck() {
	if (document.f.email.value == "") {
		alert('아이디를 입력하여 주십시오.');
		document.f.email.focus();
		return;
	}
	var url = "emailCheck.do?id=" + document.f.email.value;
	window.open(url, "_blank_1", "toolbar=no, menubar=no, scrollbars=yes, resizable=no, width=450, height=200");
}




