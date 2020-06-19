﻿<%@ page language="C#" autoeventwireup="true" inherits="Zoomla.Website.manage.Shop.OrderList, App_Web_s4u44cij" masterpagefile="~/Manage/I/Default.master" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<asp:Content runat="server" ContentPlaceHolderID="head">
    <title>订单列表</title>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="Content">
    <table class="table table-striped table-bordered table-hover hidden-xs">
        <tr>
            <td>
                <span class="pull-left"><%=Resources.L.快速查找 %>：
                    <asp:DropDownList ID="quicksouch" CssClass="form-control" Width="200" runat="server" AutoPostBack="True" OnSelectedIndexChanged="quicksouch_SelectedIndexChanged">
                        <asp:ListItem Selected="True" Value="0" Text="<%$Resources:L,请选择查找方式 %>"></asp:ListItem>
                        <asp:ListItem Value="1" Text="<%$Resources:L,我负责跟踪的订单 %>"></asp:ListItem>
                        <asp:ListItem Value="2" Text="<%$Resources:L,今天的新订单 %>"></asp:ListItem>
                        <asp:ListItem Value="3" Text="<%$Resources:L,所有订单 %>"></asp:ListItem>
                        <asp:ListItem Value="4" Text="<%$Resources:L,最近10天内的新订单 %>"></asp:ListItem>
                        <asp:ListItem Value="5" Text="<%$Resources:L,最近一个月内的新订单 %>"></asp:ListItem>
                        <asp:ListItem Value="6" Text="<%$Resources:L,未确认的订单 %>"></asp:ListItem>
                        <asp:ListItem Value="7" Text="<%$Resources:L,未付款的订单 %>"></asp:ListItem>
                        <asp:ListItem Value="8" Text="<%$Resources:L,未付清的订单 %>"></asp:ListItem>
                        <asp:ListItem Value="9" Text="<%$Resources:L,未送货的订单 %>"></asp:ListItem>
                        <asp:ListItem Value="10" Text="<%$Resources:L,未签收的订单 %>"></asp:ListItem>
                        <asp:ListItem Value="11" Text="<%$Resources:L,未结清的订单 %>"></asp:ListItem>
                        <asp:ListItem Value="12" Text="<%$Resources:L,未开发票的订单 %>"></asp:ListItem>
                        <asp:ListItem Value="13" Text="<%$Resources:L,已经作废的订单 %>"></asp:ListItem>
                        <asp:ListItem Value="14" Text="<%$Resources:L,暂停处理的订单 %>"></asp:ListItem>
                        <asp:ListItem Value="15" Text="<%$Resources:L,已发货的订单 %>"></asp:ListItem>
                        <asp:ListItem Value="16" Text="<%$Resources:L,已签收的订单 %>"></asp:ListItem>
                        <asp:ListItem Value="17" Text="<%$Resources:L,已结清的订单 %>"></asp:ListItem>
                        <asp:ListItem Value="18" Text="<%$Resources:L,已申请退款的订单 %>"></asp:ListItem>
                    </asp:DropDownList>
                </span>
                <span class="pull-left" style="margin-left:10px;margin-right:10px;">
                    <%=Resources.L.高级查询 %>：
                    <asp:DropDownList ID="souchtable" CssClass="form-control" Width="150" runat="server">
                        <asp:ListItem Selected="True" Value="1" Text="<%$Resources:L,订单编号 %>"></asp:ListItem>
                        <asp:ListItem Value="2" Text="<%$Resources:L,客户名称 %>"></asp:ListItem>
                        <asp:ListItem Value="3" Text="<%$Resources:L,用户名 %>"></asp:ListItem>
                        <asp:ListItem Value="4" Text="<%$Resources:L,收货人 %>"></asp:ListItem>
                        <asp:ListItem Value="5" Text="<%$Resources:L,联系地址 %>"></asp:ListItem>
                        <asp:ListItem Value="6" Text="<%$Resources:L,联系电话 %>"></asp:ListItem>
                        <asp:ListItem Value="7" Text="<%$Resources:L,下单时间 %>"></asp:ListItem>
                        <asp:ListItem Value="8" Text="<%$Resources:L,备注留言 %>"></asp:ListItem>
                        <asp:ListItem Value="9" Text="<%$Resources:L,商品名称 %>"></asp:ListItem>
                        <asp:ListItem Value="10" Text="<%$Resources:L,收货人邮箱 %>"></asp:ListItem>
                        <asp:ListItem Value="11" Text="<%$Resources:L,发票信息 %>"></asp:ListItem>
                        <asp:ListItem Value="12" Text="<%$Resources:L,内部记录 %>"></asp:ListItem>
                        <asp:ListItem Value="13" Text="<%$Resources:L,跟单员 %>"></asp:ListItem>
                    </asp:DropDownList>
                </span>
                <div class="input-group" style="width:300px; float:left;">
                    <asp:TextBox runat="server" ID="souchkey" class="form-control" placeholder="<%$Resources:L,请输入需要搜索的内容 %>" />
                    <span class="input-group-btn">
                        <asp:LinkButton runat="server" CssClass="btn btn-default" ID="souchok" OnClick="souchok_Click"><span class="glyphicon glyphicon-search"></span></asp:LinkButton>
                    </span>
                </div>
            </td>
        </tr>
    </table>
    <table id="store_tb" style="display:none;" class="table table-bordered table-hover">
        <tr>
            <td></td>
            <td><%=Resources.L.订单编号 %></td>
            <td><%=Resources.L.客户名称 %></td>
            <td><%=Resources.L.用户名 %></td>
            <td><%=Resources.L.下单时间 %></td>
            <td><%=Resources.L.实际金额 %></td>
            <td><%=Resources.L.收款金额 %></td>
            <td><%=Resources.L.需要发票 %></td>
            <td><%=Resources.L.订单状态 %></td>
            <td><%=Resources.L.付款状态 %></td>
            <td><%=Resources.L.物流状态 %></td></tr>
            <ZL:ExRepeater runat="server" ID="Store_RPT" PageSize="10" PagePre="<tr id='page_tr'><td><input type='checkbox' id='chkAll'/></td><td colspan='10' id='page_td'>" PageEnd="</td></tr>">
                <ItemTemplate>
                  <tr ondblclick="location='Orderlistinfo.aspx?id=<%#Eval("ID") %>';">
                      <td><%#Getclickbotton(Eval("ID","{0}"))%></td>
                      <td><%#GetOrderNo(Eval("ID","{0}"))%></td>
                      <td><%#GetUser(Eval("Reuser", "{0}"))%></td>
                      <td><a onclick="opentitle('../User/Userinfo.aspx?id=<%#Eval("userId") %>','<%=Resources.L.查看会员 %>')" href="###" title="<%=Resources.L.查看会员 %>"><%#GetUsers(Eval("userId", "{0}"))%></a></td>
                      <td><%#Eval("AddTime") %></td>
                      <td><%#getshijiage(Eval("id", "{0}"))%></td>
                      <td><%#formatcs(Eval("ordertype","{0}"),Eval("Receivablesamount","{0:N2}"))%><%#getMoney_sign(Eval("Money_code").ToString())%></td>
                      <td><%#IsNeedInvo(Eval("Developedvotes","{0}")) %></td>
                      <td><%#formatzt(Eval("OrderStatus", "{0}"),"0")%> <input type="hidden" class="returnmsg_hid" value="<%#Eval("Guojia") %>" /></td>
                      <td><%#formatzt(Eval("Paymentstatus", "{0}"),"1")%></td>
                      <td><%#formatzt(Eval("StateLogistics", "{0}"),"2")%></td>
                  </tr>
                </ItemTemplate>
                <FooterTemplate>
                    <tr><td colspan="11"><span>实际金额合计:</span><span class="rd_red_l"><%#GetTotalSum() %></span></td></tr>
                </FooterTemplate>
            </ZL:ExRepeater>
        <asp:HiddenField runat="server" ID="TotalSum_Hid" />
    </table>
    <table id="hotel_tb" style="display:none;" class="table table-bordered table-hover"><!--酒店订单-->
        <tr>
            <td></td>
            <td><%=Resources.L.订单编号 %></td>
            <td><%=Resources.L.客户名称 %></td>
            <td><%=Resources.L.用户名 %></td>
            <td><%=Resources.L.入住时间 %></td>
            <td><%=Resources.L.实际金额 %></td>
            <td><%=Resources.L.收款金额 %></td>
            <td><%=Resources.L.需要发票 %></td>
            <td><%=Resources.L.订单状态 %></td>
            <td><%=Resources.L.付款状态 %></td></tr>
            <ZL:ExRepeater runat="server" ID="Hotel_RPT" PageSize="10" PagePre="<tr id='page_tr'><td><input type='checkbox' id='chkAll'/></td><td colspan='10' id='page_td'>" PageEnd="</td></tr>">
                <ItemTemplate>
                  <tr ondblclick="location='Orderlistinfo.aspx?id=<%#Eval("ID") %>';">
                      <td><%#Getclickbotton(Eval("ID","{0}"))%></td>
                      <td><%#GetOrderNo(Eval("ID","{0}"))%></td>
                      <td><%#GetUser(Eval("Reuser", "{0}"))%></td>
                      <td><a onclick="opentitle('../User/Userinfo.aspx?id=<%#Eval("userId") %>','查看会员')" href="###" title="<%=Resources.L.查看会员 %>"><%#GetUsers(Eval("userId", "{0}"))%></a></td>
                      <td><%#Eval("AddTime") %></td>
                      <td><%#Eval("OrdersAmount","{0:f2}")%></td>
                      <td><%#formatcs(Eval("ordertype","{0}"),Eval("Receivablesamount","{0:N2}"))%><%#getMoney_sign(Eval("Money_code").ToString())%></td>
                      <td><%#IsNeedInvo(Eval("Developedvotes","{0}")) %> <input type="hidden" class="returnmsg_hid" value="<%#Eval("Guojia") %>" /></td>
                      <td><%#formatzt(Eval("OrderStatus", "{0}"),"0")%> </td>
                      <td><%#formatzt(Eval("Paymentstatus", "{0}"),"1")%></td>
                  </tr>
                </ItemTemplate>
                <FooterTemplate>
                    <tr><td colspan="11"><span>金额合计:</span><span class="rd_red_l"><%#GetTotalSum() %></span></td></tr>
                </FooterTemplate>
            </ZL:ExRepeater>
    </table>


    <asp:Button ID="Button2" class="btn btn-primary" Text="<%$Resources:L,确认订单 %>" runat="server" OnClick="Button2_Click1" OnClientClick="return confirm('是否确认？');" />
  <%--  <asp:Button ID="Button3" class="btn btn-primary" Text="<%$Resources:L,汇款到帐 %>" runat="server" OnClick="Button3_Click1" OnClientClick="return confirm('是否确认？');" />--%>
    <asp:Button ID="Button1" class="btn btn-primary" Text="<%$Resources:L,删除订单 %>" runat="server" OnClick="Button1_Click1" OnClientClick="if(!IsSelectedId()){alert('请选择删除项');return false;}else{return confirm('不可恢复性删除数据,你确定将该数据删除吗？')}" />
    <div class="rd_green">*<%=Resources.L.说明 %>：<%=Resources.L.已结清与已付款的订单不允许删除 %></div>
    <asp:HiddenField runat="server" ID="Element_Hid" />
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ScriptContent">
    <script type="text/javascript" src="/JS/Controls/ZL_Dialog.js"></script>
    <script type="text/javascript" src="/JS/SelectCheckBox.js"></script>
    <script type="text/javascript" src="/JS/ICMS/ZL_Common.js"></script>
    <script>
        $().ready(function () {
            HideColumn("3,4,5,7,10,11");
            $("#chkAll").click(function () {
                selectAllByName(this, "idchk");
            });
            if ($("#Element_Hid").val() != "") {
                $("#" + $("#Element_Hid").val()).show();
            }
        })
        function IsSelectedId() {
            var checkArr = $("[name=idchk]:checked");
            if (checkArr.length > 0)
                return true
            else
                return false;
        }
        function opentitle(url, title) {
            var diag = new ZL_Dialog();
            diag.width = "width1100";
            diag.title = title;
            diag.url = url;
            diag.ShowModal();
        }
        function ShowElement(id)
        {
            $("#" + id).show();
            $("#Element_Hid").val(id);
        }
        var tempdiag = new ZL_Dialog();
        //拒绝退款理由
        function ShowReturn(obj) {
            var $td = $(obj).closest("td");
            $('body').append("<div id='ReturnDiag' style='display:none;'><p>" + $td.find('.returnmsg_hid').val() + "</p></div>");
            tempdiag.title = "<%=Resources.L.拒绝退款理由 %>";
            tempdiag.body = "";
            tempdiag.content = "ReturnDiag";
            tempdiag.reload = true;
            tempdiag.ShowModal();
        }
    </script>
</asp:Content>

