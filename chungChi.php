<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/main.css">
    <link rel="stylesheet" href="./css/ketquadangkyhocphan.css">
    <title>Chứng chỉ</title>
</head>
<body>
<?php include("header.php") ?>
    <div class="content">
    <?php include("sidebar.php") ?>
        <div class="main-content">
            <div class="panel">
                <div class="panel-heading"><strong>Chứng chỉ</strong></div>
                <div class="panel-body">
                    <fieldset>
                        <table>
                            <thead>
                                <th>STT</th>
                                <th>Tên chứng chỉ</th>
                                <th>Số hiệu bằng</th>
                                <th>Số vào sổ</th>
                                <th>Số quyết định</th>
                                <th>Ngày cấp</th>
                                <th>Nơi cấp</th>
                            </thead>
                            <tbody>
                            <?php
                            include("connectSQL.php");

                            $sql = "SELECT c.SoThuTu, c.TenChungChi, c.SoHieuBang, c.SoVaoSo, c.SoQuyetDinh, c.NgayCap, c.NoiCap 
                                    FROM ChungChi c 
                                    JOIN ThongTinCaNhan t ON c.MaSinhVien = t.MaSinhVien";
                            $result = $conn->query($sql);

                            if ($result->num_rows > 0) {
                                $stt = 1;
                                while($row = $result->fetch_assoc()) {
                                    echo "<tr>";
                                    echo "<td>" . $stt++ . "</td>";
                                    echo "<td>" . $row['TenChungChi'] . "</td>";
                                    echo "<td>" . $row['SoHieuBang'] . "</td>";
                                    echo "<td>" . $row['SoVaoSo'] . "</td>";
                                    echo "<td>" . $row['SoQuyetDinh'] . "</td>";
                                    echo "<td>" . $row['NgayCap'] . "</td>";
                                    echo "<td>" . $row['NoiCap'] . "</td>";
                                    echo "</tr>";
                                }
                            } else {
                                echo "<tr><td colspan='9'>Không có dữ liệu</td></tr>";
                            }

                            $conn->close();
                            ?>
                            </tbody>
                        </table>
                    </fieldset>
                </div>
            </div>
        </div>  
    </div>
<?php include("footer.php") ?>
</body>
</html>
```