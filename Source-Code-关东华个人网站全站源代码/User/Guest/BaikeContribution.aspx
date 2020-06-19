﻿<%@ page title="" language="C#" masterpagefile="~/User/Default.master" autoeventwireup="true" inherits="User_Guest_BaikeContribution, App_Web_nkgq3li2" clientidmode="Static" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<asp:Content ContentPlaceHolderID="head" runat="Server">
<title>我的词条贡献</title>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="Content">
    <div id="pageflag" data-nav="index" data-ban="baike"></div>
    <div class="container margin_t10">
<ol class="breadcrumb">
	<li>您现在的位置：<a title="网站首页" href="/"><%= Call.SiteName%></a></li>
    <li><a title="会员中心" href="/User/Default.aspx">会员中心</a></li>
    <li class="active">我的词条贡献</li>
	<div class="clearfix"></div>
</ol>
    </div>
<div class="container">
<div class="us_seta">
    <table class="table table-striped table-bordered table-hover">
        <tr class="title">
            <td>基本情况</td>
        </tr>
        <tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" class="tdbg">
            <td>
                <ul>
                    <li style="float: left; text-align: center; margin-left: 20px;">提交版本<br />
                        <%=GetBasic("1") %></li>

                    <li style="float: left; text-align: center; margin-left: 20px;">通过版本<br />
                        <%=GetBasic("2") %></li>

                    <li style="float: left; text-align: center; margin-left: 20px;">通过率<br />
                        <%=GetBasic("3") %></li>
                </ul>
            </td>
        </tr>
    </table>
    <table class="table table-striped table-bordered table-hover">
        <tr class="title">
            <td style="width: 70%;">我的词条信息</td>
            <td style="width: 30%;">
                <select id="switch" onchange="switchChange(this)" style="width: 100px;">
                    <option value="0">已通过版本</option>
                    <option value="1">待审核版本</option>
                    <option value="2">未通过版本</option>
                </select></td>
        </tr>
        <ZL:ExRepeater ID="Repeater_baike" runat="server" PagePre="<tr><td colspan='2' class='text-center'><input type='checkbox' id='CheckAll' />" PageEnd="</td></tr>" OnItemDataBound="Repeater_baike_ItemDataBound">
            <ItemTemplate>
                <tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" class="tdbg">
                    <td style="width: 70%; padding-left: 10px; line-height: 22px;">
                        <a href='/Guest/Baike/Details.aspx?soure=manager&tittle=<%#Server.UrlEncode(Eval("Tittle").ToString()) %>' target="_blank"><%# Eval("Tittle")%></a><br />
                        [<%#Convert.ToDateTime(Eval("AddTime")).ToString("yyyy-MM-dd")%>]
                    </td>
                    <td style="width: 30%;">
                        <label runat="server" id="lbstatus"></label>
                    </td>
                </tr>
            </ItemTemplate>
            <FooterTemplate></FooterTemplate>
        </ZL:ExRepeater>
    </table>
</div>
</div>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ScriptContent">
<script>
    window.onload = function () {
        var type = location.href.split("type=")[1];
        if (type == 0 || type == 1 || type == 2 || type == 3) {
            document.getElementById("switch").value = type;
        }
    }
    function switchChange(obj) {
        location.href = "?type=" + obj.value;
    }
</script>
</asp:Content>
