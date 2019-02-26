

		
			layui.use('table', function() {
				var table = layui.table;
				var form = layui.form;
				var loadingPage=layer.msg("数据加载中，请稍后...");
				var salesManId="${sessionScope.backGroundUser.userId}";
				console.log(salesManId);
				//table 渲染初始化
				table.render({
					elem: '#test',
					url: '<%=path%>contractManager/getContractList.action?',               //salesManId='+salesManId,
					toolbar: '#toolbarDemo',
					even:true,
					//cellMinWidth: 170,
					cols: [
						[
							{align: 'center', title: '贷款人信息', colspan: 7},
							{align: 'center', title: '放款信息', colspan: 3},
							{align: 'center', title: '签约经理信息', colspan: 2},
							{align: 'center', title: '客户经理信息', colspan: 3},
							{align: 'center', title: '房贷详情', colspan: 2},
							{align: 'center', title: '保单详情', colspan: 3},
							{align: 'center', title: '公积金详情', colspan: 4}
							],
						[{
							field: 'applyDate',
							title: '业务申请日期',
							width: '165',
							sort: true
						}, {
							field: 'name',
							title: '贷款人姓名',
							width: '110'
						}, {
							field: 'sex',
							title: '性别',
							templet:'#sex',
							width: '61'
						},  {
							field: 'applicantJob',
							title: '职业',
							//templet:'#sex',
							width: '115'
						},{
							field: 'applicantTel',
							title: '手机号',
							width: '120'
						},  {
							field: 'type',
							title: '意向产品',
							templet:'#type',
							width: '115'
						}, {
							field: 'applicatExpectLoanAccount',
							title: '意向贷款金额',
							templet:'#applicatExpectLoanAccount',
							width: '121'
						}, {
							field: 'loanStartDate',
							title: '放款时间',
							//templet:'#housingLoanType',
							width: '114',
							sort: true
						}, {
							field: 'finalProduct',
							title: '最终签约产品',
							templet:'#finalProduct',
							width: '123'
						}, {
							field: 'loanAmount',
							title: '放款金额',
							templet:'#loanAmount',
							width: '100'
						},{
							field: 'contractManName',
							title: '签约经理姓名',
							templet:'#contractManName',
							width: '123'
						},{
							field: 'contractManRemarkAndAdvice',
							title: '签约经理备注',
							//templet:'#housingLoanType',
							width: '126'
						},{
							field: 'salesManModel',
							title: '客户经理姓名',
							templet:'#salesManModel',
							width: '123'
						},{
							field: 'salesManAdviceProduct',
							title: '客户经理建议产品',
							templet:'#salesManAdviceProduct',
							width: '152'
						}, {
							field: 'salesManRemarkAndAdvice',
							title: '客户经理备注',
							width: '126'
						},  {
							field: 'housingLoanType',
							title: '房贷类型',
							templet:'#housingLoanType',
							width: '91'
						}, {
							field: 'housingLoanTerm',
							title: '房贷期限',
							templet:'#housingLoanTerm',
							width: '92'
						}, {
							field: 'warrantyType',
							title: '保单类型',
							templet:'#warrantyType',
							width: '101'
						}, {
							field: 'warrantyTerm',
							title: '保单期限',
							templet:'#warrantyTerm',
							width: '91'
						}, {
							field: 'warrantyCount',
							title: '保单次数',
							width: '100'
						}, {
							field: 'accumulationFundAddress',
							title: '公积金缴纳地址',
							width: '136'
						}, {
							field: 'accumulationFundTerm',
							title: '公积金缴纳期限(月份)',
							templet:'#accumulationFundTerm',
							width: '190'
						}, {
							field: 'accumulationFundAmount',
							title: '公积金缴纳金额',
							width: '136'
						},  {
							field: 'ownBusinessLicense',
							title: '是否有营业执照',
							templet:'#ownBusinessLicense',
							width: '147'
						},  {
							//隐藏的“列名”========================
							field: 'paxydBusId',
							title: '平安新一贷业务id',
 							minWidth: '0%',
							width: '0%',
							type: 'space',
							style: 'display:none;', 
							sort: true
						}, {
							field: 'userId',
							title: '公众号注册人id',
 							minWidth: '0%',
							width: '0%',
							type: 'space',
							style: 'display:none;', 
							sort: true
						},{
							field: 'salesManId',
							title: '客户经理id',
 							minWidth: '0%',
							width: '0%',
							type: 'space',
							style: 'display:none;', 
							sort: true
						}, {
							field: 'checkState',
							title: '审核状态',
							minWidth: '0%',
							width: '0%',
							type: 'space',
							style: 'display:none;',
							sort: true
						}, {
							fixed: 'right',
							title: '客户状态',
							width: '8%',
							toolbar: '#stateBarDemo',
						}, {
							fixed: 'right',
							title: '签约进度',
							width: '7%',
							toolbar: '#speedBarDemo',
						}, {
							fixed: 'right',
							title: '可进行操作',
							width: '9%',
							toolbar: '#handleBarDemo',
						}]
					],
					//修改表头、表体样式
					done : function(res, curr, count) {
						tableList = res.data;
						
						$('th').css({'font-weight' : 'bold','font-size':'15px'});//'background-color' : '#008B8B','color' : '#fff',
						$('.laytable-cell-group').css({'font-weight' : 'bold','font-size':'25px','color':'black'});
						//$('tr').css({'background-color': '#009688', 'color': '#fff'});
/*  						var that = this.elem.next();
						res.data.forEach(function(item, index) {
							//console.log(item.empName);item表示每列显示的数据             
							if (index % 2 == 0) {
								var tr = that.find(".layui-table-box tbody tr[data-index='"+ index + "']").css("background-color", "#FFFFFF");
							} else {
								var tr = that.find(".layui-table-box tbody tr[data-index='"+ index + "']").css("background-color", "#F2F2F2");
							}
						});  */
						layer.close(loadingPage);
					},
					page : true
				});
				
				//操作栏、监听行工具事件（编辑、删除 行数据）
				table.on('tool(test)', function(obj) {
					var data = obj.data;
					
					// 接待客户
					 if (obj.event === 'receiveCustomer') {
						console.log("通知");
						console.log(data);
						//获取工具栏按钮dom
						//var stateIndex = $('.state').index(this);
						//操作栏 放置按钮的“格子”
						var handleButtonDom=$(this).parent();
						//“状态栏”中的状态按钮 dom
						var stateDom =$(this).parent().parent().parent().find(".state");
						//保留
						var handleIndex = $('.receiveCustomer').index(this);
						var handleDom = $('.receiveCustomer').eq(handleIndex);
						console.log("==="+data.paxydBusId);
						var receiveCustomerData={
								paxydBusId:data.paxydBusId
						};
						//工具栏样式更新
						if(data.checkState == 5 || data.checkState == 6){
	 			               $.ajax({
	 			                   url:'<%=path%>contractManager/receiveCustomer.action',
	 			                   type:'POST',
	 			                   dataType : 'json',
	 			                   contentType : "application/json;charset=UTF-8",
	 			                   data:JSON.stringify(receiveCustomerData),
	 			                   success:function (msg) {
	 			                       var returnCode = msg.returnCode;//取得返回数据（Sting类型的字符串）的信息进行取值判断
	 			                       if(returnCode==200){
	 			                           layer.closeAll('loading');
	 			                           layer.load(2);
	 			                           layer.msg("接待成功", {icon: 6});
	 			  						   //增加“处理业务”按钮
/* 	 			  						   handleButtonDom.empty();
	 			  						   var editButtonHTML="<a class='layui-btn layui-btn-xs' lay-event='edit'>业务处理</a>";
	 			  						   var delButtonHTML="<a class='layui-btn layui-btn-danger layui-btn-xs' lay-event='del'>删除</a>";
	 			  						   handleButtonDom.append(editButtonHTML+delButtonHTML); */
	 			  						   //当前点击的“接待客户” 移除
	 			  						   //$(this).remove();
	 			  						   handleDom.removeClass().addClass('layui-btn layui-btn-xs');
	 			  						   handleDom.attr("lay-event","edit");
	 			  						   handleDom.removeAttr("style");
	 			  						   handleDom.html('业务处理')
	 			  						   //客户状态栏中的 dom 改变
	 			  						   stateDom.removeClass().addClass('layui-btn primary layui-btn-xs state');
	 			  						   stateDom.attr("style","background-color: #1E9FFF;");
	 			  						   stateDom.html('签约经理已接待')
	 			  						   //数据更新
	 			  						   obj.update({
	 			  							   checkState:4
	 			  							   });
 	 			                           setTimeout(function(){
	 			                                layer.closeAll();//关闭所有的弹出层
	 			                           }, 1000); 
	 			                          // 加载层-风格
	 			                       }else{
	 			                           layer.msg("接待失败", {icon: 5});
	 			                       }
	 			                   }
	 			               })
	 			              return false;

						};
				   // 删除业务信息
					}else if (obj.event === 'del') {
			                layer.confirm('真的删除行么', function (index) {
								console.log(obj);
								console.log("当前页---"+$(".layui-laypage-curr").find("em:eq(1)").html());
								console.log("总页数---"+$(".layui-laypage-last").attr("data-page"));
								console.log("总条数---"+$(".layui-laypage-count").html());
								console.log("每页条数---"+$(".layui-laypage-limits").find("option:selected").val() );
			                    $.ajax({
			                        url: "<%=path%>userManager/deleteUserInfo.action",
			                        type: "POST",
			                        data: {deleteUserId:obj.data.userId},
			                        success: function (msg) {
			                            //var json = JSON.parse(msg);
			                            var returnCode = msg.returnCode;
			                            if (returnCode == 200) {
			                                //删除这一行
			                                obj.del();
			                                //重新刷新该页面 ！！！！
			                                $(".layui-laypage-btn").click(); 
			                                //关闭弹框
			                                layer.close(index);
			                                layer.msg("删除成功", {icon: 6});
			                            } else {
			                                layer.msg("删除失败", {icon: 5});
			                            }
			                        }
			                    });
			                    return false; 
			                });
			                
					// 编辑客户信息（业务处理）
					} else if (obj.event === 'edit') {
						console.log(data);
						console.log("业务id---"+data.paxydBusId+"---");
						console.log("签约进度---"+data.checkState+"---");
						//获取”签约进度“的状态dom，方便修改显示状态
						var speedDom=$(this).parent().parent().parent().find(".speed");
			        	//验证该业务是否被处理 若已被处理、则更新数据。否则进行流程处理
			        	var isHandle = busIsHandle(data.paxydBusId,obj,layer,speedDom);
						console.log("****************************"+isHandle);
						if(isHandle){
					          layer.msg("该业务已有签约经理在处理！请勿参与处理！以免发生业务流程紊乱！", {icon: 5});
							  return ;
						}
						console.log(typeof data.paxydBusId);//string
						console.log($(this));//string

						//编辑客户信息 弹出层
 						layer.open({       
					        title:'编辑客户信息',
					        type:1,
					        skin: 'layui-layer-molv',    
					        shade: 0.8,  
					        area:['1500px','760px'],//'1100px','760px'
					        content:$("#form1")
						}); 
						//重新渲染日期插件
						renderLayDate();
						//给编辑弹出层  赋值
						var checkStateSelect = "dd[lay-value=' ']";//流程操作 默认选中第一个“选择操作”
						$('#editCheckState').siblings("div.layui-form-select").find('dl').find(checkStateSelect).click();
						var housingLoanTypeSelect = "dd[lay-value='" + data.housingLoanType + "']";
						$('#editHousingLoanType').siblings("div.layui-form-select").find('dl').find(housingLoanTypeSelect).click();
						var warrantyTypeSelect = "dd[lay-value='" + data.warrantyType + "']";
						$('#editWarrantyType').siblings("div.layui-form-select").find('dl').find(warrantyTypeSelect).click();
						var ownBusinessLicenseSelect = "dd[lay-value='" + data.ownBusinessLicense + "']";
						$('#editOwnBusinessLicense').siblings("div.layui-form-select").find('dl').find(ownBusinessLicenseSelect).click();
						var sexSelect = "dd[lay-value='" + data.sex + "']";
						$('#editSex').siblings("div.layui-form-select").find('dl').find(sexSelect).click();

						$('#editPaxydBusId').val(data.paxydBusId);
						$('#editApplyDate').val(data.applyDate);
						transferProduction(data.type,"editType");
						$('#editType').attr("typeCode",""+data.type);
						if(data.salesManModel!=null){
							$('#editSalesMan').val(data.salesManModel.userName);
						}else{
							$('#editSalesMan').val("");
						}
						var contractManName="${sessionScope.backGroundUser.userName}";
						$('#editContractMan').val(contractManName);
						$('#editName').val(data.name);
						$('#editApplicantJob').val(data.applicantJob);
						$('#editApplicantTel').val(data.applicantTel);
						$('#editApplicatExpectLoanAccount').val(data.applicatExpectLoanAccount);
						$('#editHousingLoanTerm').val(data.housingLoanTerm);
						$('#editWarrantyTerm').val(data.warrantyTerm);
						$('#editWarrantyCount').val(data.warrantyCount);
						$('#editAccumulationFundAddress').val(data.accumulationFundAddress);
						$('#editAccumulationFundTerm').val(data.accumulationFundTerm);
						$('#editAccumulationFundAmount').val(data.accumulationFundAmount);
						transferProduction(data.salesManAdviceProduct,"editSalesManAdviceProduct");
						$('#editSalesManAdviceProduct').attr("typeCode",""+data.salesManAdviceProduct);
						$('#editSalesManRemarkAndAdvice').val(data.salesManRemarkAndAdvice);
						$('#editContractManRemarkAndAdvice').val(data.contractManRemarkAndAdvice);
						$('#editApplyFailReason').val(data.applyFailReason);
						$('#editApplyRefuseReason').val(data.applyRefuseReason);
						//显示框的形式显示不同 一个是日期插件 一个是文本框(不可修改的)
						//$('#editLoanStartDate').val(data.loanStartDate);
						//显示框的形式显示不同 一个是下拉框 一个是文本框(不可修改的)
						//$('#editFinalProduct').val(data.finalProduct); 
						transferProduction(data.finalProduct,"editFinalProduct_Input");
						$('#editFinalProduct_Input').attr("typeCode",""+data.finalProduct);
						$('#editLoanAmount').val(data.loanAmount);
						
						//对于签约状态的不同、流程页面相应变化。
						if(data.checkState!=null){
							//先将"选择进行流程处理"下拉框置空
							$("#editCheckState").empty();
							//将放款金额初始化为"可输入/修改"
							$("#editLoanAmount").attr("readonly",null); //editable : false
							//$("#editLoanStartDate").css('editable',false);
							//将"放款日期" "放款金额" "每月放款日期" * 号颜色还原（蓝色）
							$("#flag_InputLoanStartDate").css("color","blue");
							$("#flag_InputLoanAmount").css("color","blue");
							$("#flag_InputRepaymentDate").css("color","blue");
							//将" 放款日期" "最终签约产品" "放款金额"  "每月还款日期"表单验证处理
							//$("#editLoanStartDate_Date").attr("lay-verify","required|date");
							//$("#editFinalProduct_Select").attr("lay-verify","selectProduct");
							$("#editLoanStartDate_Date").attr("lay-verify","");
							$("#editFinalProduct_Select").attr("lay-verify","");
							$("#editLoanAmount").attr("lay-verify","");
							$("#editRepaymentDate_Date").attr("lay-verify","");
							//required|date
							if(data.checkState==0){
								$('#editCurrentCheckState').val("不可申请");
								//显示页面该有的 组件
								$("#Processing_Item").css('display','none');//隐藏
								$("#ApplyFailReason_Item").css('display','block');//显示
								$("#ApplyRefuseReason_Item").css('display','none');//隐藏
								$("#LoanInfo_Item").css('display','none');//隐藏
								//将选择“进行流程处理”下拉框 表单验证置空
								$("#editCheckState").attr("lay-verify","");
							}else if(data.checkState==1){
								$('#editCurrentCheckState').val("申请中");
								//进行流程操作 显示下拉框
								var selectHtml_1="<option value=''>选择操作</option>"
								+"<option value='2'>成功放款</option>"
								+"<option value='3'>申请被拒绝</option>";
								$("#editCheckState").append(selectHtml_1);
								//显示页面该有的 组件
								$("#Processing_Item").css('display','block');//显示
								$("#ApplyFailReason_Item").css('display','none');//隐藏
								$("#ApplyRefuseReason_Item").css('display','none');//隐藏
								$("#LoanInfo_Item").css('display','none');//隐藏
								//放款产品  显示为"下拉框"可选择的.
								$("#editFinalProduct_Input_LineItem").css('display','none');//隐藏
								$("#editFinalProduct_Select_LineItem").css('display','');//显示  不能用block 会换行
								// 默认选中第一个“选择操作”
								var editFinalProductSelect = "dd[lay-value='']";
								$('#editFinalProduct_Select').siblings("div.layui-form-select").find('dl').find(editFinalProductSelect).click();
								//放款时间 为layUIdate插件 将输入框隐藏
								$("#editLoanStartDate_Input_LineItem").css('display','none');//隐藏
								$("#editLoanStartDate_Date_LineItem").css('display','');//显示  不能用block 会换行
								$('#editLoanStartDate_Date').val("");
								//每月还款日期 为layUIdate插件 将输入框隐藏
								$("#editRepaymentDate_Input_LineItem").css('display','none');//隐藏
								$("#editRepaymentDate_Date_LineItem").css('display','');//显示  不能用block 会换行
								$('#editRepaymentDate_Date').val("");
								//将选择“进行流程处理”下拉框 表单验证开启
								$("#editCheckState").attr("lay-verify","busSpeed");
								//将"放款日期" "放款金额" "每月放款日期" * 号颜色变为 必填（红色）
								$("#flag_InputLoanStartDate").css("color","red");
								$("#flag_InputLoanAmount").css("color","red");
								$("#flag_InputRepaymentDate").css("color","red");
								//将"放款日期" "放款产品" "放款金额" "每月还款日期" 表单验证开启 或 关闭，
								//在选择流程后进行判断。判断在下面的下拉框value判断。

							}else if(data.checkState==2){
								$('#editCurrentCheckState').val("成功放款");
								//显示页面该有的 组件
								$("#Processing_Item").css('display','block');//隐藏
								$("#ApplyFailReason_Item").css('display','none');//隐藏
								$("#ApplyRefuseReason_Item").css('display','none');//隐藏
								$("#LoanInfo_Item").css('display','block');//显示
								//进行流程操作 显示下拉框
								var selectHtml_2="<option value=''>选择操作</option>"
								+"<option value='7'>贷款未结清</option>"
								+"<option value='8'>贷款已结清</option>";
								$("#editCheckState").append(selectHtml_2);
								//放款产品 显示为"文本框"不可选择的.
								$("#editFinalProduct_Select_LineItem").css('display','none');//隐藏 
								$("#editFinalProduct_Input_LineItem").css('display','');//显示 不能用block 会换行
								//$("#editFinalProduct_Input").val(data.finalProduct); 
								//放款时间 为文本框且不可修改
								$("#editLoanStartDate_Date_LineItem").css('display','none');//隐藏 
								$("#editLoanStartDate_Input_LineItem").css('display','');//显示 不能用block 会换行
								$('#editLoanStartDate_Input').val(data.loanStartDate);
								//每月放款日期 未文本框且不可修改
								$("#editRepaymentDate_Date_LineItem").css('display','none');//隐藏 
								$("#editRepaymentDate_Input_LineItem").css('display','');//显示 不能用block 会换行
								$('#editRepaymentDate_Input').val(data.repaymentDate);
								//将放款金额为"不可输入/修改"
								$("#editLoanAmount").attr("readonly","readonly");
								//将选择“进行流程处理”下拉框 表单验证开启
								$("#editCheckState").attr("lay-verify","busSpeed");
								//将" 放款日期" "最终签约产品" "每月还款日期"表单验证置空
								$("#editLoanStartDate_Date").attr("lay-verify","");
								$("#editFinalProduct_Select").attr("lay-verify","");
								$("#editRepaymentDate_Date").attr("lay-verify","");
							}else if(data.checkState==3){
								$('#editCurrentCheckState').val("申请被拒绝");
								//显示页面该有的 组件
								$("#Processing_Item").css('display','none');//隐藏
								$("#ApplyFailReason_Item").css('display','none');//隐藏
								$("#ApplyRefuseReason_Item").css('display','block');//显示
								$("#LoanInfo_Item").css('display','none');//隐藏
								//将选择“进行流程处理”下拉框 表单验证置空
								$("#editCheckState").attr("lay-verify","");
							}else if(data.checkState==4){
								$('#editCurrentCheckState').val("未处理");
								//进行流程操作 显示下拉框
								var selectHtml_4="<option value=''>选择操作</option>"
								+"<option value='0'>不可申请</option>"
								+"<option value='1'>可申请</option>";
								$("#editCheckState").append(selectHtml_4);
								//显示页面该有的 组件
								$("#Processing_Item").css('display','block');//显示
								$("#ApplyFailReason_Item").css('display','none');//隐藏
								$("#ApplyRefuseReason_Item").css('display','none');//隐藏
								$("#LoanInfo_Item").css('display','none');//隐藏
								//将选择“进行流程处理”下拉框 表单验证开启
								$("#editCheckState").attr("lay-verify","busSpeed");
							}else if(data.checkState==7){
								$('#editCurrentCheckState').val("贷款未结清");
								//显示页面该有的 组件
								$("#Processing_Item").css('display','block');//显示
								$("#ApplyFailReason_Item").css('display','none');//隐藏
								$("#ApplyRefuseReason_Item").css('display','none');//隐藏
								$("#LoanInfo_Item").css('display','block');//显示
								//进行流程操作 显示下拉框
								var selectHtml_7="<option value=''>选择操作</option>"
								+"<option value='7'>贷款未结清</option>"
								+"<option value='8'>贷款已结清</option>";
								$("#editCheckState").append(selectHtml_7);
								//放款产品 显示为"文本框"不可选择的.
								$("#editFinalProduct_Select_LineItem").css('display','none');//隐藏 
								$("#editFinalProduct_Input_LineItem").css('display','');//显示 不能用block 会换行
								//$("#editFinalProduct_Input").val(data.finalProduct); 
								//放款时间 为文本框且不可修改
								$("#editLoanStartDate_Date_LineItem").css('display','none');//隐藏 
								$("#editLoanStartDate_Input_LineItem").css('display','');//显示 不能用block 会换行
								$('#editLoanStartDate_Input').val(data.loanStartDate);
								//每月放款日期 未文本框且不可修改
								$("#editRepaymentDate_Date_LineItem").css('display','none');//隐藏 
								$("#editRepaymentDate_Input_LineItem").css('display','');//显示 不能用block 会换行
								$('#editRepaymentDate_Input').val(data.repaymentDate);
								//将放款金额为"不可输入/修改"
								$("#editLoanAmount").attr("readonly","readonly");
								//将选择“进行流程处理”下拉框 表单验证开启
								$("#editCheckState").attr("lay-verify","busSpeed");
								//将" 放款日期" "最终签约产品" "每月还款日期"表单验证置空
								$("#editLoanStartDate_Date").attr("lay-verify","");
								$("#editFinalProduct_Select").attr("lay-verify","");
								$("#editRepaymentDate_Date").attr("lay-verify","");
							}else if(data.checkState==8){
								$('#editCurrentCheckState').val("贷款已结清");
								//显示页面该有的 组件
								$("#Processing_Item").css('display','none');//隐藏
								$("#ApplyFailReason_Item").css('display','none');//隐藏
								$("#ApplyRefuseReason_Item").css('display','none');//隐藏
								$("#LoanInfo_Item").css('display','block');//显示
								//放款产品 显示为"文本框"不可选择的.
								$("#editFinalProduct_Select_LineItem").css('display','none');//隐藏 
								$("#editFinalProduct_Input_LineItem").css('display','');//显示 不能用block 会换行
								//$("#editFinalProduct_Input").val(data.finalProduct); 
								//放款时间 为文本框且不可修改
								$("#editLoanStartDate_Date_LineItem").css('display','none');//隐藏 
								$("#editLoanStartDate_Input_LineItem").css('display','');//显示 不能用block 会换行
								$('#editLoanStartDate_Input').val(data.loanStartDate);
								//每月放款日期 未文本框且不可修改
								$("#editRepaymentDate_Date_LineItem").css('display','none');//隐藏 
								$("#editRepaymentDate_Input_LineItem").css('display','');//显示 不能用block 会换行
								$('#editRepaymentDate_Input').val(data.repaymentDate);
								//将放款金额为"不可输入/修改"
								$("#editLoanAmount").attr("readonly","readonly");
								//将选择“进行流程处理”下拉框 表单验证开启
								$("#editCheckState").attr("lay-verify","busSpeed");
								//将" 放款日期" "最终签约产品" "每月还款日期"表单验证置空
								$("#editLoanStartDate_Date").attr("lay-verify","");
								$("#editFinalProduct_Select").attr("lay-verify","");
								$("#editRepaymentDate_Date").attr("lay-verify","");
							}
						}
							//渲染下拉框
							form.render('select');
						}
						//"进行流程处理"下拉框的 动态js
						form.on('select(search_type)', function(data){
							if(data.value == ""){
								$("#ApplyFailReason_Item").css('display','none');
								$("#ApplyRefuseReason_Item").css('display','none');//
								$("#LoanInfo_Item").css('display','none');//
							}else if(data.value == 0){ //不可申请
						    	//显示“不可申请原因”的输入框
						    	$("#ApplyFailReason_Item").css('display','block');
						    }else if(data.value == 1){//可申请
						    	//隐藏“不可申请原因”的输入框
						    	$("#ApplyFailReason_Item").css('display','none');//
						    }else if(data.value == 2){//成功放款
						    	//显示“放款信息”的三个框
						    	$("#LoanInfo_Item").css('display','block');//
						    	//并隐藏“申请被决绝原因”的输入框
						    	$("#ApplyRefuseReason_Item").css('display','none');//
						    	//将"放款日期" "放款产品" "放款金额" "每月放款日期"表单验证开启
								$("#editLoanStartDate_Date").attr("lay-verify","required|date");
								$("#editFinalProduct_Select").attr("lay-verify","selectProduct");
								$("#editLoanAmount").attr("lay-verify","required|inputNumber");
								$("#editRepaymentDate_Date").attr("lay-verify","required|date");
						    }else if(data.value == 3){//申请被拒绝
						    	//显示“申请被决绝原因”的输入框
						    	$("#ApplyRefuseReason_Item").css('display','block');//
						    	//并隐藏“放款信息”的三个框
						    	$("#LoanInfo_Item").css('display','none');//
						    	//将"放款日期" "放款产品" "放款金额" "每月放款日期"表单验证关闭
								$("#editLoanStartDate_Date").attr("lay-verify","");
								$("#editFinalProduct_Select").attr("lay-verify","");
								$("#editLoanAmount").attr("lay-verify","");
								$("#editRepaymentDate_Date").attr("lay-verify","");
						    }
						    //渲染
						    form.render('select');//里面的select是固定写法 跟过滤器、id无关
						});

/* 						$('#editRepaymentDate_Date').blur(function(){
							alert(i+"---"+$('#editRepaymentDate_Date').val());
							  //layer.msg('登录成功!', {icon: 1,ime:1000,}；
							}); */
 			           form.on('submit(demo11)', function(massage) {
 			        	   //验证该业务是否被处理 若已被处理、则更新数据。否则进行流程处理
 			        	  var isHandle = busIsHandle(data.paxydBusId,obj,layer,speedDom);
 							console.log("****************************"+isHandle);
 							if(isHandle){
 					           layer.msg("该业务已有签约经理在处理！请勿参与处理！5秒后自动关闭页面... 以防签约流程紊乱！", {icon: 5});
 								return false;
 							}
 			        	   console.log("可进行操作哦========================");
 						  //传入后台的数据 “放款时间”“最终签约产品”"签约进度" "每月还款时间"分情况组装
 						  var realData_LoanStartDate;
 						  var realData_FinalProduct;
 						  var realData_checkState;
 						  var realData_RepaymentDate;
 						  //获取 “放款时间”“最终签约产品”"每月还款时间"  数据
 			        	  if(data.checkState!=null){
 			        		 if(data.checkState==0){
 			        			realData_checkState=0;
  			        		}else if(data.checkState==1){
 			        			realData_LoanStartDate=$('#editLoanStartDate_Date').val();
 			        			realData_FinalProduct=$("#editFinalProduct_Select").val();
 			        			realData_checkState=$("#editCheckState").val();
 			        			realData_RepaymentDate=$('#editRepaymentDate_Date').val();
 			        		}else if(data.checkState==2){
 			        			realData_LoanStartDate=$('#editLoanStartDate_Input').val();
 			        			realData_FinalProduct=$("#editFinalProduct_Input").attr("typeCode");
 			        			realData_checkState=2;
 			        			realData_RepaymentDate=$('#editRepaymentDate_Input').val();
 			        		}else if(data.checkState==3){
 			        			realData_checkState=3;
 			        		}else if(data.checkState==4){
 			        			realData_checkState=$("#editCheckState").val();
 			        		}else if(data.checkState==7 ){
 			        			realData_LoanStartDate=$('#editLoanStartDate_Input').val();
 			        			realData_FinalProduct=$("#editFinalProduct_Input").attr("typeCode");
 			        			realData_checkState=$("#editCheckState").val();
 			        			realData_RepaymentDate=$('#editRepaymentDate_Input').val();
 			        		}else if(data.checkState==8){
 			        			realData_LoanStartDate=$('#editLoanStartDate_Input').val();
 			        			realData_FinalProduct=$("#editFinalProduct_Input").attr("typeCode");
 			        			realData_checkState=8;
 			        			realData_RepaymentDate=$('#editRepaymentDate_Input').val();
 			        		}
 			        	  }
 			        	  var contractManIdData="${sessionScope.backGroundUser.userId}";
 			        	  
 			        	  //处理完在table更新的 "客户经理姓名" "签约经理姓名"
 			        	  var returnTableData_salesManModel;
 			        	  var returnTableData_contractManName="${sessionScope.backGroundUser.userName}";
 			        	  console.log("==========================="+returnTableData_contractManName);
 						  if(data.salesManModel!=null){
 								returnTableData_salesManModel=data.salesManModel;
 						  }else{
 								returnTableData_salesManModel=null;
 						  }
 			        	  var editData={
 			        			paxydBusId:data.paxydBusId,
 			        			checkState:realData_checkState,
 			        			salesManId:data.salesManId,
 			        			contractManId:contractManIdData,
 			        			type:$("#editType").attr("typeCode"),
  			                	applyDate:massage.field.editApplyDate,
  			                	name:massage.field.editName,
  			                	sex:massage.field.editSex,
  			                	applicantJob:massage.field.editApplicantJob,
  			                	applicantTel:massage.field.editApplicantTel,
  			                	applicatExpectLoanAccount:massage.field.editApplicatExpectLoanAccount,
  			                	housingLoanType:massage.field.editHousingLoanType,
  			                	housingLoanTerm:massage.field.editHousingLoanTerm,
  			                	warrantyType:massage.field.editWarrantyType,
  			                	warrantyTerm:massage.field.editWarrantyTerm,
  			                	warrantyCount:massage.field.editWarrantyCount,
  			                	accumulationFundAddress:massage.field.editAccumulationFundAddress,
  			                	accumulationFundTerm:massage.field.editAccumulationFundTerm,
  			                	accumulationFundAmount:massage.field.editAccumulationFundAmount,
  			                	ownBusinessLicense:massage.field.editOwnBusinessLicense,
  			                	salesManAdviceProduct:$("#editSalesManAdviceProduct").attr("typeCode"),
  			                	salesManRemarkAndAdvice:massage.field.editSalesManRemarkAndAdvice,
  			                	contractManRemarkAndAdvice:massage.field.editContractManRemarkAndAdvice,
  			                	applyFailReason:massage.field.editApplyFailReason,
  			                	applyRefuseReason:massage.field.editApplyRefuseReason,
  			                	loanStartDate:realData_LoanStartDate,
  			                	finalProduct:realData_FinalProduct,
  			                	loanAmount:massage.field.editLoanAmount,
  			                	repaymentDate:realData_RepaymentDate
 			        	  };
 			               $.ajax({
 			                   url:'<%=path%>contractManager/contractBusHandle.action',
 			                   type:'POST',
 			                   dataType : 'json',
 			                   contentType : "application/json;charset=UTF-8",
 			                   data:JSON.stringify(editData),
 			                   success:function (msg) {
 			                       var returnCode = msg.returnCode;//取得返回数据（Sting类型的字符串）的信息进行取值判断
 			                       if(returnCode==200){
 			                           layer.closeAll('loading');
 			                           layer.load(2);
 			                           layer.msg("修改成功", {icon: 6});
 			                           setTimeout(function(){
 			                              obj.update({
 			                            	// userId:massage.field.userId,
 			                            	checkState:realData_checkState,
 			                            	salesManModel:returnTableData_salesManModel,
 			                            	contractManName:returnTableData_contractManName,
 			                            	type:$("#editType").attr("typeCode"),
 			  			                	applyDate:massage.field.editApplyDate,
 			  			                	name:massage.field.editName,
 			  			                	sex:massage.field.editSex,
 			  			                	applicantJob:massage.field.editApplicantJob,
 			  			                	applicantTel:massage.field.editApplicantTel,
 			  			                	applicatExpectLoanAccount:massage.field.editApplicatExpectLoanAccount,
 			  			                	housingLoanType:massage.field.editHousingLoanType,
 			  			                	housingLoanTerm:massage.field.editHousingLoanTerm,
 			  			                	warrantyType:massage.field.editWarrantyType,
 			  			                	warrantyTerm:massage.field.editWarrantyTerm,
 			  			                	warrantyCount:massage.field.editWarrantyCount,
 			  			                	accumulationFundAddress:massage.field.editAccumulationFundAddress,
 			  			                	accumulationFundTerm:massage.field.editAccumulationFundTerm,
 			  			                	accumulationFundAmount:massage.field.editAccumulationFundAmount,
 			  			                	ownBusinessLicense:massage.field.editOwnBusinessLicense,
 			  			                	salesManAdviceProduct:$("#editSalesManAdviceProduct").attr("typeCode"),
 			  			                	salesManRemarkAndAdvice:massage.field.editSalesManRemarkAndAdvice,
 			  			                	contractManRemarkAndAdvice:massage.field.editContractManRemarkAndAdvice,
 			  			                	applyFailReason:massage.field.editApplyFailReason,
 			  			                	applyRefuseReason:massage.field.editApplyRefuseReason,
 			  			                	loanStartDate:realData_LoanStartDate,
 			  			                	finalProduct:realData_FinalProduct,
 			  			                	loanAmount:massage.field.editLoanAmount
 			                                });//修改成功修改表格数据不进行跳转
 			                                
 			                                if(realData_checkState==0){
 			                                	speedDom.html('不可申请');
 			                                }else if(realData_checkState==1){
 			                                	speedDom.html('申请中');
 			                                }else if(realData_checkState==2){
 			                                	speedDom.html('成功放款');
 			                                }else if(realData_checkState==3){
 			                                	speedDom.html('申请被拒绝');
 			                                }
 			                                
 			                                layer.closeAll();//关闭所有的弹出层
 			                           }, 1000);
 			                          // 加载层-风格
 			                       }else{
 			                           layer.msg("修改失败", {icon: 5});
 			                       }
 			                   }
 			               })
 			              return false;
 			           })
 						 //setFormValue(obj,data);
					//}
				});
				
				  //监听行单击事件（单击事件为：rowDouble）
				  table.on('row(test)', function(obj){
					var flag=0;
				    var data = obj.data;
				    //$(this).attr("isClick","1");   
				    var trDataShowList=$(".layui-table-main").children("table").children('tbody').children('tr');
				    var trFixedRList=$(".layui-table-fixed-r").children("div").eq(1).children("table").children('tbody').children('tr');
				    var index=$(this).attr("data-index");
				    console.log("当前行的---"+$(this).attr("data-index"));
				    var A;
				    var X;
				    for(i=0;i<trFixedRList.length;i++){
				    	console.log(trFixedRList[i]);
				    	   if(trFixedRList[i].getAttribute("data-index")==index){
				    		   trFixedRList[i].setAttribute("isClick",1);
				    		   X=trFixedRList[i];
				    		   console.log("匹配了");
				    	   }
						   if(i%2 == 0){
							   trFixedRList[i].setAttribute("initBackgroundColor", "#FFFFFF");//#
						   }else{
							   trFixedRList[i].setAttribute("initBackgroundColor","#F2F2F2");
						   }
						   if(trFixedRList[i].getAttribute("isClick")!=null){
							   trFixedRList[i].setAttribute("isClick",null);
							   trFixedRList[i].style.backgroundColor=""+trFixedRList[i].getAttribute("initBackgroundColor");
						   }
				    }

				   for(i=0;i<trDataShowList.length;i++){
			    	   if(trDataShowList[i].getAttribute("data-index")==index){
			    		   trDataShowList[i].setAttribute("isClick",1);
			    		   A=trDataShowList[i];
			    		   console.log("匹配了");
			    	   }
					   if(i%2 == 0){
						   trDataShowList[i].setAttribute("initBackgroundColor", "#FFFFFF");
					   }else{
						   trDataShowList[i].setAttribute("initBackgroundColor","#F2F2F2");
					   }
					   if(trDataShowList[i].getAttribute("isClick")!=null){
						   trDataShowList[i].setAttribute("isClick",null);
						   trDataShowList[i].style.backgroundColor=""+trDataShowList[i].getAttribute("initBackgroundColor");
					   }
				   }
				   //$(this).attr("isClick","1");
				   //$(this).css("background-color", "#B0C4DE");
				   A.style.backgroundColor="#B0C4DE";
				   X.style.backgroundColor="#B0C4DE";//layui-table tr  .layui-table[lay-even] tr
				  }); 

				// 上方工具按钮监听 （批量导入、单挑数据添加、条件搜索）
				// 条件搜索
				var $ = layui.$, active = {
					reload : function() {
						var conditionData={
								queryName:$('#queryName').val(),
								queryApplicantTel:$('#queryApplicantTel').val(),
								queryCustomerState:$('#queryCustomerState').val(),
								queryBusSpeed:$('#queryBusSpeed').val(),
								queryApplyDateStart:$('#queryApplyDateStart').val(),
								queryApplyDateEnd:$('#queryApplyDateEnd').val()	
						};
						     
						console.log("条件对象："+conditionData.queryName);
						console.log("条件对象："+conditionData.queryApplicantTel);
						console.log("条件对象："+conditionData.queryCustomerState);
						console.log("条件对象："+conditionData.queryBusSpeed);
						console.log("条件对象："+conditionData.queryApplyDateStart);
						console.log("条件对象："+conditionData.queryApplyDateEnd);
						//执行重载                      
						table.reload('test', {
							page : {
								curr : 1//重新从第 1 页开始                                  
							},
							where : {
								//salesManId:salesManId,
								name:$('#queryName').val(),//向后台传递的参数
								applicantTel:$('#queryApplicantTel').val(),
								customerState:$('#queryCustomerState').val(),
								busSpeed:$('#queryBusSpeed').val(),
								applyDateStart:$('#queryApplyDateStart').val(),
								applyDateEnd:$('#queryApplyDateEnd').val()	 
							},                     
							url : '<%=path%>contractManager/getContractList.action'//后台做模糊搜索接口路径                        
							,
							method : 'get'
						});
						//重新渲染日期插件
						renderLayDate();
					}
				}; 
				//点击“条件搜索”监听
				//由于dom被重构了，事件监听不到  所以用如下方法，本来是下方注释方法。
				$('body').on('click','#searchBtn',function(){
						var type = $(this).data('type');
						console.log("type："+type);
						active[type] ? active[type].call(this) : '';
				});
				
				//点击批量导入
				$('body').on('click','#daoru',function(){
					console.log("点击 → 批量导入");
					var data={};
					importData(data);
				}); 
				
				//批量导入数据
				function importData(config) {
					console.log(config);
					var default_config = {
						uploadUrl:'',
						downUrl:'',
						msg: "数据导入成功！"
					}
					$.extend(default_config, config);
					var idRandom = "importData" + Math.ceil(Math.random() * 10000)
					var htmlContent =
						'<div class="layui-upload-drag" id="' + idRandom + '">';
					htmlContent += '<i class="layui-icon"></i>';
					htmlContent += '<p>点击上传，或将文件拖拽到此处</p>';
					htmlContent += '</div>';
					layer.open({
						type: 1,
						offset: "auto", //具体配置参考：http://www.layui.com/doc/modules/layer.html#offset	      ,
						id: 'layer_importData', //防止重复弹出	      ,
						title: '导入记录',
						content: htmlContent,
						maxWidth: 800,
						btn: ['下载模板'],
						btnAlign: 'c', //按钮居中	      ,
						shade: 0, //不显示遮罩	      ,
						yes: function() { //提交	    	  	
							console.log("点击下载模板----");
							var iframe = $("<iframe></iframe>");
							iframe.attr("src", default_config.downUrl);
							iframe.css("display", "none");
							$("#" + idRandom).append(iframe);
						},
					});
					
					//上传数据文件
					layui.use('upload', function(){
					var upload = layui.upload;
					console.log(upload);
					//var form = layui.form;
					//form.render(); //拖拽上传	
					upload.render({
						elem: "#" + idRandom,
						url: '<%=path%>userManager/uploadImg.action',
						accept: 'file',
						size:9000,
						done: function(data) {
							console.log("拖拽上传----");
							if (data.code == 0) {
								layer.closeAll();
								if ($("#query")) {
									$("#query").click();
								}
								if (default_config.done) {
									default_config.done(data);
								} else {
									layer.msg(default_config.msg);
								}
							} else {
								layer.msg(data.msg);
							}
						}
					});
				});
					
				}

				//点击添加单条数据
				$('body').on('click','#addContractBus',function(){
					console.log("点击 → 单条数据添加");
                    //将添加页面数据置空
                    document.getElementById("form2").reset();
                    $("#validateResultInfo").empty();
					//添加单条数据   弹出层
				    layer.open({       
					        title:'添加客户信息',
					        type:1,
					        skin: 'layui-layer-molv',    
					        shade: 0.8,  
					        area:['1500px','760px'],
					        content:$("#form2")
						}); 
				        var contractManIdAddManId="${sessionScope.backGroundUser.userId}";
	 			           form.on('submit(demo12)', function(massage) {
	 							var addContractBusInfo={
	 									//salesManId:salesManId,
	 									//paxydBusId:data.paxydBusId,
	 									contractManId:contractManIdAddManId,
	 				        			type:massage.field.addType,
	 				                	//applyDate:massage.field.addApplyDate,
	 				                	name:massage.field.addName,
	 				                	sex:massage.field.addSex,
	 				                	applicantJob:massage.field.addApplicantJob,
	 				                	applicantTel:massage.field.addApplicantTel,
	 				                	applicatExpectLoanAccount:massage.field.addApplicatExpectLoanAccount,
	 				                	housingLoanType:massage.field.addHousingLoanType,
	 				                	housingLoanTerm:massage.field.addHousingLoanTerm,
	 				                	warrantyType:massage.field.addWarrantyType,
	 				                	warrantyTerm:massage.field.addWarrantyTerm,
	 				                	warrantyCount:massage.field.addWarrantyCount,
	 				                	accumulationFundAddress:massage.field.addAccumulationFundAddress,
	 				                	accumulationFundTerm:massage.field.addAccumulationFundTerm,
	 				                	accumulationFundAmount:massage.field.addAccumulationFundAmount,
	 				                	ownBusinessLicense:massage.field.addOwnBusinessLicense
	 				                	//salesManAdviceProduct:massage.field.addSalesManAdviceProduct,
	 				                	//salesManRemarkAndAdvice:massage.field.addSalesManRemarkAndAdvice
	 							}
	 			        	   
	 			               $.ajax({
	 			                   url:'<%=path%>contractManager/addContractBusInfo.action',
	 			                   type:'POST',
	 			                   dataType : 'json',
	 			                   contentType : "application/json;charset=UTF-8",
	 			                   data:JSON.stringify(addContractBusInfo),
	 			                   success:function (msg) {
	 			                       var returnCode = msg.returnCode;//取得返回数据（Sting类型的字符串）的信息进行取值判断
	 			                       if(returnCode==200){
	 			                           layer.closeAll('loading');
	 			                           layer.load(2);
	 			                           layer.msg("添加客户贷款申请信息成功！", {icon: 6});
	 			                           //将添加页面数据置空
	 			                           document.getElementById("form2").reset();
	 			                          $("#validateResultInfo").empty();
	 			                           setTimeout(function(){
	 			                                layer.closeAll();//关闭所有的弹出层
	 			                           }, 400);
	 			                          //重载 到第一页
 	 			 						table.reload('test', {
	 			 							page : {                           
	 			 								curr:1
	 			 							},
	 			 							where : {
	 			 								//name : demoReload //向后台传递的参数
	 			 							},                     
	 			 							url : '<%=path%>contractManager/getContractList.action',
	 			 							method : 'get'
	 			 						}); 
 	 									//重新渲染日期插件
 	 									renderLayDate();
	 			                       }else{
	 			                           layer.msg("添加失败", {icon: 5});
	 			                       }
	 			                   }
	 			               })
	 			              return false;
	 			           })
					
				}); 
 				//取消添加
				$('body').on('click','#cancelAdd',function(){
					console.log("取消");
                    layer.closeAll();//关闭所有的弹出层
				}); 
 				//取消修改
				$('body').on('click','#cancelEdit',function(){
					console.log("取消");
                    layer.closeAll();//关闭所有的弹出层
				}); 
 				//重置修改页面
 				$('body').on('click','#editReset',function(){
					console.log("重置");
					var select = "dd[lay-value='']";
					
					$("#editName").val("");
					$('#editSex').siblings("div.layui-form-select").find('dl').find(select).click();
					$("#editApplicantJob").val("");
					$("#editApplicantTel").val("");
					$('#editHousingLoanType').siblings("div.layui-form-select").find('dl').find(select).click();
					$("#editHousingLoanTerm").val("");
					$('#editWarrantyType').siblings("div.layui-form-select").find('dl').find(select).click();
					$("#editWarrantyTerm").val("");
					$("#editWarrantyCount").val("");
					$("#editAccumulationFundAddress").val("");
					$("#editAccumulationFundTerm").val("");
					$("#editAccumulationFundAmount").val("");
					$('#editOwnBusinessLicense').siblings("div.layui-form-select").find('dl').find(select).click();
				}); 
 				
				$('body').on('input propertychange','#validateTel',function(){
					console.log("失去焦点验证---");
		            $.ajax({
		                type: "get",
		                url: '<%=path%>customerManager/verifyUserPhone.action',
		                async: false,//同步提交。不设置则默认异步，异步的话，最后执行ajax
		                data: {userPhone:$("#validateTel").val()},
		                success: function (msg) {
		                   if(msg.code==200){
			                    layer.msg("该手机已在公众号注册！可申请业务！", {icon: 6});
			                    $("#validateResultInfo").empty();
			                    $("#validateResultInfo").html("√ &nbsp;&nbsp;&nbsp;该手机已在公众号注册！可申请业务！");
			                    $("#validateResultInfo").css('color','green'); 
			                    //将贷款人手机号自动填写
			                     $("#addApplicantTel").val($("#validateTel").val());
		                   }else{
		                       layer.msg("该手机未在公众号注册！不可申请业务！", {icon: 2});
			                    $("#validateResultInfo").empty();
			                    $("#validateResultInfo").html("× 该手机未在公众号注册！不可申请业务！");
			                    $("#validateResultInfo").css('color','red'); 
		                   }
		                }
		            });
				}); 
				
				//日期控件
				//执行一个laydate实例
				renderLayDate();
				
								//编辑弹出层 的表单验证
				 				form.verify({
				 					tel: function(value){ // ((13[0-9])|(14[5,7])|(15[0-3,5-9])|(17[0,3,5-8])|(18[0-9])|166|198|199|(147))\\d{8}
				 					console.log("表单验---"+value);
				 					    if(value!="" && !new RegExp("^((13[0-9])|(14[5,7])|(15[0-3,5-9])|(17[0,3,5-8])|(18[0-9])|166|198|199|(147))\\d{8}$").test(value)){
				 					       return '手机必须11位数字,且格式正确!';
				 					     }//"^[1[34578]\d{9}]+$"	
				 					},
				 					validateTel:function(value){
    									var code=0;
    						            $.ajax({
    						                type: "get",
    						                url: '<%=path%>userManager/verifyUserPhone.action',
    						                async: false,//同步提交。不设置则默认异步，异步的话，最后执行ajax
    						                data: {userPhone:value},
    						                success: function (ev) {
    						                    code = ev.code;
    						                }
    						            });
    									if(code!=200){
    										return "该手机未在公众号注册！不可申请业务！";
    									}
    								},
    								inputNumber:function(value){
    									if(value!="" && !new RegExp("^[0-9]+([.]{1}[0-9]+){0,1}$").test(value)){
 				 					       return '必须是数字,且格式正确!';
 				 					     }//"^[1[34578]\d{9}]+$"	
    								},
    								busSpeed:function(value){
    									console.log("流程---"+value);
    									if(value=="" ){
    										
 				 					       return '必须选择相应的流程处理！';
 				 					     }//"^[1[34578]\d{9}]+$"	
    								},
    								selectProduct:function(value){
    									//console.log("流程---"+value);
    									if(value=="" ){
    										
 				 					       return '必须选择最终签约产品！';
 				 					     }//"^[1[34578]\d{9}]+$"	
    								}
									})
								});

	function renderLayDate(){
		//重新渲染日期插件
		layui.use(['laydate'], function(){
			  var form = layui.form,
			  laydate = layui.laydate;
			  $('.my_class_name').each(function(){
					laydate.render({
							elem: this //使用this指向当前元素,不能使用class名, 否则只有第一个有效
					});
		})
		});
	}
	
	function transferProduction(fieldData,id){
		if(fieldData!=null){
			if(fieldData==1){
				$("#"+id+"").val("平安新一贷");
			}else if(fieldData==2){
				$("#"+id+"").val("兴业消费金融");
			}else if(fieldData==3){
				$("#"+id+"").val("中国银行消费金融");
			}else if(fieldData==4){
				$("#"+id+"").val("海尔-玖康");
			}else if(fieldData==5){
				$("#"+id+"").val("小额贷款");
			}
		}else{
			$("#"+id+"").val(null);
		}
	}
	
	function busIsHandle(dataPaxydBusId,obj,layer,speedDom){
     		//1 判断此条业务是否已有"签约经理"在处理，若在处理则无法进行“业务处理”
			//2 只有当没人处理 或是 处理人是本人的时候，才可处理。
			var isHandle;   //action?paxydBusId='+data.paxydBusId,
			var contractManIdX="${sessionScope.backGroundUser.userId}"
			var currentContract;
			$.ajax({
                 url:'<%=path%>contractManager/currentBusIsHandle.action',  
                 type:'GET',
                 data:{
              	  paxydBusId:dataPaxydBusId,
              	 contractManId:contractManIdX
                 },
                 async: false,
                 success:function (msg) {
              	   if(msg.returnCode=="200"){
              		  console.log("****************************---200");
              		  isHandle=false;
              	   }else if(msg.returnCode=="0"){
              		  console.log("****************************---0");
              		   isHandle=true;
              	   }
              	 currentContract=msg.currentBus;
              	   }
                 });
				if(isHandle){
					setTimeout(function () {
						layer.msg("正在更新该笔业务数据...请稍后...", {icon: 5});
					}, 2000);
		            setTimeout(function () {
		            	//将无法进行处理的业务信息进行更新
		            	obj.update({
                        	checkState:currentContract.checkState,
                         	salesManModel:currentContract.salesManModel,
                         	contractManName:currentContract.contractManName,
                         	type:currentContract.type,
			                applyDate:currentContract.applyDate,
			                name:currentContract.name,
			                sex:currentContract.sex,
			                applicantJob:currentContract.applicantJob,
			                applicantTel:currentContract.applicantTel,
			                applicatExpectLoanAccount:currentContract.applicatExpectLoanAccount,
			                housingLoanType:currentContract.housingLoanType,
			                housingLoanTerm:currentContract.housingLoanTerm,
			                warrantyType:currentContract.warrantyType,
			                warrantyTerm:currentContract.warrantyTerm,
			                warrantyCount:currentContract.warrantyCount,
			                accumulationFundAddress:currentContract.accumulationFundAddress,
			                accumulationFundTerm:currentContract.accumulationFundTerm,
			                accumulationFundAmount:currentContract.accumulationFundAmount,
			                ownBusinessLicense:currentContract.ownBusinessLicense,
			                salesManAdviceProduct:currentContract.salesManAdviceProduct,
			                salesManRemarkAndAdvice:currentContract.salesManRemarkAndAdvice,
			                contractManRemarkAndAdvice:currentContract.contractManRemarkAndAdvice,
			                applyFailReason:currentContract.applyFailReason,
			                applyRefuseReason:currentContract.applyRefuseReason,
			                loanStartDate:currentContract.loanStartDate,
			                finalProduct:currentContract.finalProduct,
			                loanAmount:currentContract.loanAmount
		            	});
		                layer.closeAll();//关闭所有的弹出层
		            }, 3000);
                   if(currentContract.checkState==0){
                      speedDom.html('不可申请');
                    }else if(currentContract.checkState==1){
                      speedDom.html('申请中');
                    }else if(currentContract.checkState==2){
                      speedDom.html('成功放款');
                    }else if(currentContract.checkState==3){
                      speedDom.html('申请被拒绝');
                    }
				}
				
			return isHandle;
	}