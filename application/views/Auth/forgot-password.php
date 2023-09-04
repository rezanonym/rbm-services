<body class="overflow-hidden">
    <section class="ftco-section">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-6 text-center mb-5 mx-auto" style="margin-top: -70px;">
                    <h2 class="heading-section">Lupa Password</h2>
                </div>
            </div>
            <div class="row justify-content-center">
                <div class="col-md-6 col-10">
                    <div class="wrap d-md-flex">
                        <div class="login-wrap p-4 p-md-5">
                            <div class="d-flex">
                                <div class="w-100">
                                    <h3 class="mb-4">Lupa Password</h3>
                                    <?= $this->session->flashdata('message'); ?>
                                </div>
                            </div>
                            <form action="<?= base_url('auth/forgotpassword') ?>" method="post" class="signin-form">
                                <div class="form-group mb-3">
                                    <label class="label">email</label>
                                    <input type="text" class="form-control" placeholder="Email" id="email" name="email" required value="<?= set_value('email') ?>">
                                    <?= form_error('email', '<small class="text-danger">', '</small>'); ?>
                                </div>
                                <div class="form-group">
                                    <button type="submit" class="form-control btn btn-primary rounded submit px-3">Reset Password</button>
                                </div>
                            </form>
                            <p class="text-center"><a href="<?= base_url('auth'); ?>">Kembali ke login</a></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>