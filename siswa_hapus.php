<?php
include "koneksi.php";
$kode = @$_GET['id'];

mysqli_query($link,"DELETE FROM tb_siswa WHERE id_siswa = '$kode'");
?>
<script type="text/javascript">
alert("Data berhasil dihapus")
window.location="inde.php?page=lihatsiswa";
</script>