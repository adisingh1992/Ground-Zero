function user(){
	window.location.href="login.jsp";
}

function admin(){
	window.location.href="admin_login.jsp";
}

function register(){
	window.location.href="register.jsp";
}

function validateform(){
	var upass=document.getElementById("upass").value;
	var cpass=document.getElementById("cpass").value;
	var tnc=document.getElementById("tnc");
	if(upass !== cpass){
		alert("Passwords Do Not Match");
		return false;
	}
	if(!tnc.checked){
		alert("Please Accept Terms And Conditions Before Proceeding");
		return false;
	}
}

function show_hide1(){
    document.getElementById("easy").style.display = "block";
    document.getElementById("inter").style.display = "none";
    document.getElementById("expert").style.display = "none";
}

function show_hide2(){
    document.getElementById("easy").style.display = "none";
    document.getElementById("inter").style.display = "block";
    document.getElementById("expert").style.display = "none";
}

function show_hide3(){
    document.getElementById("easy").style.display = "none";
    document.getElementById("inter").style.display = "none";
    document.getElementById("expert").style.display = "block";
}