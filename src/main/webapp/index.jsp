<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<% 
	String path=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/";	
%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://unpkg.com/element-ui@2.4.11/lib/theme-chalk/index.css">
</head>
<script src="<%=path%>js/vue.min.js"></script>
<script src="https://unpkg.com/element-ui@2.4.11/lib/index.js"></script>
<body>
<div id="app">
    <el-button @click="visible = true">Button</el-button>
    <el-dialog :visible.sync="visible" title="Hello world">
      <p>Try Element</p>
    </el-dialog>
  </div>
</body>
<script>
new Vue({
    el: '#app',
    data: function() {
      return { visible: false }
    }
  })
</script>
</html>