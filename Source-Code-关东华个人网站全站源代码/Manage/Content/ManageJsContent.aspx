<%@ page language="C#" masterpagefile="~/Manage/I/Default.master" autoeventwireup="true" inherits="Manage_I_Content_ManageJsContent, App_Web_5ctdovhv" clientidmode="Static" validaterequest="false" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>文章JS文件管理</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="Server">
    <div class="opion_header">
        管理导航:
    <div class="btn-group">
        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">js文件管理<span class="caret"></span></button>
        <ul class="dropdown-menu" role="menu">
            <li><a href="AddJsContent.aspx"><i class="fa fa-plus"></i>添加JS文件（普通列表）</a></li>
            <li><a href="AddJsPic.aspx"><i class="fa fa-plus"></i>添加JS文件（图片列表）</a></li>
            <li></li>
        </ul>
    </div>
        <div class="btn-group">
            <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">图片列表操作<span class="caret"></span></button>
            <ul class="dropdown-menu" role="menu">
                <li><a href="?menu=rsallimg"><i class="fa fa-refresh"></i>刷新图片列表</a></li>
                <li><a href="?menu=rsalllist"><i class="fa fa-refresh"></i>刷新普通列表</a></li>
                <li></li>
            </ul>
        </div>
    </div>
    <ZL:ExGridView ID="EGV" runat="server" AutoGenerateColumns="False" PageSize="10" IsHoldState="false" 
        OnPageIndexChanging="EGV_PageIndexChanging" AllowPaging="True" AllowSorting="True" OnRowCommand="EGV_RowCommand"
        CssClass="table table-striped table-bordered table-hover" EnableTheming="False" EnableModelValidation="True">
        <Columns>
           <asp:TemplateField HeaderText="ID">
                <ItemTemplate>
                   <%#Eval("id")%>
                </ItemTemplate>
            </asp:TemplateField>
             <asp:TemplateField HeaderText="简介">
                <ItemTemplate>
                    <%#Eval("JsReadme")%>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="JS代码名称">
                <ItemTemplate>
                  <a href="<%#(Eval("JsType","{0}")=="1")?"AddJsPic.aspx":"AddJsContent.aspx" %>?menu=edit&id=<%#Eval("id") %>"><%#Eval("Jsname")%></a>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="代码类型">
                <ItemTemplate>
                    <%#(Eval("JsType","{0}") == "1") ? "图片列表" : "普通列表"%>
                </ItemTemplate>
            </asp:TemplateField>
             <asp:TemplateField HeaderText="JS文件名">
                <ItemTemplate>
                    <asp:HiddenField ID="hfGID" runat="server" Value='<%#Eval("id")%>' /> 
                   <%#Eval("JsFileName")%>
                </ItemTemplate>
            </asp:TemplateField>
             <asp:TemplateField HeaderText="JS调用代码">
                <ItemTemplate>
                     <textarea name='textarea' cols='36' rows='3' class="l_input" style="height: 40px"><%#Getscript(Eval("id","{0}")) %></textarea>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="操作">
                <ItemTemplate>
                   <a href="<%#(Eval("JsType","{0}")=="1")?"AddJsPic.aspx":"AddJsContent.aspx" %>?menu=edit&id=<%#Eval("id") %>" ><i class="fa fa-gear" title="设置"></i>参数设置</a>
                   <asp:LinkButton runat="server" CssClass="option_style" CommandName="refresh" CommandArgument='<%#Eval("id") %>'><i class="fa fa-refresh" title="刷新"></i>刷新</asp:LinkButton>
                   <asp:LinkButton runat="server" CssClass="option_style" CommandName="delInfo" CommandArgument='<%#Eval("id") %>' OnClientClick="return confirm('真的要删除此JS文件吗？如果有文件或模板中使用此JS文件，请注意修改过来！');"><i class="fa fa-trash-o" title="删除"></i>删除</asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </ZL:ExGridView> 
    <table class="table table-striped table-bordered table-hover">
        <tr>
            <td>
                <b>说明：</b>
                <br />
                这些JS代码是为了加快访问速度特别生成的。在添加/修改/审核/删除文章时，系统会自动刷新各JS文件。必要时，你也可以手动刷新。如添加了新的JS文件，但还没有添加文章，此时就可以手动刷新有关JS文件。
				<br />
                <font color="red">若文件名为红色，表示此JS文件还没有生成。</font>
                <br />
                <b>使用方法：</b>
                <br />
                将相关JS调用代码复制到页面或模板中的相关位置即可。可参见系统提供的各页面及模板。
            </td>
        </tr>
    </table>
    <style>
        .table > tbody > tr > td { width:5%;}
        .table > tbody > tr > td:first-child{ width:1%;}
        .table > tbody > tr > td:nth-child(6){ width:1%;}
    </style>
    <script>
        function getinfo(id, types) {
            types == "1" ? location.href = 'AddJsPic.aspx?menu=edit&id=' + id : location.href = 'AddJsContent.aspx?menu=edit&id=' + id;
        }
        $("#AllID_Chk").hide();
        $(".allchk_sp").hide();
    </script>
</asp:Content>
