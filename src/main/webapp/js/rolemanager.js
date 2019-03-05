var MoniterIndex = function(config) {
    var self = this;
   
    var showTreeSelectData = function () {
//        $.ajax({
//            url: 'systemAction/getAllRole.action',
//            method: 'get',
//            dataType: 'json',
//            contentType: "application/json",
//            success: function (data) {
//                console.log(data);
//                var datas = {};
//                for (var i = 0; i < data.length; i++) {
//                    datas.i = i+1;
//                    datas.rolename = data[i].rolename;
//                    datas.createTime = data[i].createTime;
//                    datas.roleDescription = data[i].roleDescription;
//                    var source = $("#treeSelect-template").html();
//                    var template = doT.template(source);
//                    var htmlstr = template(datas);
//                    $("#treeSelectBody").append(htmlstr);
//                }
//
//            },
//            error: function (res) {
//                console.log(res);
//            }
//        });
    }
    self.initData = function () {
        showTreeSelectData(); 
    }
}


$(function() {
    window.monitorIndex = new MoniterIndex();
    monitorIndex.initData();
});


$(function () {
	//修改
	$("#treeSelectBody").on('click', '.modifyRoleBtn', function () {
		var dataId=$(this).data('id');
		console.log("修改的id---"+dataId);
		//获取当前网址，如： http://localhost:8083/uimcardprj/share/meun.jsp 
		var curWwwPath=window.document.location.href;  
	    //获取主机地址之后的目录，如： uimcardprj/share/meun.jsp  
	    var pathName=window.document.location.pathname;  
	    var pos=curWwwPath.indexOf(pathName);  
	    //获取主机地址，如： http://localhost:8083  
	    var localhostPaht=curWwwPath.substring(0,pos);  
	    //获取带"/"的项目名，如：/uimcardprj  
	    var projectName=pathName.substring(0,pathName.substr(1).indexOf('/')+1);  
	    
	    var roleBean;
	    
	    //获取角色对象
	       $.ajax({
	            url: localhostPaht+projectName+'/systemAction/getRole.action',
	            method: 'get',
	            async:false,
	            data:{roleId:dataId},
	            dataType: 'json',
	            contentType: "application/json",
	            success: function (data) {
	            	console.log(1111);
	                console.log(data);
	                roleBean=data;
	            },
	            error: function (res) {
	                console.log(res);
	            }
	        });
	       console.log("999---"+roleBean.roleName);
		var html="";
		var htmlB="";
		html+="<form class='form-horizontal'>"
		html+= "<div class='form-group'>";
		html+= "<label for='inputEmail3' class='col-sm-2 control-label' >角色名称</label>";
		html+= "<div class='col-sm-10'>";
		html+= "<input type='text' class='form-control' id='inputrolename' value='"+roleBean.roleName+"' placeholder='请输入角色名称'>";
		html+= "</div>";
		html+= "</div>";
		html+= "<div class='form-group'>";
		html+= "<label for='inputPassword3' class='col-sm-2 control-label'>角色详情</label>";
		html+= "<div class='col-sm-10'>";
		html+= "<input type='text' class='form-control' id='inputroledetails' value='"+roleBean.roleDetails+"' placeholder=''>";
		html+= "</div>";
		html+= "</div>";
		html+= "</form>";
		$("#roleUpdateBody").empty().append(html);
		htmlB+="<button type='button' class='btn btn-default' data-dismiss='modal' >关闭</button>";
		htmlB+="<button type='button' class='btn btn-primary' id='updateSave' onclick='updaterole("+dataId+")'>确认保存</button>"
		$("#buttonBody").empty().append(htmlB);
		$('#roleModal').modal('show');
		console.log("22222222222222222222");
    });
	
	
/*	$('#updateSave').click(function(){

	});*/
	//删除
	$("#treeSelectBody").on('click', '.deleteBtn', function () {
/*		var dataId=$(this).data('id');
		console.log("删除的id---"+dataId);
		//获取当前网址，如： http://localhost:8083/uimcardprj/share/meun.jsp 
		var curWwwPath=window.document.location.href;  
	    //获取主机地址之后的目录，如： uimcardprj/share/meun.jsp  
	    var pathName=window.document.location.pathname;  
	    var pos=curWwwPath.indexOf(pathName);  
	    //获取主机地址，如： http://localhost:8083  
	    var localhostPaht=curWwwPath.substring(0,pos);  
	    //获取带"/"的项目名，如：/uimcardprj  
	    var projectName=pathName.substring(0,pathName.substr(1).indexOf('/')+1);  
	    
	    var roleBean;
	    //获取角色对象
	       $.ajax({
	            url: localhostPaht+projectName+'/systemAction/getRole.action',
	            method: 'get',
	            async:false,
	            data:{roleId:dataId},
	            dataType: 'json',
	            contentType: "application/json",
	            success: function (data) {
	            	console.log(1111);
	                console.log(data);
	                roleBean=data;
	            },
	            error: function (res) {
	                console.log(res);
	            }
	        });
		var html="";
		var html2="";
		html+="是否删除【"+roleBean.roleName+"】这个角色？"
		html2+="<button type='button' class='btn btn-default' data-dismiss='modal'>关闭</button>";
		html2+="<button type='button' class='btn btn-primary' id='deleteSave' onclick='deleterole("+dataId+")'>确认删除</button>";
		$("#roleDeleteBody").empty().append(html);
		$("#buttonBody2").empty().append(html2);
		$('#roleDeleteModal').modal('show');*/
    });

	//授权
    $("#treeSelectBody").on('click', '.grantAuthorityBtn', function () {
		var dataId=$(this).data('id');
		console.log("授权的id---"+dataId);
		//获取当前网址，如： http://localhost:8083/uimcardprj/share/meun.jsp 
		var curWwwPath=window.document.location.href;  
	    //获取主机地址之后的目录，如： uimcardprj/share/meun.jsp  
	    var pathName=window.document.location.pathname;  
	    var pos=curWwwPath.indexOf(pathName);  
	    //获取主机地址，如： http://localhost:8083  
	    var localhostPaht=curWwwPath.substring(0,pos);  
	    //获取带"/"的项目名，如：/uimcardprj  
	    var projectName=pathName.substring(0,pathName.substr(1).indexOf('/')+1);  
	    console.log(localhostPaht+projectName);  

	       var eachOfRolePermission=[];
	       var superPermissionList = [];
	       
	    //获取每个角色的权限
       $.ajax({
            url: localhostPaht+projectName+'/systemAction/getRole.action',
            method: 'get',
            async:false,
            data:{roleId:dataId},
            dataType: 'json',
            contentType: "application/json",
            success: function (data) {
            	console.log(1111);
                console.log(data);
                
                eachOfRolePermission=data.permissionList;

                for (var i = 0; i < data.permissionList.length; i++) {
                	var permission = data.permissionList[i];
                	if(permission.pId==0){
                		superPermissionList.push(permission);
                	}
                }
                console.log("父级---"+superPermissionList);
            },
            error: function (res) {
                console.log(res);
            }
        });
       
       var allPermission=[];
       var allSuperPermissionList=[];
   	 
       //获取全部权限
        $.ajax({
            url: localhostPaht+projectName+'/systemAction/getAllPermission.action',
            method: 'get',
            async:false,
            data:{},
            dataType: 'json',
            contentType: "application/json",
            success: function (data) {
            	   console.log(1111);
                console.log("全部权限---"+data);
                allPermission=data;
                for (var i = 0; i < allPermission.length; i++) {
                	if(allPermission[i].pId==0){
                		allSuperPermissionList.push(allPermission[i]);
                	}
                 	var x = allPermission[i];
                 	console.log(x);
                 }
            },
            error: function (res) {
                console.log(res);
            }
        });
       console.log("----------------------------------------------");
       console.log("所有权限"+allPermission);
       console.log("所有权限的父级权限"+allSuperPermissionList);
       console.log("每一个角色对应的权限"+eachOfRolePermission);
       console.log("每一个角色对应的父级权限"+superPermissionList);
       
       var username = $(this).parents('tr').find('td').eq(1).text();
       console.log(username);
       var html ='<select id="authorifyselect" multiple="multiple">' ;
       
       for (var i = 0; i < allPermission.length; i++) {//所有
    	   
    	   for(var j=0;j<allSuperPermissionList.length;j++){//所有父类
    		   
    		   var flag=false;
    		   
    		   if(allPermission[i].pId==allSuperPermissionList[j].permissionId){
    			  // var eachOfRolePermission=[];
    		      // var superPermissionList = [];
    			   for(var k=0;k<eachOfRolePermission.length;k++){//角色权限
    				   for(var p=0;p<superPermissionList.length;p++){//角色父类权限
    					   if(eachOfRolePermission[k].pId==superPermissionList[p].permissionId){
    						   
    	    				   if(allPermission[i].permissionId==eachOfRolePermission[k].permissionId){
    	    					   flag=true;
    	    					   html+="<option  value='"+allPermission[i].pId+"/"+allPermission[i].permissionId+"' data-section='"+allSuperPermissionList[j].permissionName+"' selected>"+allPermission[i].permissionName+"</option>";
    	    				   }
    					   }
    				   }

    			   }
    			   if(flag){
    				   break;
    			   }else{
    				   html+="<option  value='"+allPermission[i].pId+"/"+allPermission[i].permissionId+"' data-section='"+allSuperPermissionList[j].permissionName+"'>"+allPermission[i].permissionName+"</option>";
    			   }
    		   }
    	   }
       }
       html+='</select>';
       var html2="";
       html2+=" <button type='button' class='btn btn-default' data-dismiss='modal'>关闭</button>";
       html2+=" <button type='button' class='btn btn-primary' id='authoritysubmit'  onclick='setpermission("+dataId+")'>提交</button>";
      
       $("#authorityBody").empty().append(html);
       $("#perbutton").empty().append(html2);
       $("#authorifyselect").treeMultiselect({ searchable: true, hideSidePanel: true });
       $("#AuthorityTitle").text("给 " + username + " 分配权限");
       $("#grantAuthorityModal").modal('show');
       console.log("88888");
       console.log(html);
       console.log(html2);
       console.log("88888");
    });
})

//确认修改
function updaterole(dataId) {
	
	console.log("确认修改！！！  -----"+dataId);
	//获取当前网址，如： http://localhost:8083/uimcardprj/share/meun.jsp 
	var curWwwPath=window.document.location.href;  
    //获取主机地址之后的目录，如： uimcardprj/share/meun.jsp  
    var pathName=window.document.location.pathname;  
    var pos=curWwwPath.indexOf(pathName);  
    //获取主机地址，如： http://localhost:8083  
    var localhostPaht=curWwwPath.substring(0,pos);  
    //获取带"/"的项目名，如：/uimcardprj  
    var projectName=pathName.substring(0,pathName.substr(1).indexOf('/')+1);  
	
	var data={
			roleId:dataId,
			roleName: $('#inputrolename').val() , 
			roleDetails:$('#inputroledetails').val(),
			adminList:{},
			permissionList:{}
	}
	console.log("data---"+$("#inputrolename").val() +"/"+$("#inputroledetails").val());
	console.log(localhostPaht+projectName);
	//去后台修改角色信息
		       $.ajax({
		            url: localhostPaht+projectName+'/systemAction/updateRole.action',
		            method: 'get',
		            async:false,
		            data:{roleId:dataId,
		            		roleName: $('#inputrolename').val() , 
		            		roleDetails:$('#inputroledetails').val(),},
		            dataType: 'json',
		            contentType: "application/json",
		            success: function (data) {

		            	var html="";
		            	 for(var i = 0; i< data.length; i++){
		            		 html+="<tr><td>"+(i+1)+"</td><td>"+data[i].roleName+"</td><td>"+data[i].roleDetails+"</td>";
		            		 html+="<td>";
		            		 html+="<button class='btn btn-info btn-sm  modifyRoleBtn rightSize' type='button' data-id='"+data[i].roleId+"' ><i class='fa fa-paste'></i> 修改</button>";
		            		 html+="<button class='btn btn-primary btn-sm grantAuthorityBtn rightSize' type='button' data-id='"+data[i].roleId+"'><i class='fa fa-external-link'></i> 授权</button>";
		            		 html+="<button class='btn btn-danger btn-sm deleteBtn rightSize' type='button' data-id='"+data[i].roleId+"'><i class='fa fa-paste'></i>删除</button>";
		            		 html+="</td></tr>";
		            	 }
		            	$('#treeSelectBody'). empty().append(html);
		            },
		            error: function (res) {
		                console.log(222);
		            }
		        });
	$('#roleModal').modal('hide');
}

//确认删除
function deleterole(dataId) {
	
	console.log("确认删除！！！-----"+dataId);
	//获取当前网址，如： http://localhost:8083/uimcardprj/share/meun.jsp 
	var curWwwPath = window.document.location.href;
	//获取主机地址之后的目录，如： uimcardprj/share/meun.jsp  
	var pathName = window.document.location.pathname;
	var pos = curWwwPath.indexOf(pathName);
	//获取主机地址，如： http://localhost:8083  
	var localhostPaht = curWwwPath.substring(0, pos);
	//获取带"/"的项目名，如：/uimcardprj  
	var projectName = pathName
			.substring(0, pathName.substr(1).indexOf('/') + 1);

	//去后台删除角色信息
		       $.ajax({
		            url: localhostPaht+projectName+'/systemAction/deleteRole.action',
		            method: 'get',
		            async:false,
		            data:{roleId:dataId},
		            dataType: 'json',
		            contentType: "application/json",
		            success: function (data) {
		            	var html="";
		            	 for(var i = 0; i< data.length; i++){
		            		 html+="<tr><td>"+(i+1)+"</td><td>"+data[i].roleName+"</td><td>"+data[i].roleDetails+"</td>";
		            		 html+="<td>";
		            		 html+="<button class='btn btn-info btn-sm  modifyRoleBtn rightSize' type='button' data-id='"+data[i].roleId+"' ><i class='fa fa-paste'></i> 修改</button>";
		            		 html+="<button class='btn btn-primary btn-sm grantAuthorityBtn rightSize' type='button' data-id='"+data[i].roleId+"'><i class='fa fa-external-link'></i> 授权</button>";
		            		 html+="<button class='btn btn-danger btn-sm deleteBtn rightSize' type='button' data-id='"+data[i].roleId+"'><i class='fa fa-paste'></i>删除</button>";
		            		 html+="</td></tr>";
		            	 }
		            	$('#treeSelectBody'). empty().append(html);
		            },
		            error: function (res) {
		                console.log(res);
		            }
		        });
	
	$('#roleDeleteModal').modal('hide');
}


//确认添加角色
function addrole(){
	console.log("确认添加！！！");
	//获取当前网址，如： http://localhost:8083/uimcardprj/share/meun.jsp 
	var curWwwPath=window.document.location.href;  
    //获取主机地址之后的目录，如： uimcardprj/share/meun.jsp  
    var pathName=window.document.location.pathname;  
    var pos=curWwwPath.indexOf(pathName);  
    //获取主机地址，如： http://localhost:8083  
    var localhostPaht=curWwwPath.substring(0,pos);  
    //获取带"/"的项目名，如：/uimcardprj  
    var projectName=pathName.substring(0,pathName.substr(1).indexOf('/')+1);  
	
	var data={
			roleName: $('#addrolename').val() , 
			roleDetails:$('#addroledetails').val(),
			adminList:{},
			permissionList:{}
	}
	console.log("data---"+$("#inputrolename").val() +"/"+$("#inputroledetails").val());
	console.log(localhostPaht+projectName);
	//去后台添加角色信息
		       $.ajax({
		            url: localhostPaht+projectName+'/systemAction/addRole.action',
		            method: 'get',
		            async:false,
		            data:{
		            		roleName: $('#addrolename').val() , 
		            		roleDetails:$('#addroledetails').val(),},
		            dataType: 'json',
		            contentType: "application/json",
		            success: function (data) {

		            	var html="";
		            	 for(var i = 0; i< data.length; i++){
		            		 html+="<tr><td>"+(i+1)+"</td><td>"+data[i].roleName+"</td><td>"+data[i].roleDetails+"</td>";
		            		 html+="<td>";
		            		 html+="<button class='btn btn-info btn-sm  modifyRoleBtn rightSize' type='button' data-id='"+data[i].roleId+"' ><i class='fa fa-paste'></i> 修改</button>";
		            		 html+="<button class='btn btn-primary btn-sm grantAuthorityBtn rightSize' type='button' data-id='"+data[i].roleId+"'><i class='fa fa-external-link'></i> 授权</button>";
		            		 html+="<button class='btn btn-danger btn-sm deleteBtn rightSize' type='button' data-id='"+data[i].roleId+"'><i class='fa fa-paste'></i>删除</button>";
		            		 html+="</td></tr>";
		            	 }
		            	$('#treeSelectBody'). empty().append(html);
		            },
		            error: function (res) {
		                console.log(222);
		            }
		        });
	$('#addRoleModal').modal('hide');
}

//确认提交设置的授权
function setpermission(dataId){
	//alert('AA');
	var selectedList=[];
	var superList=[];
	var childList=[];
	//var allList=[];
	$('select :selected').each(function() {
		selectedList.push($(this).val());
	console.log($(this).val());
});
	console.log("-------------");
	console.log(selectedList.length);
	console.log(selectedList);
	for(var i=0;i<selectedList.length;i++){
		var flag=true;
		childList.push(selectedList[i].split('/')[1]);
		for(var j=0;j<superList.length;j++){
			if(superList[j]==selectedList[i].split('/')[0]){
				flag=false;
				break;
			}
		}
		if(superList.length==0 || flag==true ){
			superList.push(selectedList[i].split('/')[0]);
		}
	}
	console.log("-------------");
	console.log(superList);
	console.log(childList);
	console.log("授权的id---"+dataId);
	//获取当前网址，如： http://localhost:8083/uimcardprj/share/meun.jsp 
	var curWwwPath=window.document.location.href;  
    //获取主机地址之后的目录，如： uimcardprj/share/meun.jsp  
    var pathName=window.document.location.pathname;  
    var pos=curWwwPath.indexOf(pathName);  
    //获取主机地址，如： http://localhost:8083  
    var localhostPaht=curWwwPath.substring(0,pos);  
    //获取带"/"的项目名，如：/uimcardprj  
    var projectName=pathName.substring(0,pathName.substr(1).indexOf('/')+1);  
    
    var dataX={
 		roleId : dataId.toString(), 
 		superList : superList,
 		childList : childList
    	}
    
//    data:JSON.stringify(dataX),
//    type : 'POST',
//    contentType: "application/json",
//	 dataType : 'json',
	//去后台设置权限
    $.ajax({
         url: localhostPaht+projectName+'/systemAction/setPermission.action',
         //method: 'get',
         //async:false,
         method: 'POST',
         async:false,
         cache:false,
         data:JSON.stringify(dataX),
         dataType: 'json',
         contentType: "application/json",
         success: function (data) {

         	var html="";
         	 for(var i = 0; i< data.length; i++){
         		 html+="<tr><td>"+(i+1)+"</td><td>"+data[i].roleName+"</td><td>"+data[i].roleDetails+"</td>";
         		 html+="<td>";
         		 html+="<button class='btn btn-info btn-sm  modifyRoleBtn rightSize' type='button' data-id='"+data[i].roleId+"' ><i class='fa fa-paste'></i> 修改</button>";
         		 html+="<button class='btn btn-primary btn-sm grantAuthorityBtn rightSize' type='button' data-id='"+data[i].roleId+"'><i class='fa fa-external-link'></i> 授权</button>";
         		 html+="<button class='btn btn-danger btn-sm deleteBtn rightSize' type='button' data-id='"+data[i].roleId+"'><i class='fa fa-paste'></i>删除</button>";
         		 html+="</td></tr>";
         	 }
         	$('#treeSelectBody'). empty().append(html);
         	alert("修改成功！");
         },
         error: function (res) {
             console.log(222);
         }
     });
    $("#grantAuthorityModal").modal('hide');
	
}