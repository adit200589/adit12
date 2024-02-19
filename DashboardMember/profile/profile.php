<?php
// Start the session
session_start();

// Check if 'nama' is set in the session, if not, redirect to the login page
if (!isset($_SESSION['nama'])) {
    header("Location: ../login.php");
    exit();
}

if (!isset($_SESSION['nisn'])) {
    header("Location: ../login.php");
    exit();
}
?>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Profile</title>
    <!-- bootstrap css -->
    <link rel="stylesheet" type="text/css" href="../../css2/bootstrap.min.css">
    <!-- style css -->
    <link rel="stylesheet" type="text/css" href="../../css2/style.css">
    <!-- Responsive-->
    <link rel="stylesheet" href="../../css2/responsive.css">
    <!-- Scrollbar Custom CSS -->
    <link rel="stylesheet" href="css2/../jquery.mCustomScrollbar.min.css">
    <!-- Tweaks for older IEs-->
    <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
    <link rel="website icon" type="png" href="../../images/logo122.png">
</head>

<body>
    <div class="header_section">
        <div class="container-fluid">
            <n class="navbar navbar-expand-lg navbar-light bg-light">
                <a class="navbar-brand" href="#page"><img src="../../images/logo122.png"></a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item">
                            <a class="nav-link active" href="#.php">Profile</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="../dashboard.php">Daftar Buku</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="../daftar_pinjam.php">Peminjaman</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="../history.php">History</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="../dashboard.php">Kembali</a>
                        </li>
                    </ul>
                </div>
                </nav>
        </div>
    </div>
</body>