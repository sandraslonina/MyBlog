<!DOCTYPE html>
<html>
<head>
    
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>My blog</title>

 <!-- CSS Stylesheet -->
 <link rel="stylesheet" type="text/css" href="/css/styles.css"> 

  <!-- Bootstrap 5 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
    crossorigin="anonymous"></script>

    
    <link rel="stylesheet" href="/css/jquery.datetimepicker.min.css">
    
    <!-- Google Fonts -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Montserrat&family=Open+Sans:wght@400;700&display=swap"
    rel="stylesheet">

  <!-- Fontawesome.com -->
  <script src="https://kit.fontawesome.com/cc83c43d74.js" crossorigin="anonymous"></script>




</head>


<body class="bg-light text-dark">


        <header>
    <div class="mainLine">
      <h1 class="header">What do you know about your PET?</h1>
    </div>
  </header>


    <div class="container" >

       
        <nav class="menu navbar justify-content-center" data-bs-theme="dark">
            <ul class="nav ">
                <li class="nav-item"><a class="nav-link text-dark" href="/"><i class="fa-solid fa-house"></i> Home</a></li>

                <?php if (Auth::isLoggedIn()) : ?>
                    
                    <li class="nav-item"><a class="nav-link text-dark " href="/admin/"><i class="fa-solid fa-user-pen"></i> Admin</a></li>
                    <li class="nav-item"><a class="nav-link text-dark" href="/logout.php"><i class="fa-solid fa-right-from-bracket"></i> Log out</a></li>

                <?php else : ?>
                    
                    <li class="nav-item"><a class="nav-link text-dark" href="/login.php"><i class="fa-solid fa-right-to-bracket"></i> Log in</a></li>

                <?php endif; ?>

                <li class="nav-item"><a class="nav-link text-dark" href="/contact.php"><i class="fa-regular fa-address-card"></i> Contact</a></li>
            </ul>
        </nav>

        <main>
