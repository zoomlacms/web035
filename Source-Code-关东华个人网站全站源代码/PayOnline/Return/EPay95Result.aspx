﻿<%@ page language="C#" autoeventwireup="true" inherits="PayOnline_EPay95Result, App_Web_itjoeynk" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
</head>
<body>
    <form>
    <input name="MerNo" value="<%=MerNo%>" />
    <input name="BillNo" value="<%=BillNo%>" />
    <input name="Amount" value="<%=Amount%>" />
    <input name="Succeed" value="<%=Succeed%>" />
    <input name="Result" value="<%=Result%>" />
    <input name="MD5info" value="<%=MD5info%>" />
    <input name="MerRemark" value="<%=MerRemark%>" />
    <%--<input type="hidden" name="products" value="<%=Products%>" />--%>
    <%--<input type="submit" name="b1" value="提交" />--%>
    </form>
</body>
</html>