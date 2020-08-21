<?php
include "koneksi.php";
$kode = @$_GET['id'];

mysqli_query($link,"DELETE FROM tb_mapel WHERE id_mapel = '$kode'");
?>
<script type="text/javascript">
alert("Data berhasil dihapus")
window.location="inde.php?page=mapel";
</script>