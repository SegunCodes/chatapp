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
			<section class="form login">
				<header>Let's Chat</header>
				<form action="#">
					<div class="error-text" style="display:none;"></div>
					<div class="field input">
						<label>Email</label>
						<input type="email" placeholder="Enter your email" name="email">
					</div>
					<div class="field input">
						<label>Password</label>
						<input type="password" name="password" placeholder="Enter Password">
						<i class="fas fa-eye">see</i>
					</div>
					<div class="field button">
						<input type="submit" value="Continue to Chat">
					</div>
				</form>
				<div class="link">Not yet signed up?<a href="register.php">Signup now!</a></div>
			</section>
		</div>


		<script type="text/javascript" src="js/effect.js"></script>
		<script type="text/javascript" src="js/login.js"></script>
	</body>
</html>