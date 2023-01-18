<?php  
 $cat = $db->prepare("SELECT * FROM urun_kategoriler WHERE katdurum=:d");
 $cat->execute([':d'=>1]);
?>
<div class="col-lg-3 order-2 order-lg-1">
							<!-- Widget-Search start -->
							<aside class="widget widget-search mb-30">
								<form action="#">
									<input type="text" placeholder="Ürün Arama..." />
									<button type="submit">
										<i class="zmdi zmdi-search"></i>
									</button>
								</form>
							</aside>
							<!-- Widget-search end -->
							<!-- Widget-Categories start -->
							<aside class="widget widget-categories  mb-30">
								<div class="widget-title">
									<h4>KATEGORİLER(<?php echo $cat->rowCount();?>)</h4>
								</div>
								<div id="cat-treeview"  class="widget-info product-cat boxscrol2">
									<ul>
										<?php
                                        
                                         if($cat->rowCount()){
                                            foreach($cat as $ca){
                                                echo '<li><a href="category.php?catsef='.$ca['katsef'].'"><span>'.$ca['katbaslik'].'</span></a></li>';
                                            }
                                         }
                                        ?>
						
									</ul>
								</div>
							</aside>
							<!-- Widget-categories end -->
							<!-- Shop-Filter start -->
							<aside class="widget shop-filter mb-30">
								<div class="widget-title">
									<h4>Fiyat</h4>
								</div>
								<div class="widget-info">
									<div class="price_filter">
										<div class="price_slider_amount">
											<input type="submit"  value="Fiyat aralığı :"/> 
											<input type="text" id="amount" name="price"  placeholder="Add Your Price" /> 
									
								</div>
							</aside>

                         
						
							
							<!-- Widget-banner end -->
						</div>