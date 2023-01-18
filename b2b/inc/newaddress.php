<?php

require_once '../system/function.php';

if( @$_SESSION['login'] != @sha1(md5(IP().$bcode)) ){    // != üye girişi yapmayan güncelleme yapamaz
	go(site);
}





if($_POST){

    $title  = post('title');
    $content = post('content');
    
   

    if(!$title ||!$content  ){
        echo 'empty';
    }else{
       
        
           
                
                    $result = $db->prepare("INSERT INTO bayi_adresler SET 
                    
                    adresbaslik =:s,
                       adrestarif =:t,
                       adresbayi =:b,
                       adresdurum =:d


                    ");
                    $result->execute([
                        
                        ':s'   =>$title,
                        ':t'   =>$content,
                        ':b'   =>$bcode,
                        ':d'   =>1
                        
                        
                    ]);
                    if($result){
                        echo 'ok';
                    }else{
                        echo 'error';
                    }
                
            
            }    
    }


?>