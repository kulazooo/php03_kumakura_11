<?php
$id = $_GET['id'];

// DBに接続
require_once('funcs.php');
$pdo = db_conn();

//２．データ登録SQL作成
$stmt = $pdo->prepare('SELECT * FROM gs_user_table WHERE id = :id');
$stmt->bindValue(':id', $id, PDO::PARAM_INT);
$status = $stmt->execute();

//３．データ表示
$view = '';
if ($status === false) {
    // ここを修正
    sql_error($stmt);
} else {
    //データが取得できたら。
    $view = $stmt->fetch();
}
?>

<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="UTF-8">
    <title>ユーザー登録</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <style>
        div {
            padding: 10px;
            font-size: 16px;
        }
    </style>
</head>

<body>
    <header>
        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <div class="navbar-header"><a class="navbar-brand" href="user_list.php">ユーザー一覧</a></div>
            </div>
        </nav>
    </header>

    <!-- method, action, 各inputのnameを確認してください。  -->
    <form method="POST" action="user_update.php">
        <div class="jumbotron">
            <fieldset>
                <legend>ユーザー登録</legend>
                <label>ユーザー名：<input type="text" name="name" value=<?= $view['name'] ?>></label><br>
                <label>ユーザーID：<input type="text" name="lid" value=<?= $view['lid'] ?>></label><br>
                <label>パスワード：<input type="text" name="lpw" value=<?= $view['lpw'] ?>></label><br>
                <input type="hidden" name="id" value=<?= $view['id'] ?>><br>
                <input type="hidden" name="id" value=<?= $kanri_flg['kanri_flg'] ?>><br>
                <input type="hidden" name="id" value=<?= $life_flg['life_flg'] ?>><br>
                <input type="submit" value="更新">
            </fieldset>
        </div>
    </form>
</body>

</html>
