<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
	<head>
		<meta charset="UTF-8">
		<title>会员添加</title>
		<link type="text/css" rel="stylesheet" href="fontsawesome/css/font-awesome.css"/>
		<link type="text/css" rel="stylesheet" href="css/style.css"/>
		<link type="text/css" rel="stylesheet" href="css/datepicker.css"/>
	</head>
	<body>
		<div class="main_box">
			<h2><span></span>添加会员</h2>
			<div class="cont_box">
				<form action="#" method="post" id="user_form">
					<ul class="addpro_box adduser_box">
						<li>
							<label>姓名：</label>
							<input type="text" placeholder="请输入姓名" name="name" id="name" required data-rule-fullname="true" data-msg-required="会员姓名不能为空"/>
						</li>
						<li>
							<label>手机号：</label>
							<input type="text" placeholder="请输入手机号" name="phone" id="phone" required data-rule-mobile="true" data-msg-required="会员手机号不能为空"/>
						</li>
						<li>
							<label>车牌：</label>
							<input type="text" placeholder="请输入车牌号码" name="isCarNo" required data-rule-isCarNo="true" data-msg-required="车牌号码不能为空"/>
						</li>
						<%--<li>--%>
							<%--<label>行驶里程：</label>--%>
							<%--<input type="text" placeholder="请输入行驶里程" name="mileage" required data-rule-mileage="true" data-msg-required="行驶里程不能为空"/>--%>
						<%--</li>--%>
						<%--<li>--%>
							<%--<label>保险到期日：</label>--%>
							<%--<input type="text" class="choose_date" placeholder="请选择保险到期日" name="chdate" readonly required data-msg-required="保险到期日不能为空"/>--%>
						<%--</li>--%>
						<li>
							<label>车品牌型号：</label>
							<div class="select_group" id="carmodel">
								<select name="car_brand" class="car_brand" required data-msg-required="车品牌型号不能为空">
									<option value="0" selected>请选择</option>
									<option value="1">宝马</option>
									<option value="2">大众</option>
									<option value="3">奔驰</option>
								</select>

							</div>
						</li>
						<%--<li>--%>
							<%--<label>备注：</label>--%>
							<%--<textarea rows="3" name="detail"></textarea>--%>
						<%--</li>--%>
					</ul>
					<div class="probtn_box clearfix">
						<input type="submit" value="添加会员" class="btn blue_btn"/>
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
				$("body").other({formId:"#user_form",formUrl:"#",linkHref:""});//formUrl 表单请求地址,linkHref 请求成功后跳转地址，可不填
				$("#carmodel").cxSelect({
					url: "js/carModel.json",
					selects: ["carbrand", "carmodela", "carmodelb", "carmodelc"],
					emptyStyle: "none"
				});
			});
		</script>
	</body>
</html>