<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%
		String username = (String)session.getAttribute("username");
    	String password = (String)session.getAttribute("password"); 
   		String path = (String)session.getAttribute("singpath");
   		//out.println(username + " " + password + " " + path);
		if(username == null ){
			response.sendRedirect("/Hello/html/login.html");
		}
	%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title -->
    <title>One Music - Modern Music HTML5 </title>

    <!-- Favicon -->
    <link rel="icon" href="img/core-img/favicon.ico">
    <link href="">

    <!-- Stylesheet -->
    <link rel="stylesheet" href="style.css">
    <style>
        .a{
            display: inline-block;
            width: 30px;
            height: 30px;
            color: white;
        }
        .b{
            display: inline-block;
            width: 30px;
            height: 30px;
            color: white;
        }
        .c{
            display: inline-block;
            width: 30px;
            height: 30px;
            color: white;
        }
        .red{
            color:red;
        }
        .yellow{
            color: yellow;
        }
        .aqua{
            color: aqua;
        }
    </style>
    <link rel="stylesheet" href="/Hello/html/css/layui.css">
    <script src="/Hello/html/js/layui.js"></script>
    <script src="http://libs.baidu.com/jquery/2.1.4/jquery.min.js"></script>
</head>

<body>
    <!-- Preloader -->
    <div class="preloader d-flex align-items-center justify-content-center">
        <div class="lds-ellipsis">
            <div></div>
            <div></div>
            <div></div>
            <div></div>
        </div>
    </div>

    <!-- ##### Header Area Start ##### -->
    <header class="header-area">
        <!-- Navbar Area -->
        <div class="oneMusic-main-menu">
            <div class="classy-nav-container breakpoint-off">
                <div class="container">
                    <!-- Menu -->
                    <nav class="classy-navbar justify-content-between" id="oneMusicNav">

                        <!-- Nav brand -->
                        <a href="index.html" class="nav-brand"><img src="img/core-img/logo.png" alt=""></a>

                        <!-- Navbar Toggler -->
                        <div class="classy-navbar-toggler">
                            <span class="navbarToggler"><span></span><span></span><span></span></span>
                        </div>

                        <!-- Menu -->
                        <div class="classy-menu">

                            <!-- Close Button -->
                            <div class="classycloseIcon">
                                <div class="cross-wrap"><span class="top"></span><span class="bottom"></span></div>
                            <!-- </div> -->

                               

                                    <!-- Cart Button -->
                                    <!-- <div class="cart-btn">
                                        <p><span class="icon-shopping-cart"></span> <span class="quantity">1</span></p>
                                    </div>
                                </div>
                            </div> -->
                            <!-- Nav End -->

                        </div>
                    	</div>
                    </nav>
                </div>
            </div>
        </div>
    </header>
    <!-- ##### Header Area End ##### -->

    <!-- ##### Breadcumb Area Start ##### -->
    <div class="breadcumb-area bg-img bg-overlay" style="background-image: url(img/bg-img/breadcumb2.jpg);">
        <div class="bradcumbContent">
            <p>一 起 听 音 乐 吧 ！</p>
            <h2>Enjoy Your Time</h2>
        </div>
    </div>

    <!-- ##### Breadcumb Area End ##### -->

                <!-- ##### Accordians ##### -->
                <div class="col-12 col-lg-6">
                    <div class="accordions mb-100" id="accordion" role="tablist" aria-multiselectable="true">
                      
               
                <!-- ========== Milestones ========== -->
                <div class="col-12">
                    <div class="elements-title mb-70">
                        <h2>这是为你精选的歌</h2>
                    </div>
                </div>
 <!-- Single Song Area -->
 <div class="col-12">
    <div class="single-song-area mb-30 d-flex flex-wrap align-items-end">
    <div class="song-thumbnail">
            <img src="img/bg-img/a21.jpg" alt="">
        </div>  
        <div class="song-play-area">
            <div class="song-name">
                <p style="float: left;">01.Song</p>
                <p style="float: right;">                
                    <!-- <button style="font-size: 5px;width: 30px; height: 30.4px;" onclick="myFunction1()">喜欢</button> -->
                    <!-- <button style="font-size: 5px;width: 30px; height: 30.4px;" onclick="myFunction2()">收藏</button> -->
                    <!-- <i class="layui-icon layui-icon-heart a" style="font-size: 30px;"></i> -->
                    <!-- <i class="layui-icon layui-icon-star b" style="font-size: 28px;"></i> -->
                    <!-- <i class="layui-icon layui-icon-download-circle c" style="font-size: 30px;"></i> -->
                    <!-- <button style="font-size: 5px;width: 30px; height: 30.4px;" onclick="myFunction3()">下载</button> -->
                    <a href='/Hello/insertMyloveServlet?path=<%=path%>'><span class="layui-icon layui-icon-heart" style="font-size:30px;color:white"></span></a>
                    <a href="#"><span class="layui-icon layui-icon-star" style="color:white;font-size:28px"></span></a>
                    <a href='/Hello/DownLoadServlet?filename=<%=path%>'><span class="layui-icon layui-icon-download-circle" style="font-size:30px;color:white"></span></a>
                </p>
				<!-- "<div class=\"song-play-area\">"
            	+"<div class=\"song-name\">"
            	+"<p style=\"float: left;\">01. Main Hit Song</p>"
            	+"<p style=\"float: right;\">"
            	+"<a href='/Hello/insertMyloveServlet?path=" +path +"><span class=\"layui-icon layui-icon-heart\" style=\"font-size:30px;color:white\"></span></a>"
            	+"<a href=\"#\"><span class=\"layui-icon layui-icon-star\" style=\"color:white;font-size:28px\"></span></a>"
            	+ "<a href=\"#\"><span class=\"layui-icon layui-icon-star\" style=\"color:white;font-size:28px\"></span></a>"
          		+ "<a href='/Hello/DownLoadServlet?filename=" + path + "'><span class=\"layui-icon layui-icon-download-circle\" style=\"font-size:30px;color:white\"></span></a>"
            	+  -->
            </div>
            <%
            String ss = "<audio preload=\"auto\" controls=\"controls\">"
            	+ "<source src=\"../../upload/" + path + "\">"
            	+ "</audio>";
            out.println(ss);
            %>
        </div>
    </div>
</div>
                <div class="col-12">
                    <div class="oneMusic-cool-facts-area">
                        <div class="row">
                            <!-- Single Cool Facts -->
                            <div class="col-12 col-sm-6 col-lg-2">
                                <div class="single-cool-fact mb-100">
                                    <div class="scf-text">
                                        <h3><span class="counter">19</span>k</h3>
                                        <p>Followers on HCGL</p>
                                    </div>
                                </div>
                            </div>

                            <!-- Single Cool Facts -->
                            <div class="col-12 col-sm-6 col-lg-2">
                                <div class="single-cool-fact mb-100">
                                    <div class="scf-text">
                                        <h3><span class="counter">732</span></h3>
                                        <p>New Artists</p>
                                    </div>
                                </div>
                            </div>

                            <!-- Single Cool Facts -->
                            <div class="col-12 col-sm-6 col-lg-2">
                                <div class="single-cool-fact mb-100">
                                    <div class="scf-text">
                                        <h3><span class="counter">2401</span></h3>
                                        <p>New Songs</p>
                                    </div>
                                </div>
                            </div>

                            <!-- Single Cool Facts -->
                            <div class="col-12 col-sm-6 col-lg-2">
                                <div class="single-cool-fact mb-100">
                                    <div class="scf-text">
                                        <h3><span class="counter">28</span></h3>
                                        <p>Awards Won</p>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>

                        
                    </div>
                </div>
                                
            
    <!-- </section> -->
    <!-- ***** Elements Area End ***** -->




    
   <!-- ##### Contact Area Start ##### -->
   <section class="contact-area section-padding-100 bg-img bg-overlay bg-fixed has-bg-img" style="background-image: url(img/bg-img/bg-2.jpg);">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="section-heading white">
                    <p>更 多 音 乐 世 界 等 待 发 现</p>
                    <h2>our story is continue</h2>
                </div>
            </div>
        </div>
	</div>
</section>
Copyright &copy;<script>document.write(new Date().getFullYear());</script> This web is made with HY,CQ,GL,LYC <i class="fa fa-heart-o" aria-hidden="true"></i>



    <!-- ##### All Javascript Script ##### -->
    <!-- jQuery-2.2.4 js -->
    <script src="js/jquery/jquery-2.2.4.min.js"></script>
    <!-- Popper js -->
    <script src="js/bootstrap/popper.min.js"></script>
    <!-- Bootstrap js -->
    <script src="js/bootstrap/bootstrap.min.js"></script>
    <!-- All Plugins js -->
    <script src="js/plugins/plugins.js"></script>
    <!-- Active js -->
    <script src="js/active.js"></script>

    <script>
        $(function(){
            $(".a").click(function(){
                $(".a").addClass("red");
            })
        })
    </script>
    <script>
        $(function(){
            $(".b").click(function(){
                $(".b").addClass("yellow");
            })
        })
    </script>  
    <script>
        $(function(){
            $(".c").click(function(){
                $(".c").addClass("aqua");
            })
        })
    </script> 
</body>

</html>