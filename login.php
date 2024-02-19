<?php
session_start();
include "loginSystem/connect.php";
if (isset($_POST['nisn']) && isset($_POST['nama'])) {
    // Get user input
    $nisn = $_POST['nisn'];
    $nama = $_POST['nama'];
    $password = $_POST['password'];

    // Query to check user credentials
    $query = "SELECT * FROM member WHERE nisn='$nisn' AND nama='$nama' AND password='$password'";
    $result = $connect->query($query);

    if ($result->num_rows == 1) {
        // Login successful
        $_SESSION['nama'] = $nama;
        $_SESSION['nisn'] = $nisn;
        $_SESSION['password'] = $password;
        header("Location: DashboardMember/dashboard.php"); // Redirect to dashboard or any other page
    } else {
        // Login failed
        echo "<script>alert('nis atau nama Anda salah. Silahkan coba lagi!')</script>";
    }
}
$connect->close();

?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Pelajar</title>
    <link rel="stylesheet" href="js_css/style.css">
    <link rel="website icon" type="png" href="images/logo122.png">
</head>

<body>
    <!-- partial:index.partial.html -->

    <body>
        <section class="container">
            <div class="login-container">
                <div class="circle circle-one"></div>
                <div class="form-container">
                    <img src="https://raw.githubusercontent.com/hicodersofficial/glassmorphism-login-form/master/assets/illustration.png" alt="illustration" class="illustration" />
                    <h1 class="Bold">LOGIN</h1>
                    <form action="" method="POST">
                        <input type="text" name="nama" placeholder="USERNAME" />
                        <input type="text" name="nisn" placeholder="NISN" />
                        <input type="password" name="password" placeholder="PASSWORD" />
                        <button type="submit" name="signIn" class="Bold">Login</button>
                        <button onclick="window.location.href='index.php'" type="button">Kembali</button>
                    </form>
                    <div class="opacity" style="text-align: center;">
                        <p class="copyright_text">BELUM PUNYA AKUN ? <a href="register.php">REGISTER</a></p>
                    </div>
                </div>
                <div class="circle circle-two"></div>
            </div>
            <div class="theme-btn-container"></div>
        </section>
    </body>

    <!-- partial -->

</body>

</html>