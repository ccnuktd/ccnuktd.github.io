<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="assets/css/layui.css">
    <link rel="stylesheet" href="assets/css/view.css"/>
    <link rel="icon" href="/favicon.ico">
<title>Insert title here</title>
</head>
<%-- <%
		String username = (String)session.getAttribute("username");
    	String password = (String)session.getAttribute("password"); 
%> --%>
<body>
<div>
		<table class="layui-table" lay-data="{width: 750, height:360, url:'/Hello/listMylove', page:true, id:'test'}" lay-filter="demo">
				<thead>
				<tr>
				<!-- <th
					lay-data="{field:'mylove_Pno', width:200, sort: true,align:'center', fixed: true,page: true}">用户序号</th>
				<th lay-data="{field:'mylove_Sno', width:200,align:'center'}">歌曲序号</th>
				
				<th
					lay-data="{fixed: 'right', width:200, align:'center', toolbar: '#barDemo'}">操作</th> -->
					<th
						lay-data="{field:'sno', width:70, sort: true,align:'center', fixed: true,page: true}">ID</th>
					<th lay-data="{field:'sname', width:132,align:'center'}">歌曲名称</th>
					<th
						lay-data="{field:'vname', width:110, align:'center',sort: true}">歌手名字</th>
					<th
						lay-data="{fixed: 'right', width:200, align:'center', toolbar: '#barDemo'}">操作</th> 
						</tr>
					</thead>
				</table>
			
						<script type="text/html" id="barDemo">
    						<a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="tableDelete">删除</a>
						</script>
</div>
 <script src="./assets/layui.all.js" type="text/javascript"></script>
 <script src="http://libs.baidu.com/jquery/2.1.4/jquery.min.js"></script>
    
	<script>
		layui.use('table', function() {
			var table = layui.table;
			//监听表格复选框选择
			table.on('checkbox(demo)', function(obj) {
				console.log(obj)
			});
			//监听工具条
			table.on('tool(demo)', function(obj) {
				var data = obj.data;
				if (obj.event === 'tableDelete') {
					layer.confirm('真的删除行么', function(index) {
						obj.del();
						$.ajax({
							type : "get",
							url : "/Hello/deleteMylove?sno=" + data.sno,
							
							dataType : "json"
						}); 
						layer.close(index);
					});
				}
			});
		});
	</script>
</body>
</html>