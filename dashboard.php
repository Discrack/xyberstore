<?php 
	session_start();
	if($_SESSION['status_login'] != true){
		echo '<script>window.location="login.php"</script>';
	}
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>XyberStore</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link href="https://fonts.googleapis.com/css2?family=Quicksand&display=swap" rel="stylesheet">
</head>
<body>
	<!-- header -->
	<header>
		<div class="container">
			<h1><a href="dashboard.php">XyberStore</a></h1>
			<ul>
				<li><a href="dashboard.php">Dashboard</a></li>
				<li><a href="profil.php">Profil</a></li>
				<li><a href="data-kategori.php">Data Kategori</a></li>
				<li><a href="data-produk.php">Data Produk</a></li>
				<li><a href="keluar.php">Logout</a></li>
			</ul>
		</div>
	</header>

	<!-- content -->
	<div class="section">
		<div class="container">
			<h3>Dashboard</h3>
			<div class="box">
				<h4>Selamat Datang di Pusat Kontrol</h4>
				<br>
				<p>
					Hallo <?php echo $_SESSION['a_global']->admin_name ?>, XyberStore merupakan toko online yang menjual 
					barang barang komputer, laptop, montor, dan lain lain.
					Anda dapat membuat, menambah, menghapus, dan mengubah data produk, data kategori serta profile anda.
				</p>
				<br>
				<p>Project aplikasi ini dibuat untuk memenuhi tugas formatif mata kuliah pak samsul :(
				</p>
			</div>
		</div>
	</div>

	<!-- footer -->
	<footer>
		<div class="container">
			<small></small>
		</div>
	</footer>
</body>
</html>