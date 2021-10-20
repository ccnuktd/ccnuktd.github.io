<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<html>
  <head>
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
    />
    <title>bouncePage</title>
    <link
      rel="stylesheet"
      type="text/css"
      href="https://cdn.bootcss.com/sweetalert/1.1.3/sweetalert.min.css"
    />
    <script src="https://apps.bdimg.com/libs/jquery/1.10.2/jquery.min.js"></script>
    <script
      type="text/javascript"
      src="https://cdn.bootcss.com/sweetalert/1.1.3/sweetalert.min.js"
    ></script>
    <script></script>
  </head>

  <body>
    <div style="margin: 50px; text-align: center">
      <input id="confirm" type="button" value="注册成功的提示" /><br>
      <a href="/Hello/html/login.html">点击返回主页面</a>
    </div>
    <script>
      /*type: {'success', 'warning', 'error','loading'}*/
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
      function confirm() {
        showConfirm(
          "success",
          "注册成功！",
          false
        );
      }
    </script>
    <script>
      $(function () {
        $("#confirm").click(function () {
          confirm();
        });
      });
    </script>
  </body>
</html>
