function msub() {
	if (document.f.name.value.length == 0) {
		alert("성함을 적어 주십시오!");
		document.f.name.focus();
		return false;
	}
	if (document.f.gid.value.length == 0) {
		alert("id를 적어 주십시오!");
		document.f.gid.focus();
		return false;
	}

	if ((document.f.gid.value.length < 4) || (document.f.gid.value.length > 8)) {
		alert("4자이상 8자이하로 적어주세요.!");
		document.f.gid.focus();
		return false;
	}

	if (document.f.gpwd.value.length == 0) {
		alert("패스워드를 적어 주십시오!");
		document.f.gpwd.focus();
		return false;
	}

	if ((document.f.gpwd.value.length < 4)
			|| (document.f.gpwd.value.length > 8)) {
		alert("4자이상 8자이하로 적어주세요.!");
		document.f.gpwd.focus();
		return false;
	}

	if (document.f.gpwd2.length == 0) {
		alert("패스워드를 한번 더 적어주세요!");
		document.f.gpwd2.focus();
		return false;
	}

	if ((document.f.gpwd.value) != (document.f.gpwd2.value)) {
		alert("패스워드가 일치하지 않습니다.!");
		document.f.gpwd.focus();
		return false;
	}

	if (document.f.cnum.value.length < 14) {
		alert("주민번호가 올바르지 않습니다.");
		document.f.cnum.focus();
		return false;
	}

	if (document.f.phone.value.length < 13) {
		alert("전화번호를 올바르게 적어주세요.");
		document.f.phone.focus();
		return false;
	}

	if (document.f.addr.value.length == 0) {
		alert("주소가 올바르지 않습니다.");
		document.f.addr.focus();
		return false;
	}

	if (document.f.email.value.length == 0) {
		alert("email 주소가 올바르지 않습니다.");
		document.f.email.focus();
		return false;
	}
	if (document.f.reid.value.length == 0) {
		alert("중복 체크를 하지 않았습니다.");
		document.f.gid.focus();
		return false;
	}

	return true;
}

function idCheck() {
	if (document.f.gid.value == "") {
		alert('아이디를 입력하여 주십시오.');
		document.f.gid.focus();
		return;
	}
	var url = "idCheck.do?id=" + document.f.gid.value;
	window
			.open(url, "_blank_1",
					"toolbar=no, menubar=no, scrollbars=yes, resizable=no, width=450, height=200");
}
