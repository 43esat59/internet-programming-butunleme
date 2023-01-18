<?php require_once 'inc/header.php'; 

if( @$_SESSION['login'] != @sha1(md5(IP().$bcode)) ){    // != üye girişi yapmayan güncelleme yapamaz
	go(site);
}

?>
		
		<div class="wrapper bg-dark-white">

		
			<?php require_once 'inc/menu.php'; ?>
			
			
			<?php require_once 'inc/mobilemenu.php'; ?>

			<?php 
			  $shopping = $db->prepare("SELECT * FROM sepet
			  INNER JOIN urunler ON urunler.urunkodu = sepet.sepeturun
		   WHERE sepetbayi=:b");
		  $shopping->execute([':b' => @$bcode]);
		  ?>
			?>


			
			<div class="heading-banner-area overlay-bg" style="background: rgba(0, 0, 0, 0) url(<?php echo site;?>/upload/general.webp) no-repeat scroll center center / cover;">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<div class="heading-banner">
								<div class="heading-banner-title">
									<h2>ALIŞVERİŞ SEPETİ (<?php echo $shopping->rowCount();?>) </h2>
								</div>
								<div class="breadcumbs pb-15">
									<ul>
										<li><a href="<?php echo site;?>">ANA SAYFA</a></li>
										<li>ALIŞVERİŞ SEPETİ</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		
			<div class="shopping-cart-area  pt-80 pb-80">
				<div class="container">	
					<div class="row">
						<div class="col-lg-12">
							<div class="shopping-cart">
								
								<ul class="cart-page-menu nav row clearfix mb-30">
									<li><a class="active" href="#shopping-cart" data-bs-toggle="tab">Sepetim (<?php echo $shopping->rowCount();?>)</a></li>
									
								</ul>

								
								<div class="tab-content">
									
									<div class="tab-pane active" id="shopping-cart">

                                       <?php if($shopping->rowCount()){ ?>

										
											<div class="shop-cart-table">
												<div class="table-content table-responsive">
													<table>
														<thead>
															<tr>
																<th class="product-thumbnail">Ürün</th>
																<th class="product-price">Fiyat</th>
																<th class="product-quantity">Adet</th>
																<th class="product-subtotal">Toplam</th>
																<th class="product-remove">İşlem</th>
															</tr>
														</thead>
														<tbody>
															<?php foreach($shopping as $cart){ ?>

																<tr>
																<td class="product-thumbnail  text-left">
																	
																	<div class="single-product">
																		<div class="product-img">
																			<a href="<?php echo site."/product.php?productsef=".$cart['urunsef'];?>"><img src="<?php echo site."/upload/product/".$cart['urunkapak']; ?>" width="270" height="270" alt="<?php echo $cart['urunbaslik'];?>" /></a>
																		</div>
																		<div class="product-info">
																			<h4 class="post-title"><a class="text-light-black" href="<?php echo site."/product.php?productsef=".$cart['urunsef'];?>"><?php echo $cart['urunbaslik'];?></a></h4>
																			
																		</div>
																	</div>
																												
																</td>
																<td class="product-price"> <?php echo $cart['urunfiyat']." ₺";?></td>
																<td class="product-quantity">
																	
																		<input type="number" value="<?php echo $cart['sepetadet'];?>" name="qtybutton" class="cart-plus-minus-box">
																	
																</td>
																<td class="product-subtotal"><?php echo $cart['toplamfiyat']." ₺";?>
																<td class="product-remove">
																	<a onclick="return confirm('Ürünü sepetten silmek istiyormusunuz?');" href="<?php echo  site."/cart.php?productdelete&code=".$cart['sepeturun'];?>"><i class="zmdi zmdi-close"></i></a>
																</td>
															</tr>

															<?php } ?>
															
														</tbody>
													</table>
												</div>
											</div>
											<div class="row">

												<div class="col-md-6">
													<div class="customer-login payment-details mt-30">
														<h4 class="title-1 title-border text-uppercase">Alışveriş Detayları</h4>
														<table>
															<tbody>
																<tr>
																	<td class="text-left"></td>
																	<td class="text-end"></td>
																</tr>
																<tr>
																	<td class="text-left"></td>
																	<td class="text-end"></td>
																</tr>
																<tr>
																	<td class="text-left"></td>
																	<td class="text-end"></td>
																</tr>
																<tr>
																	<td class="text-left"></td>
																	<td class="text-end"></td>
																</tr>
															</tbody>
														</table>
													</div>
												</div>
											</div>
											

											

										<?php }else{
											alert("sepetinizde ürün bulunmuyor","danger");
										} ?>
									</div>
									
									
								</div>

							</div>
						</div>
					</div>
				</div>
			</div>

			<?php require_once 'inc/footer.php'; ?>	
