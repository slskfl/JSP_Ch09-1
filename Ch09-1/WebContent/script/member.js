function joinCheck(){
	 var input=document.frm;
	 if(!input.name.value){
	      alert("이름 입력하세요.");
	      input.name.focus();
	      return false;
	   
	   }else if(!input.userid.value){
	      alert("아이디를 입력하세요.");
	      input.userid.focus();
	      return false;
	   }else if(input.userid.value.length<4){
	      alert("아이디는 4글자 이상 입력해주세요.");
	      input.userid.focus();
	      return false;
	   } else if(!input.pwd.value){
		   alert("암호는 반드시 입력해야합니다.");
		   input.pwd.focus();
		   return false; 
	   } else if(input.pwd.value != input.pwd_check.value ){
		   alert("암호가 일지하지 않습니다.");
		   input.pwd.focus();
		   return false; 
	   }
	 if(input.reid.value.length == 0 ){
		   alert("아이디 중복 체크를 해야합니다.");
		   input.userid.focus();
		   return false; 
	   } 
	   return true;
	   
	   /*if(document.frm.name.value.length == 0){ 
		   alert("이름을 입력하세요."); 
		   document.frm.name.focus(); 
		   return false; 
	   }*/
}



function idCheck(){
	if(document.frm.userid.value==""){
		alert("아이디를 입력해주세요.")
		document.frm.userid.focus();
		return;
	}
	var url="idCheck.do?userid="+document.frm.userid.value;
	//alert(url);
	window.open(url, "idcheck", "width=450, height=200");
}

function idOK(){
	opener.frm.userid.value = document.frm.userid.value;
	opener.frm.reid.value = document.frm.userid.value;
	self.close();
}

function loginCheck(){
	if(document.frm.userid.value.length == 0){ 
		alert("아이디를 입력해 주세요."); 
		document.frm.userid.focus(); 
		return false; 
	}
	if(document.frm.pwd.value.length == 0){ 
		alert("암호를 입력해 주세요."); 
		document.frm.pwd.focus(); 
		return false; 
	}
	
	return true;
}

















