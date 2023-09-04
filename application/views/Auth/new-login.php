<body class="overflow-hidden">
    <section class="ftco-section">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-6 text-center mb-5 mx-auto" style="margin-top: -70px;">
                    <h2 class="heading-section">RBM - SERVICES</h2>
                </div>
            </div>
            <!-- <form action="<?= base_url('auth') ?>" method="post" class="signin-form"> -->
            <div class="row justify-content-center">
                <div class="col-md-12 col-lg-10">
                    <div class="wrap d-md-flex">
                        <div class="img" style="background-image: url(assets/images/logo3.jpg);">
                        </div>
                        <div class="login-wrap p-4 p-md-5">
                            <div class="d-flex">
                                <div class="w-100">
                                    <h3 class="mb-4">Masuk</h3>
                                    <?= $this->session->flashdata('message'); ?>
                                </div>
                            </div>
                            <form action="<?= base_url('auth') ?>" method="post" class="signin-form">
                                <div class="form-group mb-3">
                                    <label class="label">email</label>
                                    <input type="text" class="form-control" placeholder="Email" id="email" name="email" required value="<?= set_value('email') ?>">
                                    <?= form_error('email', '<small class="text-danger">', '</small>'); ?>
                                </div>
                                <div class="form-group mb-3">
                                    <label class="label">Password</label>
                                    <input type="password" class="form-control" id="password" name="password" placeholder="Password" required>
                                    <?= form_error('password', '<small class="text-danger">', '</small>'); ?>
                                    <div class="custom-control custom-checkbox">
                                        <input type="checkbox" class="custom-control-input" id="customCheck1" onclick="myFunction()">
                                        <label class="custom-control-label" for="customCheck1">Tampilkan Password</label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <button type="submit" class="form-control btn btn-primary rounded submit px-3">Login</button>
                                </div>
                                <div class="form-group d-md-flex">
                                    <div class="w-50 text-left">
                                        <a href="<?= base_url('auth/forgotpassword'); ?>">Lupa Password</a>
                                    </div>
                                </div>
                            </form>
                            <p class="text-center">Bukan member? <a href="<?= base_url('auth/registration'); ?>">Daftar</a></p>
                        </div>
                    </div>
                </div>
            </div>
            <!-- </form> -->
        </div>
    </section>

    <script>
        function myFunction() {
            var x = document.getElementById("password");
            if (x.type == "password") {
                x.type = "text";
            } else {
                x.type = "password";
            }
        }
    </script>