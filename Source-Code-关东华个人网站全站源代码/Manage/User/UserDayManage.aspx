﻿<%@ page language="C#" autoeventwireup="true" inherits="manage_User_UserDayManage, App_Web_qofts4po" enableviewstatemac="false" masterpagefile="~/Manage/I/Default.master" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<asp:Content runat="server" ContentPlaceHolderID="head">
    <title>用户节日管理</title>
</asp:Content>

<asp:Content runat="server" ContentPlaceHolderID="Content">
  <table class="table table-striped table-bordered table-hover">
    <tr class="tdbgleft">
      <td> 选择日期：
        

        <asp:TextBox ID="txtdate" runat="server" Width="150px" class="form-control" style="max-width:200px;display:inline;" onclick="WdatePicker({ dateFmt: 'yyyy-MM-dd' });"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="搜索" class="btn btn-primary"  onclick="Button1_Click"/></td>
    </tr>
  </table>
  <div class="clearbox"></div>
  <table class="table table-striped table-bordered table-hover">
    <tr class="tdbg">
      <td align="center" class="spacingtitle" colspan="7"> 用户节日管理 </td>
    </tr>
    <tr class="tdbgleft" style="text-align: center; font-weight: bold" height="26px">
      <td width="10%">ID</td>
      <td width="20%">时间</td>
      <td width="30%">节日标题</td>
      <td width="10%">用户</td>
      <td width="10%">邮件发送状态</td>
      <td width="10%">短信发送状态</td>
      <td width="10%">操作</td>
    </tr>
    <ZL:ExRepeater ID="RPT" runat="server" PagePre="<tr><td colspan='7' class='text-center'><input type='checkbox' id='CheckAll' />" PageEnd="</td></tr>">
      <ItemTemplate>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'"
                style="text-align: center;" height="23px">
          <td width="200px"><%#Eval("id") %></td>
          <td><%#Eval("D_date","{0:d}")%></td>
          <td><%#Eval("D_name")%></td>
          <td><%#Getusername(Eval("d_userid","{0}")) %></td>
          <td><%#Eval("D_mail","已发送 {0} 次")%></td>
          <td><%#Eval("D_mobile", "已发送 {0} 次")%></td>
          <td><a href="?menu=delete&id=<%#Eval("id") %>" onclick="return confirm('不可恢复性删除数据,你确定将该数据删除吗？');"class="option_style"><i class="fa fa-trash-o" title="删除"></i>删除</a></td>
        </tr>
      </ItemTemplate>
        <FooterTemplate></FooterTemplate>
    </ZL:ExRepeater>
  </table>
</asp:Content>

<asp:Content runat="server" ContentPlaceHolderID="ScriptContent">
    <script type="text/javascript" src="/JS/DatePicker/WdatePicker.js"></script>
</asp:Content>
