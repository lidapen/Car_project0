<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
	<head>
		<meta charset="UTF-8">
		<title>商品列表</title>
		<link type="text/css" rel="stylesheet" href="fontsawesome/css/font-awesome.css"/>
		<link type="text/css" rel="stylesheet" href="css/style.css"/>
	</head>
			<h2><span></span>商品列表</h2>
			<div class="cont_box">
				<table border="0" cellspacing="0" cellpadding="0" class="table" id="table_box">
				<thead>
					<tr>
						<th>编号</th>
						<th>商品名称</th>
						<th>所属分类</th>
						<th>价格</th>
						<th>状态</th>
						<th>添加时间</th>
						<th width="268">操作</th>
					</tr>
				</thead>
				<tbody id="mytable">
				<c:forEach items="${information.information}" var="item">
					${item}
					<tr id="1"><!--此处id为进行编辑或删除时该条数据的唯一标识-->
						<td>${item.id}</td>
						<td>${item.name}</td>
						<td>${item.shangpType}</td>
						<td>${item.price}</td>
						<td>
							<a href="javascript:void(0);" class="table_btn table_warning up_shelf">
								<i class="fa fa-arrow-up"></i>
								<span>${item.state}</span>
							</a>
						</td>
						<td><fmt:formatDate value="${item.inputTime}" pattern="yyyy-MM-dd"/> </td>
						<td>
							<a href="/toModify?id=${item.id}">编辑</a>
							<a href="#" onclick="confirm('确认删除吗？')? location.href='/deleById?id=${item.id}':href='javascript:;'">删除</a>
						</td>
					</tr>
				</c:forEach>
					<c:if test="${msg!=null}">
						<tr>
							<td colspan="7" style="text-align: center">
									${msg}
							</td>
						</tr>
					</c:if>

				</tbody>
					<tfoot>
					<tr>
						<td colspan="7" style="text-align: center">
							<a href="/query?pageNo=1&condition=${condition}">首页</a>&nbsp;
							<c:if test="${information.currPageNo>1}">
								<a href="/query?pageNo=${information.currPageNo-1}&condition=${condition}">上一页</a>&nbsp;
							</c:if>
							<c:if test="${information.currPageNo<information.totalPageCount}">
								<a href="/query?pageNo=${information.currPageNo+1}&condition=${condition}">下一页</a>&nbsp;
							</c:if>
							<a href="/query?pageNo=${information.totalPageCount}&condition=${condition}">末页</a>&nbsp;
							<span>第${information.currPageNo}页/共${information.totalPageCount}页</span>
						</td>
					</tr>
					</tfoot>
			</table>
		</div>
		</div>
		<!--javascript include-->
		<script src="js/jquery-2.2.1.min.js"></script>
		<script src="js/jquery.dataTables.min.js"></script>
		<script src="js/bootstrap-datepicker.js"></script>
		<script src="js/jquery.validate.min.js"></script>
		<script src="js/other.js"></script>
		<script>
			$(function(){
				$("body").other({tableId:"#table_box",tableWrap:[0,1,6],tableAas:[ 5,"desc"],tableSearch:true});
				$("body").tipWindow({method:"delete",Class:".del_btn",even:"click",Twidth:"400",Theight:"180",delUrl:"#"});//delUrl 删除请求地址
				$("body").tipWindow({method:"edit",type:"form",Class:".edit_btn",even:"click",tipTit:"商品编辑",Twidth:"700",Theight:"600",editUrl:"edit_Goods.html"});//editUrl 编辑请求地址
				$("body").tipWindow({method:"Shelf",Twidth:"400",Theight:"180",shelfUrl:"#"});//shelfUrl 上下架请求地址
			});
		</script>
	</body>
</html>
