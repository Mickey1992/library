function checkselect(object) {
	if (object.ID.value=="") {
		alert("用户名不能为空！");
 
		return false;
	} else if (object.password.value=="") {
		alert("密码不能为空！");
		
		return false;
	} else {
		return true;
	}
}

function exit(object){
	alert("你已经成功退出系统");
	session=object.getSession();
	session.removeAttribute("ID");
	session.removeAttribute("password");
}