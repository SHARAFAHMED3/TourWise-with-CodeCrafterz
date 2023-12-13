<?php
require_once('../../includes/sessions.php');

// Fetch total users
$totalAdminQuery = mysqli_query($con, "SELECT COUNT(*) AS totalAdmin FROM users WHERE role='1'");
$totalAdminRow = mysqli_fetch_assoc($totalAdminQuery);
$totalAdmin = $totalAdminRow['totalAdmin'];

$totalUsersQuery = mysqli_query($con, "SELECT COUNT(*) AS totalUsers FROM users WHERE role='2'");
$totalUsersRow = mysqli_fetch_assoc($totalUsersQuery);
$totalUsers = $totalUsersRow['totalUsers'];

// Fetch all user names
$allUsersQuery = mysqli_query($con, "SELECT name FROM users");
$allUserNames = array();

while ($userRow = mysqli_fetch_assoc($allUsersQuery)) {
    $allUserNames[] = $userRow['name'];
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>AdminPanel- TourWise</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="../../assets/img/Logo.png" rel="icon">
  <link href="../../assets/img/Logo.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.gstatic.com" rel="preconnect">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="../../assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="../../assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="../../assets/css/style.css" rel="stylesheet">

</head>

<body>

  <!-- ======= Header ======= -->
  <header id="header" class="header fixed-top d-flex align-items-center">

    <div class="d-flex align-items-center justify-content-between">
      <a href="../../index.php" class="logo d-flex align-items-center">
        <img src="../../assets/img/logo.png" alt="">
        <span class="d-none d-lg-block">Tour Wise</span>
      </a>
      <i class="bi bi-list toggle-sidebar-btn"></i>
    </div><!-- End Logo -->

    <nav class="header-nav ms-auto">
      <ul class="d-flex align-items-center">


        <li class="nav-item dropdown pe-3">

          <a class="nav-link nav-profile d-flex align-items-center pe-0" href="#" data-bs-toggle="dropdown">
            <i class="bi bi-person-circle"></i>
            <span class="d-none d-md-block dropdown-toggle ps-2"><?php echo "$login_session" ?></span>
          </a><!-- End Profile Iamge Icon -->

          <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
            <li>
              <a class="dropdown-item d-flex align-items-center" href="../../index.php">
                <i class="bi bi-house"></i>
                <span>Home</span>
              </a>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>
            <li>
              <a class="dropdown-item d-flex align-items-center" href="../../logout.php">
                <i class="bi bi-box-arrow-right"></i>
                <span>Sign Out</span>
              </a>
            </li>

          </ul><!-- End Profile Dropdown Items -->
        </li><!-- End Profile Nav -->

      </ul>
    </nav><!-- End Icons Navigation -->

  </header><!-- End Header -->

  <!-- ======= Sidebar ======= -->
  <aside id="sidebar" class="sidebar">

    <ul class="sidebar-nav" id="sidebar-nav">

      <li class="nav-item">
        <a class="nav-link collapsed" href="index.php">
          <i class="bi bi-grid"></i>
          <span>Dashboard</span>
        </a>
      </li><!-- End Dashboard Nav -->
      <li class="nav-item">
        <a class="nav-link " data-bs-target="#tables-nav" href="user_management.php">
        <i class="bi bi-person-fill-gear"></i><span>User Management</span>
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#tables-nav" href="users-profile.php">
          <i class="bi bi-layout-text-window-reverse"></i><span>Profile</span>
        </a>
      </li>
  </aside><!-- End Sidebar-->

  <main id="main" class="main">

    <div class="pagetitle">
      <h1>User Management</h1>
    </div><!-- End Page Title -->

    <div class="row">
      <div class="col-md-6">
        <div class="card">
          <div class="card-body">
            <h5 class="card-title">Total Admin</h5>
            <p class="card-text"><?php echo $totalAdmin; ?></p>
          </div>
        </div>
      </div>
      <div class="col-md-6">
        <div class="card">
          <div class="card-body">
            <h5 class="card-title">Total Users</h5>
            <p class="card-text"><?php echo $totalUsers; ?></p>
          </div>
        </div>
      </div>
    </div>
    <div class="col-md-6">
        <div class="card">
          <div class="card-body">
            <h5 class="card-title">All User Names</h5>
            <ul>
              <?php foreach ($allUserNames as $userName) : ?>
                <li><?php echo $userName; ?></li>
              <?php endforeach; ?>
            </ul>
          </div>
        </div>
    </div>
  </main><!-- End #main -->



  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="../../assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

  <!-- Main JS File -->
  <script src="../../assets/js/main.js"></script>

</body>

</html>