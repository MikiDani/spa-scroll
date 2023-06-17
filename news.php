<?php
if (isset($_GET['inc'])) {
    
    $sequence=$_GET['inc'];

    require "backend/connect.php";
    
    $pdo = new ConnectDatabase(constant("HOST"), constant("USER"), constant("PASSWORD"), constant("DATABASE"));
    
    $stmt = $pdo->conn->prepare("SELECT * FROM news WHERE sequence = ?");
    
    $stmt->bindParam(1, $sequence);

    $stmt->execute();
    $data = $stmt->fetch();

} else {
    header('Location: index.html');
}
?>
<!DOCTYPE html>
<html lang="hu">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/modules/bootstrap/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="/modules/style.css">
    <title>Single Page Application - Ajax - News</title>
</head>
<body class="bg-secondary">
    <div class="container col-12 col-md-10 col-lg-6 col-xxl-3 mx-auto">
        <div class="row bg-white rounded p-3 mt-5">
            <div id="news-container">
                <div id="<?= $data['sequence'] ?>" class="p-3 m-3 bg-light rounded">
                    <div class="pb-4 fw-bold">
                        <span><?= $data['sequence'] ?> Cím:</span>
                        <span><?= $data['title'] ?></span>
                    </div>
                    <span><?= $data['text'] ?></span>
                    <div class="text-center"><a class="btn btn-primary" href="index.html?inc=<?= $data['sequence'] ?>">Vissza</a></div>
                </div>
            </div>
        </div>
    </div>
    <script src="/modules/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <script src="/modules/jquery/dist/jquery.min.js"></script>
    <script src="/modules/news.js"></script>
</body>
</html>