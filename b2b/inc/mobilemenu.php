<div class="mobile-menu-area">
				<div class="container-fluid">
					<div class="row">
						<div class="col-xs-12 d-block d-md-none">
							<div class="mobile-menu">
								<nav id="dropdown">
								<ul>
								<li><a href="<?php echo site;?>">Ana Sayfa</a></li>															
							<li><a href="<?php echo site;?>">Ürünler</a></li>
							<?php if( !isset($_SESSION['login'] )){ ?>														                        							
							<li><a href="<?php echo site;?>/login.php">Kayıt ol</a></li>
							<li><a href="<?php echo site;?>/login.php">Giriş Yap</a></li>
							<?php }else{ ?>
								<li><a href="<?php echo site;?>/profile.php?process=profile">Hesabım</a></li>
								<li><a onclick="return confirm('Onaylıyor musunuz?');" href="<?php echo site;?>/logout.php">Çıkış Yap</a></li>
							<?php } ?>
							<li><a href="<?php echo site;?>/contact.php">Bize Ulaşın</a></li>
						</ul>
								</nav>
							</div>
						</div>
					</div>
				</div>
			</div>