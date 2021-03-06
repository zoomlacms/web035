﻿<%@ page language="C#" autoeventwireup="true" inherits="Design_PageList, App_Web_0mr5o1fo" masterpagefile="~/Common/Master/Empty.master" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<asp:Content runat="server" ContentPlaceHolderID="head"><title>页面管理</title></asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="Content">
    <ZL:ExGridView ID="EGV" runat="server" AutoGenerateColumns="False" PageSize="10" IsHoldState="false"
        OnPageIndexChanging="EGV_PageIndexChanging" AllowPaging="True" AllowSorting="True" OnRowCommand="EGV_RowCommand"
        CssClass="table table-striped table-bordered table-hover" EnableTheming="False" EnableModelValidation="True" EmptyDataText="没有页面">
        <Columns>
            <asp:TemplateField>
                <ItemTemplate><input type="checkbox" name="idchk" value="<%#Eval("ID") %>" /></ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField HeaderText="标题" DataField="Title" />
            <asp:BoundField HeaderText="访问路径" DataField="Path" />
            <asp:BoundField HeaderText="创建时间" DataField="CDate" DataFormatString="{0:yyyy年MM月dd日 hh:mm}" />
            <asp:TemplateField HeaderText="操作">
                <ItemTemplate>
                    <a href="/Design/PreView.aspx?ID=<%#Eval("Guid") %>" target="_blank"><i class="fa fa-eye" title="预览"></i></a>
                    <a href="javascript:;" onclick="EdigPage('<%#Eval("Guid") %>');"><i class="glyphicon glyphicon-pencil" title="修改"></i> </a>
                  <%--  <asp:LinkButton runat="server" CommandName="del2" CommandArgument='<%#Eval("ID") %>' OnClientClick="return confirm('确定要删除吗?');"><i class="glyphicon glyphicon-trash" title="删除"></i> </asp:LinkButton>--%>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </ZL:ExGridView>
    <div class="alert alert-danger">未设定访问路径的页面,将无法被用户浏览</div>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="Script">
    <script>
        function EdigPage(guid) {
            if (top) { top.location = "/Design/?ID=" + guid; }
        }
    </script>
</asp:Content>