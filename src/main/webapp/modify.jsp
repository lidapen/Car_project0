<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改商品信息页面</title>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/js/jquery-2.2.1.min.js"></script>

    <script type="text/javascript">
        $(document).ready(function () {
            $("#btn").click(function () {
                var name = $("#name").val();
                var shangpType = $("#shangpType").val();
                if (name==""||name==null){
                    alert("商品名称不能为空！");
                }else if (shangpType==0){
                    alert("请选择商品类型！");
                }else if(state==0){
                    alert("请选择商品状态！");
                }else if(name!=""&&shangpType!=0&&state!=0){
                    $("#myForm").submit();
                }
            });


            var obj = document.getElementById("shangpType");
            for(i=0;i<obj.length;i++){
                if(obj[i].value == ${commodity.shangpType}) {
                    obj[i].selected = true;
                }
            }

            var obj1 = document.getElementById("state");
            for(i=0;i<obj1.length;i++){
                if(obj1[i].value == ${commodity.state}) {
                    obj1[i].selected = true;
                }
            }

        });
    </script>

    <style type="text/css">
        tr {
            height: 40px;
        }

        td {
            text-align: center;
        }

        table {
            width: 600px;
        }
    </style>
</head>
<body>
<form action="/modifyById" method="post" id="myForm">
    <table border="1px" cellspacing="0" cellpadding="0" align="center">
        <thead>
        <tr>
            <td colspan="4" style="text-align: center;background-color: aqua">
                <h1>修改商品信息</h1>
                <input type="hidden" name="id" id="id" value="${id}"/>
            </td>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>商品名称</td>
            <td><input type="text" id="name" name="name" value="${commodity.name}"/></td>
        </tr>
        <tr>
            <td>所属分类</td>
            <td>
                <select name="shangpType" id="shangpType">
                    <option id="001" value="0">请选择商品类型</option>
                    <option id="002" value="1">汽车轮胎</option>
                    <option id="003" value="2">汽车蜡</option>
                    <option id="004" value="2">后视镜</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>价格</td>
            <td><input type="text" id="price" name="price" value="${commodity.price}"/></td>
        </tr>
        <tr>
            <td>状态</td>
            <td>
                <select name="state" id="state">
                    <option id="op1" value="0">请选择商品状态</option>
                    <option id="op2" value="1">下架</option>
                    <option id="op3" value="2">上架</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>添加时间</td>
            <td><input id="inputTime" type="text" name="inputTime" value="<fmt:formatDate value='${commodity.inputTime}' pattern='yyyy-MM-dd'/>"/>
            </td>
        </tr>
        </tbody>
        <tfoot>
        <tr>
            <td colspan="4" style="text-align: center">
                <input type="button" id="btn" value="更新" />
                <input type="button" onclick="javascript:window.location.href='/query'" value="返回"/>
            </td>
        </tr>
        </tfoot>
    </table>
</form>
</body>
</html>
