<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/table_chuongTrinhDaoTao.css">
    <title>Trường đại học Quy Nhơn</title>
</head>
<body>
<?php include("header.php") ?>
    <div class = "content">
        <?php include("sidebar.php") ?>

        <div class="content__main">
            <div class="main__select">
                <label>Chương trình ĐT: </label>
                <select>
                    <option>Công nghệ thông tin</option>
                </select>
            </div>

            <div class="main__table">
                <table class="table">
                    <!-- Header -->
                    <thead class="table__head">
                        <tr class="table__head-row">
                            <th class="table__head-cell" rowspan="2">TT</th>
                            <th class="table__head-cell" rowspan="2">MÃ HỌC PHẦN</th>
                            <th class="table__head-cell" rowspan="2">TÊN HỌC PHẦN</th>
                            <th class="table__head-cell" rowspan="2">SỐ TÍN CHỈ</th>
                            <th class="table__head-cell" colspan="7">SỐ TIẾT</th>
                            <th class="table__head-cell" rowspan="2">HỌC PHẦN HỌC TRƯỚC</th>
                            <th class="table__head-cell" rowspan="2">HỌC PHẦN THAY THẾ</th>
                        </tr>

                        <tr class="table__head-row">
                            <th class="table__head-cell">LT</th>
                            <th class="table__head-cell">TH</th>
                            <th class="table__head-cell">TL</th>
                            <th class="table__head-cell">TT</th>
                            <th class="table__head-cell">BTL</th>
                            <th class="table__head-cell">DA</th>
                            <th class="table__head-cell">KL</th>
                        </tr>
                    </thead>

                    <tbody class="table__body">
                        <tr class="table__body-row">
                            <td class="table__body-cell" colspan="13">Học kỳ 1 (20.0 tín chỉ)</td>
                        </tr>

                        <tr class="table__body-row">
                            <td class="table__body-cell"></td>
                            <td class="table__body-cell" colspan="12">Bắt buộc (18.0 tín chỉ)</td>
                        </tr>


                        <?php include("connectSQL.php") ?>

                        <?php
                            $sql = "SELECT * FROM chuongtrinhdaotao";
                            $result = $conn->query($sql);
                         ?>

                        <?php while ($row = $result->fetch_assoc()) : ?>
                            
                            <tr class="table__body-row">
                                <td class="table__body-cell"> <?= $row['ThuTu'] ?> </td>
                                <td class="table__body-cell"> <?= $row['MaHocPhan'] ?> </td>
                                <td class="table__body-cell"> <?= $row['TenHocPhan'] ?> </td>
                                <td class="table__body-cell"> <?= $row['SoTinChi'] ?> </td>
                                <td class="table__body-cell"> <?= $row['LyThuyet'] ?> </td>
                                <td class="table__body-cell"> <?= $row['ThucHanh'] ?> </td>
                                <td class="table__body-cell"> <?= $row['TuLuan'] ?> </td>
                                <td class="table__body-cell"> <?= $row['ThucTap'] ?> </td>
                                <td class="table__body-cell"></td>
                                <td class="table__body-cell"></td>
                                <td class="table__body-cell"></td>
                                <td class="table__body-cell"> <?= $row['HocPhanHocTruoc'] ?> </td>
                                <td class="table__body-cell"> <?= $row['HocPhanThayThe'] ?> </td>
                            </tr>

                        <?php endwhile; ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <?php include("footer.php") ?>
</body>
</html>