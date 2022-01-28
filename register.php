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
    <form method="POST" action="user_insert.php">
        <div class="jumbotron">
            <fieldset>
                <legend>ユーザー登録</legend>
                <label>ユーザー名：<input type="text" name="name"></label><br>
                <label>ユーザーID：<input type="text" name="lid"></label><br>
                <label>パスワード：<input type="text" name="lpw"></label><br>
                <label><input type="hidden" name="kanri_flg" checked value=<?= $view['kanri_flg'] ?>></label><br>
                <label><input type="hidden" name="life_flg" checked value=<?= $view['life_flg'] ?>></label><br>
                <input type="submit" value="送信">
            </fieldset>
        </div>
    </form>
</body>

</html>
