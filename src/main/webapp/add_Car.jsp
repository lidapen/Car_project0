<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
	<head>
		<meta charset="UTF-8">
		<title>添加爱车</title>
		<link type="text/css" rel="stylesheet" href="fontsawesome/css/font-awesome.css"/>
		<link type="text/css" rel="stylesheet" href="css/style.css"/>
		<link type="text/css" rel="stylesheet" href="css/datepicker.css"/>
	</head>
	<body>
		<div class="main_box">
			<div class="cont_box editpro_box">
				<form action="#" method="post" id="user_form">
					<ul class="addpro_box adduser_box">
						<li>
							<label>车牌号：</label>
							<input type="text" placeholder="请输入车牌号码" name="isCarNo" required data-rule-isCarNo="true" data-msg-required="车牌号码不能为空"/>
						</li>
						<li>
							<label>行驶里程：</label>
							<input type="text" placeholder="请输入行驶里程" name="mileage" required data-rule-mileage="true" data-msg-required="行驶里程不能为空"/>
						</li>
						<li>
							<label>保险到期日：</label>
							<input type="text" class="choose_date" placeholder="请选择保险到期日" name="chdate" readonly required data-msg-required="保险到期日不能为空"/>
						</li>
						<li>
							<label>车品牌型号：</label>
							<div class="select_group" id="carmodel">
								<select name="carbrand" class="carbrand" required data-msg-required="车品牌型号不能为空">
									<option value="">请选择</option>
								</select>
								<select name="carmodela" class="carmodela" required data-msg-required="车品牌型号不能为空">
									<option value="">请选择</option>
								</select>
								<select name="carmodelb" class="carmodelb" required data-msg-required="车品牌型号不能为空">
									<option value="">请选择</option>
								</select>
								<select name="carmodelc" class="carmodelc" required data-msg-required="车品牌型号不能为空">
									<option value="">请选择</option>
								</select>
							</div>
						</li>
					</ul>
					<div class="probtn_box clearfix">
						<input type="button" value="添加爱车" class="btn blue_btn submit"/>
					</div>
				</form>
			</div>
		</div>
		<!--javascript include-->
		<script src="js/jquery-2.2.1.min.js"></script>
		<script src="js/jquery.dataTables.min.js"></script>
		<script src="js/bootstrap-datepicker.js"></script>
		<script src="js/jquery.validate.min.js"></script>
		<script src="js/jquery.form.min.js"></script>
		<script src="js/jquery.cxselect.min.js"></script>
		<script src="js/other.js"></script>
		<script>
			$(function(){
				$("body").other({formId:"#user_form",formUrl:"#"});//formUrl 表单请求地址,linkHref 请求成功后跳转地址，此页面不需要，已删除
				$("#carmodel").cxSelect({
					url: "js/carModel.json",
					selects: ["carbrand", "carmodela", "carmodelb", "carmodelc"],
					emptyStyle: "none"
				});
			});
		</script>
	</body>
</html>