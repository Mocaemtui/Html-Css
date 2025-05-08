<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đăng nhập</title>
    <link rel="stylesheet" href="./css/login.css">
</head>
<body>
    <form class="form" method="POST">
        <div class="form__dntk">ĐĂNG NHẬP TÀI KHOẢN</div>
        <div class="form__dash">__________</div>
        <div class="form__tkmk">
            <label for="tk">Tên Tài Khoản</label>
            <input name="taiKhoan" type="text" id="tk" placeholder="Nhập tài khoản">
            <label for="mk">Mật khẩu</label>
            <input name="matkhau" type="password" id="mk" placeholder="Nhập mật khẩu">
        </div>
        <div class="form__button">
            <button type="submit" class="form__button-red">Đăng nhập</button>
        </div>
    </form>

    <?php
    include("connectSQL.php");

    if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['taiKhoan']) && isset($_POST['matkhau'])) {
        $tk = $_POST['taiKhoan'];
        $mk = $_POST['matkhau'];

        $querysql = "SELECT MaSinhVien, MatKhau FROM nguoidung";
        $query = mysqli_query($conn, $querysql);
        if (!$query) {
            die("Lỗi truy vấn: " . mysqli_error($conn));
        }

        $found = false;
        while ($row = mysqli_fetch_assoc($query)) {
            if ($row['MaSinhVien'] == $tk && $row['MatKhau'] == $mk) {
                $found = true;
                break;
            }
        }

        if ($found) {
            header("Location: home.php");
            exit();
        } else {
            echo "<script>alert('Tài khoản hoặc mật khẩu không đúng!');</script>";
        }
    }
    ?>
</body>
</html>
