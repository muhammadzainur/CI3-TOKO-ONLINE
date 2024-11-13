<div class="container-fluid">
  <div class="row">
    <div class="col-md-2"></div>
    <div class="col-md-8">
      <div class="btn btn-sm btn-success">
        <?php
        $grand_total = 0;
        if ($keranjang = $this->cart->contents()) {
          foreach ($keranjang as $item) {
            $grand_total = $grand_total + $item['subtotal'];
          }
          echo "<h4>Total Belanja Anda: Rp." . number_format($grand_total, 0, ',', '.');
        ?>
      </div><br><br>
      <h3>Input Alamat Pengiriman Dan Pembayaran</h3>
      <form action="<?php echo base_url() ?>dashboard/proses_pesanan" method="post">
        <div class="from-group">
          <label>Nama Lengkap</label>
          <input type="text" name="nama" placeholder="Nama Lengkap Anda" class="form-control">
        </div>
        <div class="from-group">
          <label>Alamat Lengkap</label>
          <input type="text" name="alamat" placeholder="Alamat Lengkap Anda" class="form-control">
        </div>
        <div class="from-group">
          <label>No. Telepon</label>
          <input type="text" name="no_telp" placeholder="Nomer Telepon Anda" class="form-control">
        </div>
        <div class="from-group">
          <label>Jasa Pengiriman</label>
          <select class="form-control">
            <option>JNE</option>
            <option>TIKI</option>
            <option>Pos Indonesia</option>
            <option>Gojek</option>
            <option>Grab</option>
          </select>
        </div>
        <div class="from-group">
          <label>Pilih Bank</label>
          <select class="form-control">
            <option>BCA - XXXXXX</option>
            <option>BNI - XXXXXX</option>
            <option>BRI - XXXXXX</option>
            <option>Mandiri - XXXXXX</option>
          </select>
        </div>
        <button type="submit" class="btn btn-sm btn-primary mb-3">Pesan</button>
      </form>
    <?php
        } else {
          echo "<h4>keranjang Belanja Anda Masi Kosong";
        }
    ?>
    </div>
    <div class="col-md-2"></div>
  </div>
</div>