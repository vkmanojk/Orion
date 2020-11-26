function ValidateEmail()
{
	var inputText = document.getElementById("email").value;
	console.log(inputText);
	var mailformat = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;
	if(inputText.match(mailformat))
	{
		return true;
	}
	else
	{
		alert("You have entered an invalid email address!");
		return false;
	}
}
