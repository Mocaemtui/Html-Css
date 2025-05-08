<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/main.css">
    <link rel="stylesheet" href="./css/ketquadangkyhocphan.css">
    <title>Chi tiết học phí</title>
</head>
<body>
<?php include("header.php") ?>
    <div class="content">
    <?php include("sidebar.php") ?>
        <div class="main-content">
            <div class="panel">
                <div class="panel-heading"><strong>Chi tiết học phí</strong></div>
                <div class="panel-body">
                    <div class="filter">
                    </div>
                    <fieldset>
                        <table>
                            <thead>
                                <th>STT</th>
                                <th>Mã phí</th>
                                <th>Tên học phần</th>
                                <th>Phải đóng (VND)</th>
                                <th>Đã đóng (VND)</th>
                                <th>Ngày đóng</th>
                                <th>Còn nợ (VND)</th>
                            </thead>
                            <tbody>
                            <?php
                            include("connectSQL.php");

                            $sql = "SELECT c.MaPhi, c.SoThuTuDangKy, k.TenHocPhan, c.PhaiDong, c.DaDong, c.NgayDong, c.ConNo 
                                    FROM ChiTietHocPhi c 
                                    JOIN KetQuaDangKyHocPhan k ON c.SoThuTuDangKy = k.SoThuTu";
                            $result = $conn->query($sql);

                            if ($result->num_rows > 0) {
                                $stt = 1;
                                while($row = $result->fetch_assoc()) {
                                    echo "<tr>";
                                    echo "<td>" . $stt++ . "</td>";
                                    echo "<td>" . $row['MaPhi'] . "</td>";
                                    echo "<td>" . $row['TenHocPhan'] . "</td>";
                                    echo "<td>" . number_format($row['PhaiDong'], 2) . "</td>";
                                    echo "<td>" . number_format($row['DaDong'], 2) . "</td>";
                                    echo "<td>" . ($row['NgayDong'] ? $row['NgayDong'] : 'Chưa đóng') . "</td>";
                                    echo "<td>" . number_format($row['ConNo'], 2) . "</td>";
                                    echo "</tr>";
                                }
                            } else {
                                echo "<tr><td colspan='7'>Không có dữ liệu</td></tr>";
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