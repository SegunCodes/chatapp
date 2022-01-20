const form = document.querySelector(".login form"),
continueBtn = form.querySelector(".button input"),
errorText = form.querySelector(".error-text");

form.onsubmit = (e)=>{
	e.preventDefault();
}

continueBtn.onclick = ()=>{
	let xhr = new XMLHttpRequest(); //creating xml object
	xhr.open("POST", "php/login.php", true);
	xhr.onload = ()=>{
		if (xhr.readyState === XMLHttpRequest.DONE) {
			if (xhr.status === 200) {
				let data = xhr.response;
				console.log(data);
				if (data == "success") {
					location.href = "users.php";
				}else{
					errorText.textContent = data;
					errorText.style.display = "block";
				}				
			}
		}
	}
	let formData = new FormData(form);
	xhr.send(formData);
}