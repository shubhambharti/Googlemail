// function showpwd() {
//   var x = document.getElementById("pwd");
//   var y = document.getElementById("c_pwd");
//   if (x.type === "password" || y.type === "password") {
//     x.type = "text";
//     y.type = "text";
//   } else {
//     x.type = "password";
//     y.type = "password";
//   }
// }
// function showpswd() {
//   var x = document.getElementById("pwd");
//   if (x.type === "password") {
//     x.type = "text";
//   } else {
//     x.type = "password";
//   }
// }

 
// function formvalidate(form) {
//   password1 = form.pwd.value;
//   password2 = form.c_pwd.value;
//   // If password not entered
//   if (password1 == '')
//     alert ("Please enter Password");
//   // If confirm password not entered
//   else if (password2 == '')
//     alert ("Please enter confirm password");
    
//   // If Not same return False.    
//   else if (password1 != password2) {
//     alert ("\nPassword did not match: Please try again...");
//     return false;
//   }
// }

/*
function checkEmailAvailability() {
  var Email = document.getElementById("Email").value;
  var xhr = new XMLHttpRequest();
  xhr.open("GET", "CheckEmailServlet?email=" + Email, true);
  xhr.onreadystatechange = function() {
    if (xhr.readyState == 4 && xhr.status == 200) {
      var response = xhr.responseText;
      var emailStatus = document.getElementById("email-status");
      if (response == "available") {
        emailStatus.innerHTML = "Email is available";
      } else if (response == "taken") {
        emailStatus.innerHTML = "Email is already in use";
      }
    }
  };
  xhr.send();
}

document.getElementById("Email").addEventListener("blur", checkEmailAvailability);
*/
















const email = document.getElementById("email");
const pass = document.getElementById("password");
const c_pass = document.getElementById("c_password");
const passPattern =/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/;
	function checkData(){
	
		const emailvalue=email.value.trim();
		const passvalue=pass.value.trim();
		const c_passvalue=c_pass.value.trim();
		 
		if(emailvalue==""){
			setError(email,"E-mail cannot be empty");
		}
		else{
			setSuccess(email);
		}
		
		if(passvalue==""){
			setError(pass,"Password cannot be empty");
		}
    else if (!pass.value.match(passPattern)) {
      setError(pass,"Password must contain at least 8 characters, including one uppercase letter,one lowercase letter, one digit, and one special character");
    }
		else{
			setSuccess(pass);
		}
		if(c_passvalue==""){
			setError(c_pass,"Password cannot be empty");
		}
    else if (!c_pass.value.match(passPattern)) {
      setError(c_pass,"Password must contain at least 8 characters, including one uppercase letter,one lowercase letter, one digit, and one special character");
    }
		else{
			setSuccess(c_pass);
		}
		
	 }
	function setError(em,msg){
		const parent = em.parentElement;
		parent.className="input-field error";
		const span = parent.querySelector("span");
		const fa=parent.querySelector(".fa");
		span.innerText=msg;
		fa.className="fa fa-exclamation-triangle";
	}
	function setSuccess(em){
		const parent = em.parentElement;
		parent.className="input-field success";
		const fa=parent.querySelector(".fa");
		fa.className="fa fa-check-circle";
	}
	
	function showpassword(){
		var a=document.getElementById("password");
			if(a.type == "password")
			{
				a.type="text";
			}
			else{
				a.type="password";
			}
	}

// compose

