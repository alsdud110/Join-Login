function joinForm(joinForm){
	
	if(!joinForm.id.value){
		alert("이름을 입력하세요.");
		joinForm.id.focus();
		return false;
	}
	
	if(!joinForm.passwd.value){
		alert("패스워드를 입력하세요.");
		joinForm.passwd.focus();
		return false;
	}
	
	if(!joinForm.name.value){
		alert("이름을 입력하세요.");
		joinForm.name.focus();
		return false;
	}
	if(!joinForm.email.value){
		alert("이메일을 입력하세요.");
		joinForm.email.focus();
		return false;
	}
	if(!joinForm.address.value){
		alert("주소를 입력하세요.");
		joinForm.address.focus();
		return false;
	}
	
	joinForm.action = "joinOk.jsp";
	joinForm.submit();
}