<%@ page language="C#" autoeventwireup="true" validaterequest="false" inherits="manage_User_EidtMailModel, App_Web_xi4tdhvb" enableviewstatemac="false" masterpagefile="~/Manage/I/Default.master" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<%@ Register Src="~/Manage/I/ASCX/SFileUp.ascx" TagPrefix="ZL" TagName="FileUp" %>
<asp:Content runat="server" ContentPlaceHolderID="head">
    <title>编辑模板</title>
    <script type="text/javascript" charset="utf-8" src="/Plugins/Ueditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="/Plugins/Ueditor/ueditor.all.js"></script>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="Content">
<table class="table table-striped table-bordered table-hover">
    <tr style="width: 100%" class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
    <td class="text-right td_l" >模板名称:</td>
    <td>
        <asp:Label ID="TempName_T" runat="server" ></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="text-right">模板内容:<br />(支持标签)</td>
        <td>
            <asp:TextBox ID="Content_T" runat="server" CssClass="m715-50" TextMode="MultiLine" Height="300"></asp:TextBox>
            <%=Call.GetUEditor("Content_T",3) %>
        </td>
    </tr>
    <tr>
        <td colspan="2" class="text-center">
            <asp:Button ID="Save_Btn" runat="server" CssClass="btn btn-primary" Text="保存配置" OnClientClick="return checkData()" OnClick="Save_Btn_Click" />
            <a href="RegValidateMail.aspx" class="btn btn-primary">返回列表</a>
        </td>
    </tr>
</table> 
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ScriptContent">
    <script>
        function checkData() {
            //if ($("#TempName_T").val() == "") { alert("邮件模板名称不能为空!"); return false; }
            UE.getEditor("Content_T").execCommand('source');//切换源码
            $("#Content_T").val(UE.getEditor("Content_T").getAllHtml());
            return true;
        }
        $(function () {
            setTimeout(function () { UE.getEditor("Content_T").execCommand('source') }, 1000);
        })
    </script>
</asp:Content>
