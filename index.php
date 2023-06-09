<?php
session_start();
include 'koneksi.php';
include 'base-url.php';
if (isset($_SESSION['nama']) && isset($_SESSION['level'])) {
    header("Location: menu-utama.php?validasi=sukses");
    exit;
}
?>
<!DOCTYPE html>
<html lang="en">

<!-- HEADER -->
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>SPK Seleksi Haflah </title>
    <!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="assets/img/logo1.png" />
    <!-- Bootstrap Icons-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
    <!-- Google fonts-->
    <link href="https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic" rel="stylesheet" type="text/css" />
    <!-- SimpleLightbox plugin CSS-->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/SimpleLightbox/2.1.0/simpleLightbox.min.css" rel="stylesheet" />
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="css/styles3.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="css/jquery.dataTables.css">
</head>
<!-- HEADER -->

<!-- BODY -->
<body id="page-top">
    <!-- Navigation-->
    <nav class="navbar navbar-expand-lg navbar-light fixed-top py-3" id="mainNav">
        <div class="container px-4 px-lg-5">
            <div class="d-inline">
                <img src="assets/img/logo1.png" width="75" class="me-2">
                <!-- <a class="navbar-brand" href="#page-top">SPK TOMATO</a> -->
            </div>
            <button class="navbar-toggler navbar-toggler-right" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ms-auto my-2 my-lg-0">
                    <li class="nav-item"><a class="nav-link bg-primary pe-3 py-2 ms-2 rounded" href="masuk.php">Masuk</a></li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- Masthead-->
    <header class="masthead">
        <div class="container px-4 px-lg-5 h-100">
            <div class="row gx-4 gx-lg-5 h-100">
                <div class="col-lg-8 align-self-end">
                    <h1 class="text-white font-weight-bold">Sistem Pendukung Keputusan</h1>
                    <hr class="divider" />
                </div>
                <div class="col-lg-8 align-self-baseline">
                    <p class="text-white-75 mb-5">Menentukan Seleksi Santri Haflah Juz Amma PPTQ Al-Asy'ariyyah Menggunakan Metode Simple Multi Attribute Rating Technique (SMART)</p>
                </div>
            </div>
        </div>
    </header>
  <!-- BODY -->
  
</body>

</html>