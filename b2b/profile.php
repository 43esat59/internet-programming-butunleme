<?php require_once 'inc/header.php';


if( @$_SESSION['login'] != @sha1(md5(IP().$bcode)) ){       // != üye girişi yapmayan güncelleme yapamaz
	go(site);
	go(site);
}
  ?>

  <link rel="stylesheet" href="https://cdn.datatables.net/1.13.1/css/dataTables.bootstrap4.min.css"/>
  <style> 
  .pagination{
	background: transparent!important;
	display: flex!important;
  }


</style>
  
   
		<!-- WRAPPER START -->
		<div class="wrapper bg-dark-white">

			<!-- HEADER-AREA START -->
			<?php require_once 'inc/menu.php';?>
			<!-- HEADER-AREA END -->
			<!-- Mobile-menu start -->
			<?php require_once 'inc/mobilemenu.php'; ?>
			<!-- Mobile-menu end -->
			<!-- HEADING-BANNER START -->
			<div class="heading-banner-area overlay-bg" style="background: rgba(0, 0, 0, 0) url(<?php echo site;?>/upload/general3.webp) no-repeat scroll center center / cover;">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<div class="heading-banner">
								<div class="heading-banner-title">
									<h2>Bayi Profil</h2>
								</div>
								<div class="breadcumbs pb-15">
									<ul>
										<li><a href="#">Ana Sayfa</a></li>
										<li>Bayi Profil</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- HEADING-BANNER END -->
			<!-- PRODUCT-AREA START -->
			<div class="product-area pt-80 pb-80 product-style-2">
				<div class="container">
					<div class="row">
						<div class="col-lg-3 order-2 order-lg-1">
							
							<!-- Widget-Categories start -->
							<aside class="widget widget-categories  mb-30">
								<div class="widget-title">
									<h4>Menü</h4>
								</div>
								<div id="cat-treeview"  class="widget-info product-cat boxscrol2">
									<ul>
										<li><a href="<?php echo site."/profile.php?process=profile";?>"><span>Profil Bilgileri</span></a></li> 
										<li><a href="<?php echo site."/profile.php?process=changepassword";?>"><span>Şifremi Değiştir</span></a></li> 
										<li><a href="<?php echo site."/profile.php?process=logo";?>"><span>Logo Düzenle</span></a></li> 
                                        <li><a href="<?php echo site."/profile.php?process=order";?>"><span>Siparişlerim</span></a></li> 
                                        <li><a href="<?php echo site."/profile.php?process=address";?>"><span>Adreslerim</span></a></li> 
                                        <li><a href="<?php echo site."/profile.php?process=notification";?>"><span>Havale Bildirimlerim</span></a></li> 
                                        <li><a href="<?php echo site."/cart.php";?>"><span>Sepetim</span></a></li> 
                                        <li><a href="<?php echo site."/logout.php";?>"><span>Çıkış</span></a></li> 
                                       
                                         																											
									</ul>
								</div>
							</aside>
							
							<!-- Widget-banner end -->
						</div>
						<div class="col-lg-9 order-1 order-lg-2">
							<?php

                           $process = get('process');
                          
                           switch($process){
							

							case  'notification';

							$address =  $db->prepare("SELECT * FROM havalebildirim 
							INNER JOIN bankalar ON bankalar.id=havalebildirim.banka
											
											WHERE havalebayi=:b");
											$address->execute([':b' => $bcode]);
                            ?>
                            <div class="shop-content mt-tab-30 mb-30 mb-lg-0">
								<div class="product-option mb-30 clearfix">
									<!-- Nav tabs -->
									<ul class="nav d-block shop-tab">
										<li> Havale Bildirimlerim (	<?php echo $address->rowCount();?> )  | </li>
										<li><a href="<?php echo site;?>/profile.php?process=newnotification">[Yeni bildirim Ekle]</a></li>
									</ul>
									
								</div>
								<!-- Tab panes -->
								
																
                                    <div class="login-area  ">
				                      <div class="container">
					
						             <div class="row">   
										
									 <div class ="table-responsive">

									 <?php
                                            
											
											if($address->rowCount()){

											
									 ?>
										<table class="table table-hover" id="b2btable">
                                           <thead>
											<tr>
											<th>ID</th>
											<th>TARİH</th>
											<th>TUTAR</th>
											<th>BANKA</th>
											<th>NOT</th>
											
											
											</tr>
										   </thead>
										   <tbody>
											<?php  foreach($address as $order){ ?>
                                                <tr>
												<td><a href="#" title="Adres Düzenle">#<?php echo $order ['id'];?></a></td>

																				
													<td><?php echo dt($order ['havaletarih'])."|".$order['havalesaat'];?></td>
													<td><?php echo $order ['havaletutar'];?> ₺ </td>
													<td><?php echo $order ['bankaadi'];?>  </td>
													<td><?php echo $order ['havalenot'];?>  </td>
													
												</tr>
												<?php } ?>
										   </tbody>

										</table>
										<?php }else {

										alert('Bildirim Bulunmuyor','danger');
										}    ?>



									 </div>
									</div>
                                    </div>
                                    </div>																																									
							
						</div>


                               <?php
                            break;

                            case  'order';

							$orders =  $db->prepare("SELECT * FROM siparisler 
											INNER JOIN durumkodlari ON durumkodlari.durumkodu = siparisler.siparisdurum
											WHERE siparisbayi=:b");
											$orders->execute([':b' => $bcode]);
                            ?>
                            <div class="shop-content mt-tab-30 mb-30 mb-lg-0">
								<div class="product-option mb-30 clearfix">
									<!-- Nav tabs -->
									<ul class="nav d-block shop-tab">
										<li> Siparişlerim (	<?php echo $orders->rowCount();?> )</li>
									</ul>
									
								</div>
								<!-- Tab panes -->
								
																
                                    <div class="login-area  ">
				                      <div class="container">
					
						             <div class="row">   
										
									 <div class ="table-responsive">

									 <?php
                                            
											
											if($orders->rowCount()){

											
									 ?>
										<table class="table table-hover" id="b2btable">
                                           <thead>
											<tr>
											<th>KOD</th>
											<th>DURUM</th>
											<th>TUTAR</th>
											<th>ÖDEME TÜRÜ</th>
											<th>TARİH</th>
											</tr>
										   </thead>
										   <tbody>
											<?php  foreach($orders as $order){ ?>
                                                <tr>
													<td><a href="<?php echo site."/profile.php?process=orderdetail&code=".$order['sipariskodu']; ?>" title="Sipaiş Detayı"><?php echo $order ['sipariskodu'];?></a></td>							
													<td><?php echo $order ['durumbaslik'];?></td>
													<td><?php echo $order ['siparistutar'];?> ₺</td>
													<td><?php echo $order ['siparisodeme'] == 1 ? 'Havale' : 'Kredi Kartı';?></td>
													<td><?php echo dt($order ['siparistarih'])." | ".$order['siparissaat'],true;?></td>
												</tr>
												<?php } ?>
										   </tbody>

										</table>
										<?php }else {

										alert('Siparişiniz Bulunmuyor','danger');
										}    ?>



									 </div>
									</div>
                                    </div>
                                    </div>																																									
							
						</div>


                               <?php
                            break;



							case  'orderdetail';

							$code  = get('code');
							if(!$code){
								go(site);
							}

							$orders =  $db->prepare("SELECT * FROM siparis_urunler
											INNER JOIN siparisler ON siparisler.sipariskodu = siparis_urunler.sipkodu 
											WHERE siparisbayi=:b AND sipariskodu=:code");
											$orders->execute([':b' => $bcode,':code'=>$code]);
                            ?>
                            <div class="shop-content mt-tab-30 mb-30 mb-lg-0">
								<div class="product-option mb-30 clearfix">
									<!-- Nav tabs -->
									<ul class="nav d-block shop-tab">
										<li> <?php echo $code."nolu siparişime ait ürünler(".$orders->rowCount().")";?></li>
									</ul>
									
								</div>
								<!-- Tab panes -->
								
																
                                    <div class="login-area  ">
				                      <div class="container">
					
						             <div class="row">   
										
									 <div class ="table-responsive">

									 <?php
                                            
											
											if($orders->rowCount()){

											
									 ?>
										<table class="table table-hover" id="b2btable">
                                           <thead>
											<tr>
											<th>ÜRÜN ADI</th>
											<th>ÜRÜN FİYAT</th>
											<th>ÜRÜN ADET</th>
											<th>TOPLAM FİYAT</th>
										
											</tr>
										   </thead>
										   <tbody>
											<?php  foreach($orders as $order){ ?>
                                                <tr>
																				
													<td><?php echo $order ['sipurunadi'];?></td>
													<td><?php echo $order ['sipbirim'];?> ₺</td>
													<td><?php echo $order ['sipadet'];?></td>
													<td><?php echo $order ['siptoplam'];?> ₺</td>

												</tr>
												<?php } ?>
										   </tbody>

										</table>
										<?php }else {

										alert('Siparişinize ait ürün  Bulunmuyor','danger');
										}    ?>



									 </div>
									</div>
                                    </div>
                                    </div>																																									
							
						</div>


                               <?php
                            break;


							case'addressdelete';
							$id = get('id');
							if(!$id){
								go(site);

							}
							$query = $db->prepare("SELECT * FROM bayi_adresler 
											
							WHERE adresbayi=:b AND id=:id" );
							$query->execute([':b' =>$bcode,':id'=> $id]);

							if($query->rowCount()){
								$delete = $db->prepare("UPDATE bayi_adresler SET adresdurum=:d WHERE adresbayi=:b AND id=:id ");
								$delete->execute([ ':d'=>2,':b' => $bcode,':id'=> $id]);
								if($delete){
									alert("Adres Pasife Alındı","success");									
								    go(site."/profile.php?process=address",2);
								}else{
									alert("Hata Oluştu","danger");
								}

							}else{
								go(site);
							}

							break;

							case'newaddress';
							?>
								<form action="" method="POST" onsubmit ="return false;" id="newaddressform">

                    <div class="customer-login text-left">
                     <h4 class="title-1 title-border text-uppercase mb-30">Yeni Adres Ekle</h4>
                      <input type="text" placeholder="Adres Başlık" name="title">
                         <input type="text" placeholder="Adres Tarif" name="content">
                  <button type="submit"  id="newaddres" onclick="newaddress();" class="button-one
                     submit-button mt-15">Adres Ekle</button>

</div>	
</form>	


							<?php

							break;



							case'addressedit';


							$id = get('id');
							if(!$id){
								go(site);

							}
							$query = $db->prepare("SELECT * FROM bayi_adresler 
											
							WHERE adresbayi=:b AND id=:id" );
							$query->execute([':b' =>$bcode,':id'=> $id]);

							if($query->rowCount()){

								$row = $query->fetch(PDO::FETCH_ASSOC);
								?>
								<form action="" method="POST" onsubmit ="return false;" id="addressform">

                                   <div class="customer-login text-left">
	                               <h4 class="title-1 title-border text-uppercase mb-30">Adres Düzenle</h4>
	                                <input type="text" placeholder="Adres Başlık" name="title">
	                                 <input type="text" placeholder="Adres Tarif" name="content">
	                  <select name="status">
	                            	<option value="1" <?php echo $row->adresdurum == 1 ? 'selected'
									 : null; ?>>Aktif</option>
		                            <option value="2"<?php echo $row->adresdurum == 2 ? 'selected'
									 : null; ?>>Pasif</option>
	                     </select>
						 <input type="hidden" value="<?php echo $row->id;?>"  name="addressid"/>
						 
  
	
	                          <button type="submit"  id="adresbutton" onclick="addressbutton();" class="button-one
                             	 submit-button mt-15">Adres Güncelle</button>
	 
                       </div>	
                          </form>	



								<?php






							}else{
								go(site);
							}

							break;

							case  'address';

							$address =  $db->prepare("SELECT * FROM bayi_adresler 
											
											WHERE adresbayi=:b");
											$address->execute([':b' => $bcode]);
                            ?>
                            <div class="shop-content mt-tab-30 mb-30 mb-lg-0">
								<div class="product-option mb-30 clearfix">
									<!-- Nav tabs -->
									<ul class="nav d-block shop-tab">
										<li> Adreslerim (	<?php echo $address->rowCount();?> )  | </li>
										<li><a href="<?php echo site;?>/profile.php?process=newaddress">[Yeni Adres Ekle]</a></li>
									</ul>
									
								</div>
								<!-- Tab panes -->
								
																
                                    <div class="login-area  ">
				                      <div class="container">
					
						             <div class="row">   
										
									 <div class ="table-responsive">

									 <?php
                                            
											
											if($address->rowCount()){

											
									 ?>
										<table class="table table-hover" id="b2btable">
                                           <thead>
											<tr>
											<th>ID</th>
											<th>BAŞLIK</th>
											<th>AÇIK ADRES</th>
											<th>DURUM</th>
											<th>İŞLEM</th>
											
											</tr>
										   </thead>
										   <tbody>
											<?php  foreach($address as $order){ ?>
                                                <tr>
												<td><?php echo $order ['id'];?></td>

																				
													<td><?php echo $order ['adresbaslik'];?></td>
													<td><?php echo $order ['adrestarif'];?> </td>
													<td><?php echo $order ['adresdurum'] == 1 ? 'Aktif' : 'Pasif';?>
													<td>
														<a href="<?php echo site;?>/profile.php?process=addressedit&id=<?php echo $order['id'];?>" title="Adres Düzenle"><i style="font-size:20px" class="zmdi zmdi-edit"></i></a>
													    <a href="<?php echo site;?>/profile.php?process=addressdelete&id=<?php echo $order['id'];?>" title="Adresi pasife al"><i style="font-size:20px" class="zmdi zmdi-close"></i></a>
												
												
												</td>
												
												</td>
													
												</tr>
												<?php } ?>
										   </tbody>

										</table>
										<?php }else {

										alert('Adres Bulunmuyor','danger');
										}    ?>



									 </div>
									</div>
                                    </div>
                                    </div>																																									
							
						</div>


                               <?php
                            break;

                            case 'profile';
                            ?>
                                	<div class="shop-content mt-tab-30 mb-30 mb-lg-0">
								<div class="product-option mb-30 clearfix">
									<!-- Nav tabs -->
									<ul class="nav d-block shop-tab">
										<li> Profil Bilgileri</li>
									</ul>
									
								</div>
								<!-- Tab panes -->
								<div class="tab-content">
									<div class="tab-pane active" id="grid-view">							
                                    <div class="login-area  ">
				                      <div class="container">
					
						             <div class="row">

                                     <form action="" method="POST"  onsubmit="return false;" id="profileform">

								<div class="customer-login ">
									
								     <label>Bayi Kodu:</label>
									<input type="text" disabled value="<?php echo $bcode; ?>" name="bec">

									<label>Bayi Adı:</label>
									<input type="text"  value="<?php echo $bname; ?>" name="bname" placeholder="Bayi Adı">

									<label>Bayi Mail:</label>
									<input type="text"  value="<?php echo $bmail; ?>" name="bmail" placeholder="Bayi Mail">

									<label>Bayi Telefon:</label>
									<input type="text"  value="<?php echo $bphone; ?>" name="bphone" placeholder="Bayi Telefon">

									<label>Bayi Fax:</label>
									<input type="text"  value="<?php echo $bfax; ?>" name="bfax" placeholder="Bayi Fax">

									<label>Bayi Vergi No:</label>
									<input type="text"  value="<?php echo $bvno; ?>" name="bvno" placeholder="Bayi Vergi No">

									<label>Bayi Vergi Dairesi:</label>
									<input type="text"  value="<?php echo $bvd; ?>" name="bvd" placeholder="Bayi Vergi Dairesi">

									<label>Bayi Web Sitesi:</label>
									<input type="text"  value="<?php echo $bweb; ?>" name="bwebsite" placeholder="Bayi Web Site Adresi">
									
									

									<button type="submit" onclick="profilebutton();" id="profilebuton" class="button-one
									 submit-button mt-15">Profilimi Güncelle</button>
									 
								</div>	
								</form>
										
									</div>
                                    </div>
                                    </div>
									
								</div>
								<!-- Pagination start -->
							
								<!-- Pagination end -->
							</div>
							<!-- Shop-Content End -->
						</div>
                            <?php

                            break;

                           

							case 'changepassword';
                            ?>
                                	<div class="shop-content mt-tab-30 mb-30 mb-lg-0">
								<div class="product-option mb-30 clearfix">
									<!-- Nav tabs -->
									<ul class="nav d-block shop-tab">
										<li> Şifremi Değiştir</li>
									</ul>
									
								</div>
								<!-- Tab panes -->
								<div class="tab-content">
									<div class="tab-pane active" id="grid-view">							
                                    <div class="login-area  ">
				                      <div class="container">
					
						             <div class="row">

                                     <form action="" method="POST"  onsubmit="return false;" id="passwordform">

								<div class="customer-login ">
									
								     <label>Yeni Şifreniz:</label>
									<input type="password"   name="password" placeholder="Yeni Şifreniz">

									<label>Yeni Şifreniz Tekrar:</label>
									<input type="password"   name="password2" placeholder="Yeni Şifrenizi Tekrar Giriniz">
								
									
									

									<button type="submit" onclick="passwordbutton();" id="passwordbuton" class="button-one
									 submit-button mt-15">Şifremi Güncelle</button>
									 
								</div>	
								</form>
										
									</div>
                                    </div>
                                    </div>
									
								</div>
								<!-- Pagination start -->
							
								<!-- Pagination end -->
							</div>
							<!-- Shop-Content End -->
						</div>
                            <?php

                            break;



                           }

                            ?>
						
					</div>
				</div>
			</div>
			<!-- PRODUCT-AREA END -->
			<?php require_once 'inc/footer.php';?>
			<script src="https://cdn.datatables.net/1.13.1/js/jquery.dataTables.min.js"></script>
			<script src="https://cdn.datatables.net/1.13.1/js/dataTables.bootstrap4.min.js"></script>
			
	<script>
			$(document).ready(function () {
     $('#b2btable').DataTable();
   });
	</script>