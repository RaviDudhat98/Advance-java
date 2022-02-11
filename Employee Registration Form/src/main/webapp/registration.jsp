<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Registration Form</title>
		<link href="registration.css" rel="stylesheet" type="text/css">
	</head>
	<body>
		<div class="form">
			<form action="EmployeeServlet" method="post">
				<div class="title">Employee Registration</div><hr>
				<div class="subtitle"> Please fill the details.</div>

				<div class="input-container ic1">
					<input id="firstname" class="input" type="text" name="firstname"
					onkeydown="return /[a-z]/i.test(event.key)"
					pattern="[A-Za-z]{2,32}" title="Must contain at least 2 letters" maxlength="20" placeholder=" " required/>
					<div class="cut"></div>
					<label for="firstname" class="placeholder">First name</label>
				</div>

				<div class="input-container ic1">
					<input id="lastname" class="input" type="text" name="lastname"
					onkeydown="return /[a-z]/i.test(event.key)"
					pattern="[A-Za-z]{2,32}" title="Must contain at least 2 letters" maxlength="20" placeholder=" " required/>
					<div class="cut"></div>
					<label for="lastname" class="placeholder">Last name</label>
				</div>

				<div class="input-container ic1">
					<input id="username" class="input" type="text" name="username" maxlength="20" placeholder=" " required/>
					<div class="cut"></div>
					<label for="username" class="placeholder">User name</label>
				</div>

				<div class="input-container ic1">
					<input id="password" class="input" type="password" name="password"
					pattern=".{8,}" title="Must contain at least 8 or more characters" maxlength="20" placeholder=" " required/>
					<div class="cut"></div>
					<label for="password" class="placeholder">Password</label>
				</div>

				<div class="input-container ic1">
					<input id="address" class="input" type="text" name="address" maxlength="70" placeholder=" " required/>
					<div class="cut"></div>
					<label for="address" class="placeholder">Address</label>
				</div>

				<div class="input-container ic1">
					<input id="mobileno" class="input" type="tel" name="mobileno"
					oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1');"
					pattern="[6789][0-9]{9}" title="Number must be start with 6,7,8,9 and max 10 digit" 
					maxlength="10" placeholder=" " required/>
					<div class="cut"></div>
					<label for="mobileno" class="placeholder">Mobile no</label>
				</div>

				<button type="submit" value="Submit" class="submit">Submit</button>
				<button type="reset" value="Reset" class="reset">Reset</button>
			</form>
		</div>
	</body>
</html>