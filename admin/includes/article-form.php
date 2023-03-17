<?php if (! empty($article->errors)) : ?>
    <ul>
        <?php foreach ($article->errors as $error) : ?>
            <li><?= $error ?></li>    
        <?php endforeach; ?>
    </ul>
<?php endif; ?>

<form method="post" id="formArticle">

    <div class="form-group mb-3">
        <label for="title"><i class="fa-sharp fa-solid fa-star-of-life"></i> Title</label>
        <input class="form-control" name="title" id="title" placeholder="Article title" value="<?= htmlspecialchars($article->title); ?>">
    </div>

    <div class="form-group mb-3">
        <label for="content"><i class="fa-solid fa-file-lines"></i> Content</label>
        <textarea class="form-control" name="content" rows="4" cols="40" id="content" placeholder="Article content"><?= htmlspecialchars($article->content); ?></textarea>
    </div>

    <div class="form-group mb-3">
        <label for="content"><i class="fa-solid fa-calendar-days"></i> Content</label>
        <label for="published_at">Publication date and time</label>
        <input class="form-control" name="published_at" id="published_at" value="<?= htmlspecialchars($article->published_at); ?>">
    </div>

    <fieldset>
        <legend >Categories</legend>

        <?php foreach ($categories as $category) : ?>
            <div class="form-check">
                <input class="form-check-input" type="checkbox" name="category[]" value="<?= $category['id'] ?>" id="category<?= $category['id'] ?>"
                       <?php if (in_array($category['id'], $category_ids)) :?>checked<?php endif; ?>>
                <label class="form-check-label" for="category<?= $category['id'] ?>"><?= htmlspecialchars($category['name']) ?></label>
            </div>
        <?php endforeach; ?>
    </fieldset>

    <button class="btn btn-outline-primary btn-lg"><i class="fa-solid fa-floppy-disk"></i> Save</button>

</form>
             