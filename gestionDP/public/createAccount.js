const btn = document.getElementById("button");

const pwd = document.getElementById("pwd");

const pwdConfirm = document.getElementById("pwdConfirm");

const login = document.getElementById("login");

const regexp = /^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[^A-Za-z0-9]).{6,}$/g


btn.addEventListener("click", event =>{
    
    console.log(pwd.value.match(/^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[^A-Za-z0-9]).{6,}$/g))
    if(pwd.value !== pwdConfirm.value){
        event.preventDefault();
        alert("password do not match")
        
    }
   else if (pwd.value.match(/^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[^A-Za-z0-9]).{6,}$/g) == null) {
        event.preventDefault();
        alert("password require at least 6 characters and  one majuscule, one minuscule, one number and one special character")
    }
    else if (login.value == ""){
        event.preventDefault();
        alert("must have a non empty login")
    }
    else if (document.getElementById("email").value.match(/^.+@.+[.].+$/) == null){
        event.preventDefault();
        alert("not a valid mail adress")
    }
    else{
        event.preventDefault();
        alert("Ce service est momentanément indisponible... réessayez... jamais")
    }
})