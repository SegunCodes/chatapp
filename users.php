	<?php
		session_start();
		include_once 'php/config.php';
		if (!isset($_SESSION['unique_id'])) {
			header("location: login.php");
		}

 
	?>
	<?php
		include_once 'header.php';
	?>
	<body>
		<div class="wrapper">
			<section class="users">
				<header>
					<?php
						include_once 'php/config.php';
						$sql = mysqli_query($conn, "SELECT * FROM users WHERE unique_id = {$_SESSION['unique_id']}");
						if (mysqli_num_rows($sql)>0) {
							$row = mysqli_fetch_assoc($sql);
						}
					?>
					<div class="content">
						<img src="php/images/<?php echo $row['img'];?>">
					</div>
					<div class="details">
						<span><?php echo $row['fname']." ".$row['lname'] ?></span>
						<p><?php echo $row['status'] ?></p>
					</div>
					<a href="php/logout.php?logout_id=<?php echo $row['unique_id']?>" class="logout">Log-out</a>
				</header>
				<div class="search">
					<span class="text">Search for a user to chat with</span>
					<input type="text" name="" placeholder="Enter name to search">
					<button><i class="fas fa-search">ss</i></button>
				</div>
				<div class="users-list">
					<?php
	
					// session_start();
					include_once 'php/config.php';
					$sql = mysqli_query($conn, "SELECT * FROM users");
					$output = "";

					if (mysqli_num_rows($sql) == 1) {
						$output .= "No users are available to chat";
					}elseif (mysqli_num_rows($sql)>0) {
						include_once 'php/data.php';
					}
					echo $output;



				?>
				</div>
			</section>
		</div>
		<script type="text/javascript" src="js/users.js"></script>
	</body>
</html>