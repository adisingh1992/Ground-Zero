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

function forgot(){
    var user = prompt("Enter Your UserName");
    var email = prompt("Enter Your Email To Verify");
		var pass = prompt("Enter New Password");
		var cpass = prompt("Confirm New Password");
		if(pass === cpass){
				forgot_process(user, email, pass);
		}
		else {
				alert("Passwords Do Not Match..!!");
		}
}

function forgot_process(user, email, pass){
		var xhttp = new XMLHttpRequest();
		xhttp.onreadystatechange = function(){
				if(xhttp.readyState === 4 && xhttp.status === 200){
						alert(xhttp.responseText);
				}
		};
		xhttp.open("GET", "forgot.jsp?uname="+user+"&email="+email+"&pass="+pass, true);
		xhttp.send();
}
