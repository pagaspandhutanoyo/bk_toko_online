<?= $this->extend('layout') ?>
<?= $this->section('content') ?>
<!-- Breadcrumb Section Begin -->
<div class="breacrumb-section">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="breadcrumb-text">
                    <a href="#"><i class="fa fa-home"></i> Home</a>
                    <span>Voucher</span>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Breadcrumb Section Begin -->
<!-- Product Shop Section Begin -->
<section class="product-shop spad">
    <div class="container">
        <div class="row">
            <div class="col order-1 order-lg-2">
                <div class="product-list">
                    <div class="row">
                        <?php foreach ($diskons as $index => $diskon) : ?>
                            <div class="col-lg-4 col-sm-6">
                                <div class="product-item">
                                    <div class="pi-text">
                                        <div class="catagory-name">Berlaku hingga: <?= $diskon->tanggal_akhir_berlaku ?></div>
                                        <h5>Gunakan Kode <?= $diskon->kode_voucher ?></h5>
                                        <div class="product-price">
                                            Diskon <?= $diskon->besar_diskon ?> %
                                        </div>
                                    </div>
                                </div>
                            </div>
                        <?php endforeach ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Product Shop Section End -->
<?= $this->endSection() ?>