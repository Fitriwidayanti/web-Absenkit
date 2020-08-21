<?php
include "koneksi.php";
$kode = @$_GET['id'];

mysqli_query($link,"DELETE FROM tb_mengajar WHERE id_mengajar = '$kode'");
?>
<script type="text/javascript">
alert("Data berhasil dihapus")
window.location="inde.php?page=setmapel";
</script>