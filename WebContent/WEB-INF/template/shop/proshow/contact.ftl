<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <meta name="format-detection" content="telephone=no" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link href="${base}/resources/static/image/favicon.png" rel="icon" />
    <title>Shop</title>
    <meta name="description" content="shop">
	[#include "/shop/proshow/include/head.ftl" /]
</head>
<body>
    <div class="wrapper-wide">
   		[#include "/shop/proshow/include/header.ftl" /]
        <div id="container">
            <div class="container">
                <!-- Breadcrumb Start-->
                <ul class="breadcrumb">
                    <li><a href="${base}/"><i class="fa fa-home"></i></a></li>
                    <li><a href="#">Contact Us</a></li>
                </ul>
                <!-- Breadcrumb End-->
                <div class="row">
                    <!--Middle Part Start-->
                    <div id="content" class="col-sm-9">
                        <h1 class="title">Contact Us</h1>
                        <h3 class="subtitle">Our Location</h3>
                        <div class="row">
                            <div class="col-sm-3"><img src="${base}/resources/static/image/product/store_location-275x180.jpg" alt="MarketShop Template" title="MarketShop Template" class="img-thumbnail" /></div>
                            <div class="col-sm-3"><strong>MarketShop Template</strong><br />
                                <address>
					              Central Square,<br />
					              22 Hoi Wing Road,<br />
					              New Delhi,<br />
					              India
					              </address>
                            </div>
                            <div class="col-sm-3"><strong>Telephone</strong><br> +91 9898989898<br />
                                <br />
                                <strong>Fax</strong><br> +91 9898989898 </div>
                            <div class="col-sm-3"> <strong>Opening Times</strong><br /> 24X7 Customer Care<br />
                                <br />
                                <strong>Comments</strong><br /> This field is for any special notes you would like to tell the customer i.e. Store does not accept cheques. </div>
                        </div>
                        <form class="form-horizontal" id="contactForm" action=""  method="GET">
                            <fieldset>
                                <h3 class="subtitle">Contact-Us</h3>
                                <div class="form-group">
                                    <label class="col-md-2 col-sm-3 control-label" for="input-company">Company</label>
                                    <div class="col-md-10 col-sm-9">
                                        <input type="text" name="company" value="" id="input-company" class="form-control" />
                                    </div>
                                </div>                                  
                                <div class="form-group required">
                                    <label class="col-md-2 col-sm-3 control-label" for="input-firstname">FirstName</label>
                                    <div class="col-md-10 col-sm-9">
                                        <input type="text" name="firstname" value="" id="input-firstname" class="form-control" />
                                    </div>
                                </div>
                                <div class="form-group required">
                                    <label class="col-md-2 col-sm-3 control-label" for="input-lastname">LastName</label>
                                    <div class="col-md-10 col-sm-9">
                                        <input type="text" name="lastname" value="" id="input-lastname" class="form-control" />
                                    </div>
                                </div>                                
                                <div class="form-group required">
                                    <label class="col-md-2 col-sm-3 control-label" for="input-email">E-Mail Address</label>
                                    <div class="col-md-10 col-sm-9">
                                        <input type="text" name="email" value="" id="input-email" class="form-control" />
                                    </div>
                                </div>
                                <div class="form-group required">
                                    <label class="col-md-2 col-sm-3 control-label" for="input-phone">Phone</label>
                                    <div class="col-md-10 col-sm-9">
                                        <input type="text" name="phone" value="" id="input-phone" class="form-control" />
                                    </div>
                                </div>                                                                  
                                <div class="form-group required">
                                    <label class="col-md-2 col-sm-3 control-label" for="input-content">Content</label>
                                    <div class="col-md-10 col-sm-9">
                                        <textarea name="content" rows="10" id="input-Content" class="form-control"></textarea>
                                    </div>
                                </div>
                                <div class="form-group" id="msabox" style="display:none">
                                	<label class="col-md-2 col-sm-3 control-label">&nbsp;</label>
	                                <div class="col-md-10 col-sm-9 alert alert-danger" id="alert">
	                                	<i class="fa fa-exclamation-circle"></i> <span id="msg">Danger - Lorem ipsum dolor sit amet, con sectetuer adipiscing elit.</span>
	                                </div>                                  
                                </div>
                            </fieldset>
                            <div class="buttons">
                                <div class="pull-right">
                                 	<input class="btn btn-primary" type="bottom" value="Reset" id="reset"/>
                                    <input class="btn btn-primary" type="bottom" value="Submit" id="submit"/>
                                </div>
                            </div>

                        </form>   
                    </div>
                    <aside id="column-right" class="col-sm-3 hidden-xs">
                        <div class="list-group">
                            <h2 class="subtitle">Custom Content</h2>
                            <p>This is a CMS block edited from admin. You can insert any content (HTML, Text, Images) Here. </p>
                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make
                                a type specimen book. </p>
                            <p>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>
                        </div>
                        <div class="banner owl-carousel">
                            <div class="item">
                                <a href="#"><img src="${base}/resources/static/image/banner/small-banner1-265x350.jpg" alt="small banner" class="img-responsive" /></a>
                            </div>
                            <div class="item">
                                <a href="#"><img src="${base}/resources/static/image/banner/small-banner-265x350.jpg" alt="small banner1" class="img-responsive" /></a>
                            </div>
                        </div>
                    </aside>                 
                    <!--Middle Part End -->
                    
                </div>
            </div>
        </div>
    [#include "/shop/proshow/include/footer.ftl" /] 
    </div>
    [#include "/shop/proshow/include/bottom.ftl" /]
</body>
<script>
$().ready(function() {
	var $submit = $("#submit");
	var $email = $("#input-email");
	var $firstname = $("#input-firstname");
	var $lastname = $("#input-lastname");
	var $content = $("#input-Content");
	var $phone = $("#input-phone");		
	var $company = $("#input-company");
	var $msabox = $("#msabox");
	var $alert = $("#alert"); 

    var regBox = {
        regEmail: /^([a-z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})$/, //邮箱
        regTel: /^[0-9]*$/
    }
    $("#reset").click(function(){
    	reset();
    });
	$submit.click(function(){
		hidemsg();
		$("#contactForm .form-control").each(function(){
			if($(this).val() == ""){
				showmsg($(this).attr("name") + " can't be null!",$(this));
				return false;
			}
		});
		if(!(regBox.regEmail.test($email.val()))){
			showmsg("Please enter a valid email!",$email);
			return false;
		}
		if(!(regBox.regTel.test($phone.val()))){
			showmsg("Please enter a valid phone!",$phone);
			return false;
		}		
        $.ajax({
			url: "${base}/contact/save.jhtml",
			type: "POST",
			data:  {
                email: $email.val(),
                content: $content.val(),
                firstname: $firstname.val(),
                lastname: $lastname.val(),
                company: $company.val(),
                phone:$phone.val()
            },
			dataType: "json",
			cache: false,
			success: function(res) {
				if(res.type == "error"){
					showmsg(res.content);					
				}else{			
					$alert.removeClass("alert-danger").addClass("alert-success");
					showmsg(res.content);
					reset();
					$submit.unbind("click");
				}
				
			}
		});				
	});
	function reset(){
		$("input[type = text]").val('');
		$("textarea").val('');
	}
	function showmsg(msg,$p){
		if($p){
			$p.closest("div").addClass("has-error");
		}
		$msabox.find("#msg").html(msg);
		$msabox.show();
	}	
	function hidemsg(){
		$msabox.hide();
		$(".form-group").find("div").removeClass("has-error");
	}
});

</script>
</html>