<?php
	session_start();
	if (isset($_SESSION['unique_id'])) {
		header("location: users.php");
	}
?>
<?php
	include_once 'header.php';
?>
	<body>
		<div class="wrapper">
			<section class="form signup">
				<header>Let's Chat</header>
				<form action="#" enctype="multipart/form-data">
					<div class="error-text" style="display:none;">This is an error message</div>
					<div class="name-details">
						<div class="field input">
							<label>First Name</label>
							<input type="text" name="fname" placeholder="First Name" required="">
						</div>
						<div class="field input">
							<label>Last Name</label>
							<input type="text" name="lname" placeholder="Last Name" required="">
						</div>
						<div class="field input">
							<label>Email</label>
							<input type="email" name="email" placeholder="Enter your email" required="">
						</div>
						<div class="field input">
							<label>Password</label>
							<input type="password" name="password" placeholder="Enter Password" required="">
							<i class="fas fa-eye">see</i>
						</div>
						<div class="field image">
							<label>Select Image</label>
							<input type="file" name="image">
						</div>
						<div class="field button">
							<input type="submit" value="Register">
						</div>
					</div>
				</form>
				<div class="link">Already signed up?<a href="index.php">Login now!</a></div>
			</section>
		</div>
		<script type="text/javascript" src="js/effect.js"></script>
		<script type="text/javascript" src="js/signup.js"></script>
	</body>
</html>