<%@ page language="java" contentType="text/html;charset=utf-8"
    pageEncoding="utf-8"%>
<%
	String username = (String)session.getAttribute("username");
	String password = (String)session.getAttribute("password"); 
	if(username == null || password == null){
		response.sendRedirect("/Hello/html/login.html");
	}
	
%>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8"></meta>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link
      rel="stylesheet"
      type="text/css"
      href="https://cdn.bootcss.com/sweetalert/1.1.3/sweetalert.min.css"
    />
    <script src="https://apps.bdimg.com/libs/jquery/1.10.2/jquery.min.js"></script>
    <script>
      type="text/javascript"
      src="https://cdn.bootcss.com/sweetalert/1.1.3/sweetalert.min.js"
    </script>
    <title>One Music - Modern Music HTML5 Template</title>
	
    <!-- Favicon -->
    <link rel="icon" href="img/core-img/favicon.ico">

    <!-- Stylesheet -->
    <link rel="stylesheet" href="style.css">
    <!-- <script type="text/javascript">
        function showCustomer(str)
        {
        var xmlhttp;    
        if (str=="")
          {
          document.getElementById("txtHint").innerHTML="";
          return;
          }
        if (window.XMLHttpRequest)
          {// code for IE7+, Firefox, Chrome, Opera, Safari
          xmlhttp=new XMLHttpRequest();
          }
        else
          {// code for IE6, IE5
          xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
          }
        xmlhttp.onreadystatechange=function()
          {
          if (xmlhttp.readyState==4 && xmlhttp.status==200)
            {
            document.getElementById("txtHint").innerHTML=xmlhttp.responseText;
            }
          }
        xmlhttp.open("GET","/ajax/getcustomer.asp?q="+str,true);
        xmlhttp.send();
        } -->
        </script>
        <link rel="stylesheet" href="./css/layui.css" />
        <script src="./js/layui.js"></script>
        <style>
        .div {
            display: inline-block;
            padding: .3em .5em;
            border:none;
            background: none;
            border-radius: .3em;        
            text-align: center;        
            color:red;        
            font-weight: bold;        
        }       
        .div:active{        
            box-shadow: .05em .1em .2em rgba(0,0,0,.6) inset;       
            border-color: rgba(0,0,0,.3);        
            background: #bbb;        
        }
        .star {
            color: orange;
            padding-left: 9px;
        }
        </style>
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
                            </div>

                            <!-- Nav Start -->
                            <div class="classynav">
                                <ul>
                                    <li><a href="index.html">主页</a></li>
                                    <li><a href="song.html">歌曲</a></li>
                                    <li><a href="#">选项</a>
                                        <ul class="dropdown">
                                            <li><a href="index.html">主页</a></li>
                                            <li><a href="song.html">歌曲</a></li>
                                            <li><a href="singer.html">歌手</a></li>
                                            <li><a href="blog.html">我的</a></li>
                                            <li><a href="login.html">登录</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="singer.html">歌手</a></li>
                                    <li><a href="blog.html">我的</a></li>
                                </ul>

                                <!-- Login/Register & Cart Button -->
                                <div class="login-register-cart-button d-flex align-items-center">
                                    <!-- Login/Register -->
                                    <div class="login-register-btn mr-50">
                                        <a href="login.html" id="loginBtn">登录 / 退出</a>
                                    </div>

                                    <!-- Cart Button -->
                                    <div class="cart-btn">
                                        <!-- <p><span class="icon-shopping-cart"></span> <span class="quantity">1</span></p> -->
                                    </div>
                                </div>
                            </div>
                            <!-- Nav End -->

                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </header>

                                <!-- Login/Register & Cart Button -->
                                <div class="login-register-cart-button d-flex align-items-center"></div>
                    
    <!-- ##### Header Area End ##### -->

    <!-- ##### Breadcumb Area Start ##### -->
    <section class="breadcumb-area bg-img bg-overlay" style="background-image: url(img/bg-img/breadcumb3.jpg);">
        <div class="bradcumbContent">
            <p>我的音乐小窝</p>
            <h2>Like</h2>
        </div>
    </section>
    <!-- ##### Breadcumb Area End ##### -->

    

                    <!-- Pagination -->
             <div class="oneMusic-pagination-area wow fadeInUp" data-wow-delay="300ms">
                 <nav>
                     <ul class="pagination">
                         <li class="page-item active"><a class="page-link" href="#">H</a></li>
                         <li class="page-item"><a class="page-link" href="#">C</a></li>
                         <li class="page-item"><a class="page-link" href="#">G</a></li>
                         <li class="page-item"><a class="page-link" href="#">L</a></li>
                         
                     </ul>
                 </nav>
             </div>
                <iframe width="800px" height="390px" style="float:right;padding:0 0 20px 0;" src = "mylove.jsp">
                	
                </iframe>
							
                <div class="col-12 col-lg-3">
                    <div class="blog-sidebar-area">

                        <!-- Widget Area -->
                        <div class="single-widget-area mb-30">
                            <div class="widget-title">
                               <form style="margin-top:15px"> 
                                 <h5>我的喜欢
                                    <button class="layui-icon div" type="button">&#xe68f;</button>
                                </h5>    
                                </form>
                            </div>
                        </div>

                        <!-- Widget Area -->
                        <div class="single-widget-area mb-30">
                            <div class="widget-title">
                                <h5>我的收藏
                                    <i class="layui-icon star" >&#xe658;</i> 
                                </h5>
                            </div>
                            <div class="widget-content">
                                <ul>
                                    <li><a href="#">功能尚未开放</a></li>
                                    <li><a href="#">尽请期待</a></li>
                                    
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
           
    <!-- ##### Footer Area Start ##### -->
<!-- ##### Contact Area Start ##### -->
<section class="contact-area section-padding-100 bg-img bg-overlay bg-fixed has-bg-img" style="background-image: url(img/bg-img/bg-2.jpg);">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="section-heading white wow fadeInUp" data-wow-delay="100ms">
                    <p>更 多 音 乐 世 界 等 待 发 现</p>
                    <h2>our story is continue</h2>
                </div>
            </div>
        </div>
	</div>
</section>
    
    <script src="js/jquery/jquery-2.2.4.min.js"></script>
    <script src="js/bootstrap/popper.min.js"></script>
    <script src="js/bootstrap/bootstrap.min.js"></script>
    <script src="js/plugins/plugins.js"></script>
    <script src="js/active.js"></script>
    <div style="margin: 50px; text-align: center">
    <form action="exit.jsp"  method="post">
             <input id="alertCallBack" type="submit" value="是否注销当前账号"/><br>
             
    </form>
             <script>
		      function showConfirm(
		        type,
		        info,
		        action,
		        showCancelButton,
		        showConfirmButton
		      ) {
		        swal(
		          {
		            title: "消息提示",
		            text: info,
		            type: type,
		            showCancelButton: showCancelButton,
		            cancelButtonText: "取消",
		            cancelButtonColor: "#B9B9B9",
		            showConfirmButton: showConfirmButton,
		            confirmButtonColor: "#DD6B55",
		            confirmButtonText: "确认",
		            closeOnConfirm: true,
		            closeOnCancel: true,
		          },
		          action
		        );
		      }
		    </script>

						<script>
		      function alertCallBack() {
		        showConfirm(
		          "info",
		          "注销成功！",
		          false          
		        );
		      }
		    </script>
			<script>
		      $(function () {
		        $("#alertCallBack").click(function () {
		          alertCallBack();
		        });
		      });
		    </script>
		</div>
</body>

</html>