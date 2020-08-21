<?php
include "koneksi.php";
$kode = @$_GET['id'];

mysqli_query($link,"DELETE FROM tb_pengguna WHERE id_pengguna = '$kode'");
?>
<script type="text/javascript">
alert("Data berhasil dihapus")
window.location="inde.php?page=account";
</script>