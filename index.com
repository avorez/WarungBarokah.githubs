<!DOCTYPE html>
<html lang="id">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Warung Barokah</title>
  <link rel="stylesheet" href="style.css" />
  <link href="https://fonts.googleapis.com/css2?family=Lora&display=swap" rel="stylesheet">
</head>
<body>
  <header>
    <h1>Warung Barokah</h1>
    <p>Jl. Cempaka Raya (Samping awa fried chicken dan samping praktek dr. Syaiful Anam / Simpang gang mmayang murai)</p>
  </header>

  <main>
    <section class="produk">
      <h2>Daftar Produk</h2>
      <input type="text" id="search" placeholder="Cari produk..." />
      <div id="produk-list" class="produk-list"></div>
    </section>

    <section class="keranjang">
      <h2>Keranjang</h2>
      <ul id="keranjang-list"></ul>
      <button onclick="checkout()">Checkout</button>
    </section>

    <section class="tambah-produk">
      <h2>Tambah Produk Baru</h2>
      <input type="text" id="nama-produk" placeholder="Nama produk" />
      <input type="number" id="harga-produk" placeholder="Harga produk" />
      <button onclick="tambahProdukBaru()">Tambah</button>
    </section>

    <section class="kelola-produk">
      <h2>Kelola Produk</h2>
      <ul id="kelola-produk-list"></ul>
    </section>

    <section class="riwayat">
      <h2>Riwayat Transaksi</h2>
      <button onclick="downloadRiwayat()">Download Rekap Harian</button>
    </section>
  </main>

  <script src="script.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/html2canvas@1.4.1/dist/html2canvas.min.js"></script>
</body>
</html>
