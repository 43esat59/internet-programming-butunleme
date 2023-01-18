var url ="http://localhost/b2b";

function registerbutton(){

    document.getElementById("registerbuton").disabled = true;  // çift tıklamamak için

    var data = $("#bregisterform").serialize();
    $.ajax({
        type:"POST",
        url : url +"/inc/register.php",
        data : data,
        success : function(result){
            if($.trim(result) =="empty"){
                alert("lütfen boş alan bırakmayınız");
                document.getElementById("registerbuton").disabled = false;
            }else if($.trim(result)=="format"){
                alert("E posta formatı hatalı");
                document.getElementById("registerbuton").disabled = false;
            }else if($.trim(result)=="match"){
                alert("şifreler uyuşmadı");  
                document.getElementById("registerbuton").disabled = false;             
            }else if($.trim(result)=="already"){
                alert("bu e posta adına ait bir bayi zaten kayıtlı ");
                document.getElementById("registerbuton").disabled = false;
            }else if($.trim(result)=="error"){
                alert("bir hata oluştu ...");
                document.getElementById("registerbuton").disabled = false;
            }else if ($.trim(result)=="ok"){
                alert("Üyeliğiniz başarıyla oluşturuldu... Yönetici onayından sonra aktifleştirilecektir...");
                window.location.href=url;
            }
        }
    })
}


function passwordbutton(){

    document.getElementById("passwordbuton").disabled = true;  // çift tıklamamak için

    var data = $("#passwordform").serialize();
    $.ajax({
        type:"POST",
        url : url +"/inc/changepassword.php",
        data : data,
        success : function(result){
            if($.trim(result) =="empty"){
                alert("lütfen boş alan bırakmayınız");
                document.getElementById("passwordbuton").disabled = false;
            }else if($.trim(result)=="match"){
                alert("şifreler uyuşmadı");  
                document.getElementById("passwordbuton").disabled = false;             
            }else if($.trim(result)=="error"){
                alert("bir hata oluştu ...");
                document.getElementById("passwordbuton").disabled = false;
            }else if ($.trim(result)=="ok"){
                alert("Şifreniz Başarıyla Güncellendi...");
                window.location.href=url + "/profile.php?process=profile";
            }
        }
    })
}


function addressbutton(){

    document.getElementById("adresbutton").disabled = true;  // çift tıklamamak için

    var data = $("#addressform").serialize();
    $.ajax({
        type:"POST",
        url : url +"/inc/addressupdate.php",
        data : data,
        success : function(result){
            if($.trim(result) =="empty"){
                alert("lütfen boş alan bırakmayınız");
                document.getElementById("adresbutton").disabled = false;
            }else if($.trim(result)=="error"){
                alert("bir hata oluştu ...");
                document.getElementById("adresbutton").disabled = false;
            }else if ($.trim(result)=="ok"){
                alert("Adresiniz Başarıyla Güncellendi...");
                window.location.href=url + "/profile.php?process=address";
            }
        }
    })
}


function newaddress(){

    document.getElementById("newaddres").disabled = true;  // çift tıklamamak için

    var data = $("#newaddressform").serialize();
    $.ajax({
        type:"POST",
        url : url +"/inc/newaddress.php",
        data : data,
        success : function(result){
            if($.trim(result) =="empty"){
                alert("lütfen boş alan bırakmayınız");
                document.getElementById("newaddres").disabled = false;
            }else if($.trim(result)=="error"){
                alert("bir hata oluştu ...");
                document.getElementById("newaddres").disabled = false;
            }else if ($.trim(result)=="ok"){
                alert("Adresiniz Başarıyla Eklendi...");
                window.location.href=url + "/profile.php?process=address";
            }
        }
    })
}

function newcomment(){
    // alert("asdas");
    
     document.getElementById("newcommentt").disabled = true;
 
 
     var data = $("#commentform").serialize();
     $.ajax({ 
         type : "POST",
         url  : url + "/inc/newcomment.php",
         data : data,
         success : function(result){
 
             if($.trim(result) == "empty"){
                 alert("Lütfen boş alan bırakmayınız");
                 document.getElementById("newcommentt").disabled = false;
 
             }else if($.trim(result) == "error"){
                 alert("Bir hata oluştu...");
                 document.getElementById("newcommentt").disabled = false;
 
 
             }else if($.trim(result) == "char"){
                alert("Yorumunuz en az 500 karakter olmalıdır...");
                document.getElementById("newcommentt").disabled = false;


            }else if($.trim(result) == "ok"){
                 alert("Yorumunuz gönderildi, yönetici kontrolünden sonra yayınlanacaktır...");
                 window.location.reload();
             }
 
         }
     });
 
 }

 function addcart(){

    document.getElementById("addcartt").disabled = true;

    var data = $("#addcartform").serialize();
    $.ajax({
        type : "POST",
        url  : url + "/inc/addcart.php",
        data : data,
        success : function(result){

            if($.trim(result) == "empty"){
                alert("Ürün adeti belirtiniz");
                document.getElementById("addcartt").disabled = false;

            }else if($.trim(result) == "login"){
                alert("Sepete eklemek için giriş yapmalısınız");
                document.getElementById("addcartt").disabled = false;

            }else if($.trim(result) == "qty"){
                alert("En az 1 adet seçmelisiniz");
                document.getElementById("addcartt").disabled = false;

            }else if($.trim(result) == "error"){
                alert("Hata oluştu");
                document.getElementById("addcartt").disabled = false;

            }else if($.trim(result) == "ok"){
                alert("Ürün sepete eklendi");
                window.location.reload();
            }

        }
    });


 }



 function sendmessage(){
    // alert("asdas");
    
     document.getElementById("sendmessages").disabled = true;
 
 
     var data = $("#contactform").serialize();
     $.ajax({ 
         type : "POST",
         url  : url + "/inc/sendmessage.php",
         data : data,
         success : function(result){
 
             if($.trim(result) == "empty"){
                 alert("Lütfen boş alan bırakmayınız");
                 document.getElementById("sendmessages").disabled = false;
 
             }else if($.trim(result) == "error"){
                 alert("Bir hata oluştu...");
                 document.getElementById("sendmessages").disabled = false;
 
 
             }else if($.trim(result) == "format"){
                alert("E-posta formatı hatalı...");
                document.getElementById("sendmessages").disabled = false;


            }else if($.trim(result) == "char"){
                alert("Mesajınız en az 100 karakter olmalıdır...");
                document.getElementById("sendmessages").disabled = false;


            }else if($.trim(result) == "ok"){
                 alert("Mesajınız  gönderildi, en kısa sürede dönüş sağlanacaktır...");
                 window.location.reload();
             }
 
         }
     });
 
 }


function profilebutton(){

    document.getElementById("profilebuton").disabled = true;  // çift tıklamamak için

    var data = $("#profileform").serialize();
    $.ajax({
        type:"POST",
        url : url +"/inc/profileupdate.php",
        data : data,
        success : function(result){
            if($.trim(result) =="empty"){
                alert("lütfen boş alan bırakmayınız");
                document.getElementById("profilebuton").disabled = false;
            }else if($.trim(result)=="format"){
                alert("E posta formatı hatalı");
                document.getElementById("profilebuton").disabled = false;
            }else if($.trim(result)=="already"){
                alert("bu e posta adına ait bir bayi zaten kayıtlı ");
                document.getElementById("profilebuton").disabled = false;
            }else if($.trim(result)=="error"){
                alert("bir hata oluştu ...");
                document.getElementById("profilebuton").disabled = false;
            }else if ($.trim(result)=="ok"){
                alert("Profiliniz Başarıyla Güncellendi...");
                window.location.reload();
            }
        }
    })
}





function loginbutton(){

   


    

    var data = $("#bloginform").serialize();
    $.ajax({
        type : "POST",
        url: url +"/inc/login.php",
        data : data,
        success : function(result){
            if($.trim(result) == "empty"){
                alert('Boş Alan Bırakmayınız');
                
            }else if($.trim(result) == "error"){
                alert('Bayi Kodu, e-posta veya şifre yanlış');
                
            }else if($.trim(result) == "passive"){
                alert('Üyeliğiniz pasif durumdadır');
                
            }else if($.trim(result) == "ok"){
                alert('Başarıyla giriş yaptınız,Yönlendiriliyorsunuz...');
                window.location.href = url;
            }
        }
    })
}