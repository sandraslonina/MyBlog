<?php

require '../includes/init.php';

Auth::requireLogin();

$conn = require '../includes/db.php';

if (isset($_GET['id'])) {
    $article = Article::getWithCategories($conn, $_GET['id']);
} else {
    $article = null;
}

?>
<?php require '../includes/header.php'; ?>

<?php if ($article) : ?>

    <article>
    <h2 ><?= htmlspecialchars($article[0]['title']); ?></h2>

        <?php if ($article[0]['published_at']) : ?>
            <time><?= $article[0]['published_at'] ?></time>
        <?php else : ?>
            Unpublished
        <?php endif; ?>

        <?php if ($article[0]['category_name']) : ?>
            <p>Categories:
                <?php foreach ($article as $a) : ?>
                    <?= htmlspecialchars($a['category_name']); ?>
                <?php endforeach; ?>
            </p>
        <?php endif; ?>

        <?php if ($article[0]['image_file']) : ?>
            <img src="/uploads/<?= $article[0]['image_file']; ?>">
        <?php endif; ?>

        <p><?= htmlspecialchars($article[0]['content']); ?></p>
    </article>

    <a class="btn btn-outline-warning signButton" href="edit-article.php?id=<?= $article[0]['id']; ?>" role="button">Edit</a>
    <a class="delete btn btn-outline-danger signButton" href="delete-article.php?id=<?= $article[0]['id']; ?>" role="button">Delete</a>
    <a class="btn btn-outline-primary signButton" href="edit-article-image.php?id=<?= $article[0]['id']; ?>" role="button">Edit image</a>

<?php else : ?>
    <p>Article not found.</p>
<?php endif; ?>

<?php require '../includes/footer.php'; ?>
