<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/lichthi.css">
    <title>Trường đại học Quy Nhơn</title>
</head>
<body>
<?php include("header.php") ?>
    <div class = "content">
    <?php include("sidebar.php") ?>
        <div class="content__main">
        <title>Lịch thi</title>
  <style>
    body {
      font-family: Arial, sans-serif;
    }
    .header {
      background-color: #005792;
      color: white;
      padding: 10px;
      font-weight: bold;
    }
    .filters {
      margin: 10px 0;
    }
    table {
      width: 100%;
      border-collapse: collapse;
    }
    th {
      background-color: #005792;
      color: white;
      padding: 8px;
      text-align: left;
      font-weight: bold;
    }
    td {
      padding: 8px;
      border: 1px solid #ccc;
    }
    .no-data {
      padding: 10px;
      text-align: center;
      font-style: italic;
    }
  </style>
</head>
<body>

<div class="header">Lịch thi</div>

<div class="filters">
  <label for="namhoc">Năm học:</label>
  <select id="namhoc">
    <option>2024-2025</option>
  </select>

  <label for="hocky">Học kỳ:</label>
  <select id="hocky">
    <option>Học kỳ 2</option>
  </select>
</div>

<table>
  <thead>
    <tr>
      <th>Mã học phần</th>
      <th>Tên học phần</th>
      <th>STC</th>
      <th>Ngày thi</th>
      <th>Giờ thi</th>
      <th>Thời lượng (phút)</th>
      <th>Phòng thi</th>
      <th>Link phòng thi</th>
      <th>Link nộp bài</th>
      <th>Địa điểm</th>
      <th>Ghi chú</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td colspan="11" class="no-data">Chưa có lịch thi</td>
    </tr>
  </tbody>
</table>
            
        </div>
    </div>
    <?php include("footer.php") ?>
</body>
</html>