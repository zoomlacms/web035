<%@ page language="C#" autoeventwireup="true" inherits="manage_Zone_SnsSchool, App_Web_vs4joo0g" masterpagefile="~/Manage/I/Default.master" enableviewstatemac="false" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<asp:Content runat="server" ContentPlaceHolderID="head">
    <title>学校信息配置</title>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="Content">
<table id="EGV" class="table table-striped table-bordered table-hover content_list">
    <tr>
        <td class="td_s"></td>
        <td>ID</td>
        <td class="egv_td_min60">学校微标</td>
        <td>学校名称</td>
        <td>地址</td>
        <td>添加时间</td>
        <td>操作</td>
    </tr>
    <ZL:Repeater ID="RPT" runat="server" PageSize="10" PagePre="<tr><td><label class='allchk_l'><input type='checkbox' id='chkAll'/>全选</label></td><td colspan='8'><div class='text-center'>" PageEnd="</div></td></tr>" OnItemDataBound="RPT_ItemDataBound" OnItemCommand="RPT_ItemCommand">
        <ItemTemplate>
            <tr>
                <td><input name="idchk" type="checkbox" value='<%#Eval("ID")  %>' /></td>
                <td><%#Eval("ID") %></td>
                <td><%#GetIcon(Eval("Country").ToString()) %></td>
                <td><%#Eval("SchoolName") %></td>
                <td><%#Eval("Province") + " " + Eval("City") + " " + Eval("County") %></td>
                <td><%#Eval("AddTime","{0:yyyy年MM月dd日 HH:mm}") %></td>
                <td>
                    <a href="SchoolShow.aspx?id=<%#Eval("ID") %>" title="浏览"><i class="fa fa-eye"></i></a>
                    <a href="AddSchool.aspx?id=<%#Eval("ID") %>" title="修改"><i class="fa fa-pencil"></i></a>
                    <asp:LinkButton ID="LinkButton1" CommandName="del1" CommandArgument='<%# Eval("ID") %>' OnClientClick="return confirm('是否删除!')" ToolTip="删除" runat="server"><i class="fa fa-trash"></i></asp:LinkButton>
                    <a href="AddClassRoom.aspx?sid=<%#Eval("ID") %>"><i class="fa fa-plus"></i>添加班级</a>
                </td>
            </tr>
        </ItemTemplate>
        <FooterTemplate></FooterTemplate>
    </ZL:Repeater>
</table>
<asp:Button ID="DelBtn" CssClass="btn btn-primary" runat="server" Text="批量删除" OnClick="DelBtn_Click" OnClientClick="return confirm('你确认要删除选定的记录吗？')}" />
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ScriptContent">
<script type="text/javascript" src="/JS/SelectCheckBox.js"></script>
<script type="text/javascript">
    $(function () {
        $("#EGV tr").dblclick(function () {
            window.location.href = "AddSchool.aspx?id="+$(this).find("input[name=idchk]").val();
        });
        $("#chkAll").click(function () {//EGV 全选
            selectAllByName(this, "chkSel");
        });
    })
    function IsSelectedId() {
        var checkArr = $("input[type=checkbox][name=chkSel]:checked");
        if (checkArr.length > 0)
            return true
        else
            return false;
    }
</script>
</asp:Content>
