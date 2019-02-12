<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getScheme() + "://" + request.getServerName() + ":" + request.getLocalPort()
			+ request.getContextPath() + "/";
%>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="Cache-Control" content="no-cache">
    <title>jquery.tree-multiselect</title>

    <link href="<%=path %>css/tree/bootstrap.min.css" rel="stylesheet" />
    <link href="<%=path %>css/tree/jquery.tree-multiselect.min.css" rel="stylesheet" />
     <link href="<%=path %>css/tree/style.min.css" rel="stylesheet" />
	 	<link rel="stylesheet" href="<%=path %>css/tree/jquery-ui.css">

    <style>
    #addRole{
    margin-left: 100px;
    margin-bottom: 100px;
    }
        .rightSize {
            margin-right: 5px;
        }
		.therightSize{
			
		}
        body {
            padding: 20px;
        }
        #treeSelectTable {
            width: 80%;
        }
        #treeSelectTable tr th,#treeSelectTable tr td {
            text-align: center;
        }
    </style>
	
</head>
<body class="gray-bg2">
<p><%=path %></p>
    <div class="wrapper wrapper-content"  id="statisipDataArea">
		
        <div id="statisipArea" class="">
            <h3>角色管理</h3>
            <button id="addRole" type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#addRoleModal">添加角色</button>
            <table id="treeSelectTable" class="table table-striped table-bordered">
                <thead>
                    <tr><td>序号</td><td>角色名称</td><td>角色描述</td><td>操作</td></tr>
                </thead> 
                <tbody id="treeSelectBody">
                <c:forEach var="role" items="${roleList}"  varStatus="num">
                 <tr>
            		<td>${num.index+1}</td>
           		 	<td>${role.roleName}</td>
            		<td>${role.roleDetails}</td>
            		<td> 
                	<button class="btn btn-info btn-sm  modifyRoleBtn rightSize" type="button" data-id='${role.roleId}' ><i class="fa fa-paste"></i> 修改</button>
               		<button class="btn btn-primary btn-sm grantAuthorityBtn rightSize" type="button" data-id='${role.roleId}'><i class="fa fa-external-link"></i> 授权</button>
					<button class="btn btn-danger btn-sm deleteBtn rightSize" type="button" data-id='${role.roleId}'><i class="fa fa-paste"></i>删除</button>
            		</td>
        		</tr>
        		</c:forEach>
                </tbody>
            </table> 
        </div>
     
 
    </div>
 	
     <!--给用户分配角色modal-->
    <div class="modal inmodal fade" id="grantAuthorityModal" tabindex="-1" role="dialog" aria-hidden="true" data-backdrop="static" data-keyboard="false" >
        <div class="modal-dialog">
            <div class="modal-content animated fadeIn">
                <div class="modal-header btn-primary">
                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">关闭</span>
                    </button>
                    <h4 class="modal-title" id="AuthorityTitle"></h4>
                </div>
                <div class="modal-body" id="authorityBody">
				
                </div>
                <div class="modal-footer"  id="perbutton">
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                    <button type="button" class="btn btn-primary" id="authoritysubmit" >提交</button>
                </div>
            </div>
        </div>
    </div>

     <!--修改角色信息modal-->
	<div class="modal fade" id="roleModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  		<div class="modal-dialog" role="document">
    		<div class="modal-content">
      			<div class="modal-header">
        			<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        			<h4 class="modal-title" id="myModalLabel">修改角色信息</h4>
      			</div>
      			<div class="modal-body" id="roleUpdateBody">
        		...
      			</div>
      			<div class="modal-footer" id="buttonBody">
        			<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
        			<button type="button" class="btn btn-primary" id="updateSave">确认保存</button>
      			</div>
   	 		</div>
  		</div>
	</div>
	
	<!--删除角色信息modal-->
	<div class="modal fade bs-example-modal-sm" id="roleDeleteModal" tabindex="-1"  role="dialog" aria-labelledby="myModalLabel">
  		<div class="modal-dialog" role="document">
    		<div class="modal-content">
      			<div class="modal-header">
        			<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        			<h4 class="modal-title" id="myModalLabel">删除角色</h4>
      			</div>
      			<div class="modal-body" id="roleDeleteBody">
        		 
      			</div>
      			<div class="modal-footer" id="buttonBody2">
        			<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
        			<button type="button" class="btn btn-primary" id="deleteSave">确认删除</button>
        			<div></div>
      			</div>
   	 		</div>
  		</div>
	</div>
	
	
	<!--添加角色信息modal-->
	<div class="modal fade"  id="addRoleModal"  tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  		<div class="modal-dialog" role="document">
    		<div class="modal-content">
      			<div class="modal-header">
        			<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        			<h4 class="modal-title" id="myModalLabel">添加角色信息</h4>
      			</div>
      			<div class="modal-body" id="roleAddBody">
        		<form class="form-horizontal">
  					<div class="form-group">
    				<label for="inputEmail3" class="col-sm-2 control-label">角色名称</label>
    				<div class="col-sm-10">
      				<input type="text" class="form-control" id="addrolename" placeholder="Email">
    				</div>
  					</div>
  					<div class="form-group">
    				<label for="inputPassword3" class="col-sm-2 control-label">角色详情</label>
    				<div class="col-sm-10">
      				<input type="text" class="form-control" id="addroledetails" placeholder="Password">
    				</div>
  					</div>
  				</form>
      			</div>
      			<div class="modal-footer" >
        			<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
        			<button type="button" class="btn btn-primary" id="toAdd"  onclick="addrole()">确认添加</button>
      			</div>
   	 		</div>
  		</div>
	</div>
	
    <script id="treeSelect-template" type="text/x-dot-template"></script>
    <script src="<%=path %>js/tree/jquery.min.js"></script>
    <script src="<%=path %>js/tree/jquery-ui.min.js"></script>
    <script src="<%=path %>js/tree/bootstrap.min.js"></script>
    <script src="<%=path %>js/tree/jquery.tree-multiselect.min.js"></script>
    <script src="<%=path %>js/tree/doT.js"></script>
    <!--bootstrap-table-->
    <!--<script src="~/Content/js/plugins/bootstrap-table/bootstrap-table.js"></script>
    <script src="~/Content/js/plugins/bootstrap-table/bootstrap-table-zh-CN.js"></script>
    $1$layer#1#
    <script src="~/Content/js/plugins/layer/layer.min.js"></script>
    $1$封装的ajax数据接口#1#
    <script src="~/Content/js/plugins/doT/doT.js"></script>
    <script src="~/Content/js/commonjs.js"></script>
    <script src="~/Content/js/config.router.js"></script>-->
    <script src="<%=path %>js/rolemanager.js"></script> 
</body>

</html>

