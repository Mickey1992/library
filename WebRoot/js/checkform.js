function checkselect(object) {
	if (object.ID.value=="") {
		alert("�û�������Ϊ�գ�");
 
		return false;
	} else if (object.password.value=="") {
		alert("���벻��Ϊ�գ�");
		
		return false;
	} else {
		return true;
	}
}

function exit(object){
	alert("���Ѿ��ɹ��˳�ϵͳ");
	session=object.getSession();
	session.removeAttribute("ID");
	session.removeAttribute("password");
}