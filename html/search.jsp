<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="net.sf.json.JSONObject"  %>
<%@page import="net.sf.json.JSONArray" %>
<%@page import="java.io.File" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->
	
    <!-- Title -->
    <title>One Music - Modern Music HTML5 Template</title>

    <!-- Favicon -->
    <link rel="icon" href="img/core-img/favicon.ico">

    <!-- Stylesheet -->
    <link rel="stylesheet" href="style.css">
    
    <!-- search2 -->
    <!--html5默认设置-->
    <link rel="stylesheet" href="css/normalize.css" />
    <!--css3必要样式-->
    <link
      rel="stylesheet"
      href="styleone.css"
      media="screen"
      type="text/css"
    />
  </head>

</head>

<body>
	<script src="http://libs.baidu.com/jquery/2.1.4/jquery.min.js"></script>
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
                        <span class="navbarToggler"></span>
                    </div>

                    <section class="webdesigntuts-workshop">
                        <form action="/Hello/songSearchServlet" method="post">
                          <input name="item" type="search" placeholder="欢迎来到HCGL音乐世界" />
                          <!-- <input id="test" style="width: 82px;height: 40px" type="submit" value="搜索"> -->
                          <button>搜索</button>
                        </form>
                      </section>
                      <%
                      	JSONObject json = (JSONObject)session.getAttribute("json");
                      %>
                      
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
                                        <li><a href="blog.jsp">我的</a></li>
                                        <!-- <li><a href="contact.html">Contact</a></li> -->
                                        <!-- <li><a href="elements.html">Elements</a></li> -->
                                        <li><a href="login.html">登录</a></li>
                                       
                                    </ul>
                                </li>
                                <li><a href="singer.html">歌手</a></li>
                                <li><a href="blog.jsp">我的</a></li>
                                <!-- <li><a href="contact.html">Contact</a></li> -->
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
<!-- ##### Header Area End ##### -->

    <!-- ##### Hero Area Start ##### -->
    <section class="hero-area">
        <div class="hero-slides owl-carousel">
            <!-- Single Hero Slide -->
            <div class="single-hero-slide d-flex align-items-center justify-content-center">
                <!-- Slide Img -->
                <div class="slide-img bg-img" style="background-image: url(img/bg-img/bg-1.jpg);"></div>
                <!-- Slide Content -->
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <div class="hero-slides-content text-center">
                                <h6 data-animation="fadeInUp" data-delay="100ms">Designed Concise</h6>
                                <h2 data-animation="fadeInUp" data-delay="300ms">HCGL Time <span>HCGL Time</span></h2>
                                <a data-animation="fadeInUp" data-delay="500ms" href="song.html" class="btn oneMusic-btn mt-50">发现 <i class="fa fa-angle-double-right"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Single Hero Slide -->
            <div class="single-hero-slide d-flex align-items-center justify-content-center">
                <!-- Slide Img -->
                <div class="slide-img bg-img" style="background-image: url(img/bg-img/bg-2.jpg);"></div>
                <!-- Slide Content -->
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <div class="hero-slides-content text-center">
                                <h6 data-animation="fadeInUp" data-delay="100ms">Designed Concise</h6>
                                <h2 data-animation="fadeInUp" data-delay="300ms">CCNU Music <span>CCNU Music</span></h2>
                                <a data-animation="fadeInUp" data-delay="500ms" href="singer.html" class="btn oneMusic-btn mt-50">发现 <i class="fa fa-angle-double-right"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ##### Hero Area End ##### -->

    <!-- ##### Latest Albums Area Start ##### -->
    		<form>
    			<div>
    			   <div>
                    <button class="search-icon" onClick="searchToggle(this, event);">
                      <span></span>
                    </button>
                  </div>
                  <span class="close" onClick="searchToggle(this, event);"></span>
                  <div class="result-container"></div>
                </div>
            </form>
          

            <div class="row">
                <div class="col-12">
                    <div class="albums-slideshow owl-carousel">
                        

                       
                    </div>
                </div>
            </div>
        
    <!-- ##### Latest Albums Area End ##### -->
            
    <!-- ##### Buy Now Area End ##### -->

    <!-- ##### Miscellaneous Area Start ##### -->
    <section class="miscellaneous-area section-padding-100-0">
        <div class="container">
            <div class="row">
                <!-- ***** Weeks Top ***** -->
                <div class="col-12 col-lg-4">
                    <div class="weeks-top-area mb-100">
                        <div class="section-heading text-left mb-50 wow fadeInUp" data-wow-delay="50ms">
                            <p>猜 你 喜 欢</p>
                            <h2>You may like</h2>
                        </div>

                        <!-- Single Top Item -->
                          <!-- Single Top Item -->
                        <div class="single-top-item d-flex wow fadeInUp" data-wow-delay="100ms">
                            <div class="thumbnail">
                                <img src="img/bg-img/wt1.jpg" alt="">
                            </div>
                            <div class="content-">
                                <h6>流行</h6>
                            </div>
                        </div>

                        <!-- Single Top Item -->
                        <div class="single-top-item d-flex wow fadeInUp" data-wow-delay="150ms">
                            <div class="thumbnail">
                                <img src="img/bg-img/wt2.jpg" alt="">
                            </div>
                            <div class="content-">
                                <h6>电子</h6>
                            </div>
                        </div>

                        <!-- Single Top Item -->
                        <div class="single-top-item d-flex wow fadeInUp" data-wow-delay="200ms">
                            <div class="thumbnail">
                                <img src="img/bg-img/wt3.jpg" alt="">
                            </div>
                            <div class="content-">
                                <h6>民谣</h6>
                            </div>
                        </div>

                        <!-- Single Top Item -->
                        <div class="single-top-item d-flex wow fadeInUp" data-wow-delay="250ms">
                            <div class="thumbnail">
                                <img src="img/bg-img/wt4.jpg" alt="">
                            </div>
                            <div class="content-">
                                <h6>轻音乐</h6>
                            </div>
                        </div>

                        <!-- Single Top Item -->
                        <div class="single-top-item d-flex wow fadeInUp" data-wow-delay="300ms">
                            <div class="thumbnail">
                                <img src="img/bg-img/wt5.jpg" alt="">
                            </div>
                            <div class="content-">
                                <h6>摇滚</h6>
                            </div>
                        </div>

                        <!-- Single Top Item -->
                        <div class="single-top-item d-flex wow fadeInUp" data-wow-delay="350ms">
                            <div class="thumbnail">
                                <img src="img/bg-img/wt6.jpg" alt="">
                            </div>
                            <div class="content-">
                                <h6>爵士</h6>
                            </div>
                        </div>

                    </div>
                </div>

                <!-- ***** Search Songs For Users ***** -->
                <div class="col-12 col-lg-4">
                    <div class="new-hits-area mb-100">
                        <div class="section-heading text-left mb-50 wow fadeInUp" data-wow-delay="50ms">
                            <p>H C G L 已 为 你 找 到</p>
                            <h2>Search for you</h2>
                        </div>
						<%
							JSONArray jsonArr = json.getJSONArray("data");
                            if(jsonArr != null){                           	
                            	for (int i = 0;i < jsonArr.size() && i < 6; i++) {
                        	           JSONObject jsonObject = jsonArr.getJSONObject(i);
                        	           String sname = jsonObject.getString("sname");
                        	           String vname = jsonObject.getString("vname");
                        	           String fileName = jsonObject.getString("sadd");
                        	           fileName = fileName.substring(fileName.lastIndexOf("/")+1);
                        	           //out.print(sname + "\t" + vname + "\t" + fileName);
                        	           String content = "<div class=\"single-new-item d-flex align-items-center justify-content-between wow fadeInUp\" data-wow-delay=\"100ms\">"
                        	        		   +"<div class=\"first-part d-flex align-items-center\">"
                        	        		    + "<div class=\"thumbnail\">"
                        	        		    +"<img src=\"img/bg-img/wt" + (i + 7) +".jpg\" >"
                        	        		    +"</div>"
                        	        		    +"<div class=\"content-\">"
                        	        		    +"<h6>" + vname + "</h6>" + "<p>" + sname + "</p>"
                        	        		    +"</div></div>"
                        	        		    //+"<audio preload=\"auto\" controls=\"controls\" onclick=\"myFunction()\"></audio>"
                        	        		    +"<script>"
                        	        		    +	"function myfunction" + i + "(){"
			                        	       	//+	"var item = document.getElementById(\"test\");"
			                        	       	//+	"console.log(item.value);"
			                        	       	+	"window.location.href='/Hello/sendSingPathServlet?path=" + fileName+ "'"
			                        	       	+"}"
			                        	        +"</script>"
                        	        		    +"<button style=\"width: 30px;height: 30px;border-radius:50%;border: 1px;solid #d5d5d5;\"onclick=\"myfunction" + i + "()\"><span >∨</span></button>"	    
                        	        		    +"</div>";
                        	          out.println(content);
                        	    }
                            }
                       		
						%>
                        <!-- 
                        <div class="single-new-item d-flex align-items-center justify-content-between wow fadeInUp" data-wow-delay="100ms">
                            <div class="first-part d-flex align-items-center">
                                <div class="thumbnail">
                                    <img src="img/bg-img/wt7.jpg" alt="">
                                </div>
                                <div class="content-">
                                
                                    <h6></h6>
                                    <p></p>
                                </div>
                            </div>
                            <audio preload="auto" controls="controls">
                            	<a href="elements.html">s</a>
                                <source src="../../upload/migu_七里香.flac" type="audio/mpeg">
                            </audio>
                        </div>

                        
                        <div class="single-new-item d-flex align-items-center justify-content-between wow fadeInUp" data-wow-delay="150ms">
                            <div class="first-part d-flex align-items-center">
                                <div class="thumbnail">
                                    <img src="img/bg-img/wt8.jpg" alt="">
                                </div>
                                <div class="content-">
                                    <h6>Power Play</h6>
                                    <p>In my mind</p>
                                </div>
                            </div>
                            <audio preload="auto" controls>
                                <source src="audio/dummy-audio.mp3">
                            </audio>
                        </div>

                        
                        <div class="single-new-item d-flex align-items-center justify-content-between wow fadeInUp" data-wow-delay="200ms">
                            <div class="first-part d-flex align-items-center">
                                <div class="thumbnail">
                                    <img src="img/bg-img/wt9.jpg" alt="">
                                </div>
                                <div class="content-">
                                    <h6>Cristinne Smith</h6>
                                    <p>My Music</p>
                                </div>
                            </div>
                            <audio preload="auto" controls>
                                <source src="audio/dummy-audio.mp3">
                            </audio>
                        </div>

                       
                        <div class="single-new-item d-flex align-items-center justify-content-between wow fadeInUp" data-wow-delay="250ms">
                            <div class="first-part d-flex align-items-center">
                                <div class="thumbnail">
                                    <img src="img/bg-img/wt10.jpg" alt="">
                                </div>
                                <div class="content-">
                                    <h6>The Music Band</h6>
                                    <p>Underground</p>
                                </div>
                            </div>
                            <audio preload="auto" controls>
                                <source src="audio/dummy-audio.mp3">
                            </audio>
                        </div>

                        
                        <div class="single-new-item d-flex align-items-center justify-content-between wow fadeInUp" data-wow-delay="300ms">
                            <div class="first-part d-flex align-items-center">
                                <div class="thumbnail">
                                    <img src="img/bg-img/wt11.jpg" alt="">
                                </div>
                                <div class="content-">
                                    <h6>Creative Lyrics</h6>
                                    <p>Songs and stuff</p>
                                </div>
                            </div>
                            <audio preload="auto" controls>
                                <source src="audio/dummy-audio.mp3">
                            </audio>
                        </div>

                        
                        <div class="single-new-item d-flex align-items-center justify-content-between wow fadeInUp" data-wow-delay="350ms">
                            <div class="first-part d-flex align-items-center">
                                <div class="thumbnail">
                                    <img src="img/bg-img/wt12.jpg" alt="">
                                </div>
                                <div class="content-">
                                    <h6>The Culture</h6>
                                    <p>Pop Songs</p>
                                </div>
                            </div>
                            <audio preload="auto" controls>
                                <source src="audio/dummy-audio.mp3">
                            </audio>
                        </div>
                     -->
                    </div>
                </div>

                 <!-- ***** Popular Artists ***** -->
                <div class="col-12 col-lg-4">
                    <div class="popular-artists-area mb-100">
                        <div class="section-heading text-left mb-50 wow fadeInUp" data-wow-delay="50ms">
                            <p>流 行 歌 手</p>
                            <h2>Popular Artist</h2>
                        </div>

                        <!-- Single Artist -->
                        <div class="single-artists d-flex align-items-center wow fadeInUp" data-wow-delay="100ms">
                            <div class="thumbnail">
                                <img src="img/bg-img/pa1.jpg" alt="">
                            </div>
                            <div class="content-">
                                <p>周杰伦</p>
                            </div>
                        </div>

                        <!-- Single Artist -->
                        <div class="single-artists d-flex align-items-center wow fadeInUp" data-wow-delay="150ms">
                            <div class="thumbnail">
                                <img src="img/bg-img/pa2.jpg" alt="">
                            </div>
                            <div class="content-">
                                <p>IU</p>
                            </div>
                        </div>

                        <!-- Single Artist -->
                        <div class="single-artists d-flex align-items-center wow fadeInUp" data-wow-delay="200ms">
                            <div class="thumbnail">
                                <img src="img/bg-img/pa3.jpg" alt="">
                            </div>
                            <div class="content-">
                                <p>李健</p>
                            </div>
                        </div>

                        <!-- Single Artist -->
                        <div class="single-artists d-flex align-items-center wow fadeInUp" data-wow-delay="250ms">
                            <div class="thumbnail">
                                <img src="img/bg-img/pa4.jpg" alt="">
                            </div>
                            <div class="content-">
                                <p>薛之谦</p>
                            </div>
                        </div>

                        <!-- Single Artist -->
                        <div class="single-artists d-flex align-items-center wow fadeInUp" data-wow-delay="300ms">
                            <div class="thumbnail">
                                <img src="img/bg-img/pa5.jpg" alt="">
                            </div>
                            <div class="content-">
                                <p>王菲</p>
                            </div>
                        </div>

                        <!-- Single Artist -->
                        <div class="single-artists d-flex align-items-center wow fadeInUp" data-wow-delay="350ms">
                            <div class="thumbnail">
                                <img src="img/bg-img/pa6.jpg" alt="">
                            </div>
                            <div class="content-">
                                <p>太一</p>
                            </div>
                        </div>

                        <!-- Single Artist -->
                        <div class="single-artists d-flex align-items-center wow fadeInUp" data-wow-delay="400ms">
                            <div class="thumbnail">
                                <img src="img/bg-img/pa7.jpg" alt="">
                            </div>
                            <div class="content-">
                                <p>Taylor Swift</p>
                            </div>
                        </div>

                         <!-- Single Artist -->
                         <div class="single-artists d-flex align-items-center wow fadeInUp" data-wow-delay="350ms">
                            <div class="thumbnail">
                                <img src="img/bg-img/pa8.jpg" alt="">
                            </div>
                            <div class="content-">
                                <p>陈奕迅</p>
                            </div>
                        </div>

                         <!-- Single Artist -->
                         <div class="single-artists d-flex align-items-center wow fadeInUp" data-wow-delay="350ms">
                            <div class="thumbnail">
                                <img src="img/bg-img/pa9.jpg" alt="">
                            </div>
                            <div class="content-">
                                <p>泫雅</p>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ##### Miscellaneous Area End ##### -->

    <!-- ##### Contact Area Start ##### -->
    <section class="contact-area section-padding-100 bg-img bg-overlay bg-fixed has-bg-img" style="background-image: url(img/bg-img/bg-2.jpg);">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-heading white wow fadeInUp" data-wow-delay="100ms">
                        <p>See what’s new</p>
                        <h2>Listen To More</h2>
                    </div>
                </div>
            </div>
		</div>
	</section>

    <!-- ##### Footer Area Start ##### -->

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

    <script type="text/javascript">

        $(function(){
            function searchToggle(obj, evt) {
                alert("2");
                var container = $(obj).closest(".search-wrapper");
        
                if (!container.hasClass("active")) {
                    container.addClass("active");
                    evt.preventDefault();
                } else if (
                    container.hasClass("active") &&
                    $(obj).closest(".input-holder").length == 0
                ) {
                    container.removeClass("active");
                    // clear input
                    container.find(".search-input").val("");
                    // clear and hide result container when we press close
                    container.find(".result-container").fadeOut(100, function () {
                    $(this).empty();
                    });
                }
                }
        
                function submitFn(obj, evt) {
                value = $(obj).find(".search-input").val().trim();
        
                _html = "您搜索的关键词： ";
                if (!value.length) {
                    _html = "关键词不能为空。";
                } else {
                    _html += "<b>" + value + "</b>";
                }
        
                $(obj)
                    .find(".result-container")
                    .html("<span>" + _html + "</span>");
                $(obj).find(".result-container").fadeIn(100);
        
                evt.preventDefault();
            }
        })
        
      </script>
</body>

</html>
    <!-- ##### Breadcumb Area Start ##### -->
    <!-- <div class="breadcumb-area bg-img bg-overlay" style="background-image: url(img/bg-img/breadcumb2.jpg);">
        <div class="bradcumbContent">
            <p>一 起 听 音 乐 吧 ！</p>
            <h2>Enjoy Your Time</h2>
        </div>
    </div>


</html> -->