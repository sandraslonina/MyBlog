<?php

require 'includes/init.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {

    $conn = require 'includes/db.php';

    if (User::authenticate($conn, $_POST['username'], $_POST['password'])) {
        
        Auth::login();

        Url::redirect('/');

    } else {
        
        $error = "login incorrect";

    }
}

?>
<?php require 'includes/header.php'; ?>

<h2 class="text-center">Logowanie</h2>

<?php if (! empty($error)) : ?>
    <p><?= $error ?></p>
<?php endif; ?>

<div class="col-12 col-lg-4 offset-lg-4 text-center">
<form method="post">

    <div class="form-group mb-3">
        <label for="username"><i class="fa-solid fa-user"></i> Username</label>
        <input name="username" id="username" class="form-control">
    </div>

    <div class="form-group mb-3">
        <label for="password"><i class="fa-solid fa-lock"></i> Password</label>
        <input type="password" name="password" id="password" class="form-control">
    </div>

    <button class="btn btn-outline-success signButton btn-lg"><i class="fa-solid fa-right-to-bracket"></i> Log in</button>

</form>
</div>

<?php require 'includes/footer.php'; ?>
