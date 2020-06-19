<%@ page language="C#" autoeventwireup="true" inherits="Install_Default, App_Web_vusajt3i" responseencoding="utf-8" clientidmode="Static" enableEventValidation="false" viewStateEncryptionMode="Never" %><!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8" />
<title>安装Zoomla!逐浪CMS-开发自由免费的WEB开发者世界~</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="renderer" content="webkit" />
<link href="/dist/css/bootstrap.min.css" rel="stylesheet"/>
<link href="/dist/css/bootstrap-switch.min.css" rel="stylesheet" />
<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
	<script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
<![endif]-->
<link href="/dist/css/font-awesome.min.css" rel="stylesheet"/>
<link href="/dist/css/animate.min.css" rel="stylesheet"/>
<link href="/dist/css/animate.min.css" rel="stylesheet"/>
<link type="text/css" rel="stylesheet" href="/App_Themes/User.css" />
<script src="/JS/jquery-1.11.1.min.js" ></script>
<script src="/dist/js/bootstrap.min.js"></script>
<script src="/dist/js/bootstrap-switch.js"></script>
<style>
.instbox{background-color:#999;background-position: center;left:0;top:0;right:0;bottom:0; position: absolute; background-repeat:no-repeat;background-size:cover;}
.instbox .instcon{ margin:auto; margin-top:10vh; width:90%; height:680px; background:rgba(0,118,222,0.8);  border-radius:20px; text-align:center;padding-left:10px;padding-right:10px;}
.instbox .instcon h1{ padding-top:2em;color:#fff; font-family: "STHeiti","Microsoft YaHei UI light","Microsoft YaHei","宋体","arial";font-size:1.8em; text-align:center;}
.instside{ margin-top:1em;}/*下方五小点*/ 
/*.instside .carousel-indicators{ bottom:auto;}*/
/*.instside .carousel-indicators li {width:20px; height:20px;background-color: #09f;border:#09f;}
.instside .carousel-indicators .active{width:20px; height:20px;background-color: #ccc;border:#ccc;}*/
#carousel_step{ margin:0 auto;width:500px;}
#carousel_step li {float:left;margin-left:10px;color:#fff;width:70px;text-align:center;}
#carousel_step .step_circle {background-color:#09f;border:1px solid #008aff;border-radius:50%;width:40px;height:40px;margin:0 auto;}
#carousel_step .step_circle.active {background-color:#ccc;border:1px solid #ddd;}
/*licence*/
.lic_btn {margin: auto; border-radius: 15px; line-height: 28px; height: 30px; border: 0px solid #333; background-color: #fff; background-size: 15px 15px; background-repeat: no-REPEAT; background-position: 5px center; color: #333; font-size: 14PX; width: 280px;cursor:pointer; }
.lic_content {position: absolute;z-index: 1; top: 0; left: 0; color: #fff; background-color: #369;  padding: 12px; opacity: 1;}
.lic_head{margin-top: 5em; border-radius: 15px; height: 28px; width: 100%; background-color: #BBB; color: #282828; text-align: center;}               
/*steps*/
.modal {top:-100px;}
.bottom_btns {text-align:center;margin-top:50px;}
.content_body {margin-top:50px;}
.div300 {display:inline-block;width:300px;max-width:300px;}
.control-label {color:#fff;font-size:12px;line-height:34px;min-width:80px;display:inline-block;}
.insbox_txt {color:#fff;}
.small_txt {font-size:12px;color:#fff;margin-left:5px;}
.check_item_div {margin-bottom:3px;}
.check_item_div .glyphicon-ok {color:#A5E360;margin-right:10px;}
.check_item_div .glyphicon-remove {color:red;margin-right:10px;}
</style>
</head><body>
    <form id="form1" runat="server">
<div id="instbox" class="instbox">
<div class="user_mimenu user_home_mimenu hidden-xs">
    <div class="navbar navbar-fixed-top" role="navigation">
        <button type="button" class="btn btn-default" id="mimenu_btn">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <div class="user_mimenu_left">
            <ul class="list-unstyled">
                <li><a href="/user/" target="_blank">会员中心</a></li>
                <li><a href="/Home" target="_blank">能力中心</a></li>
                <li><a href="/Index" target="_blank">社区论坛</a></li>
                <li><a href="/Ask" target="_blank">问答互动</a></li>
                <li><a href="/Guest" target="_blank">留言反馈</a></li>
                <li><a href="/Baike" target="_blank">百科中心</a></li>
                <li><a href="/Office" target="_blank">OA办公</a></li>
                <li><a href="/Admin/Default.aspx" target="_blank">后台管理</a></li>
            </ul>
        </div>
        <div class="navbar-header">
            <button class="navbar-toggle in" type="button" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">移动下拉</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
        </div>
    </div>
</div>
<asp:Wizard runat="server" ID="Install_Wzd" ActiveStepIndex="0" DisplaySideBar="False" Width="100%" DisplayCancelButton="false">
<WizardSteps>
<asp:WizardStep runat="server" id="WizardStep1" StepType="Start" >
<div class="container-fulid instcon">
    <h1>第一步：确认许可协议</h1>
    <div class="insbox_txt" style="margin-top:120px;"><%=Resources.L.欢迎安装 %>Zoomla!<%=Resources.L.逐浪 %>CMS,<%=Resources.L.本向导将引导您部署本系统 %>- <%=Resources.L.建议您在运行本向导前仔细阅读相关 %></div>
    <div class="content_body">
        <div class="lic_btn" onclick="showlic();">点击显示Zoomla!逐浪CMS许可协议</div>
        <div class="lic_content" id="lic_content" style="display:none;" ondblclick="hidelic();">
            <div class="lic_head" onclick="hidelic();">点击此处或双击隐藏 </div>
            <div class="text-left">
                <asp:Literal runat="server" ID="Licence_Lit"></asp:Literal>
            </div>
        </div>
    </div>
    <div class="insbox_txt bottom_btns">
        <label><input type="checkbox" id="hasRead_chk" onclick="sureLicense();"/><%=Resources.L.我已阅读并同意协议 %></label>
        <asp:Button ID="Stpe1_Next_Btn"  runat="server" disabled="disabled" CssClass="btn btn-primary" CommandName="MoveNext" Text="<%$Resources:L,下一步 %>" OnClick="Stpe1_Next_Btn_Click" />
    </div>
</div>
</asp:WizardStep>
<asp:WizardStep runat="server" ID="WizardStep2" Title="">
<div class="container-fulid instcon">
    <h1>第二步：<%=Resources.L.运行环境检测 %></h1>
    <table class="container content_body" style="max-width: 900px;">
        <tr>
            <td style="text-align:left;">
                <asp:Label runat="server" ID="Check_Basic_L" EnableViewState="false" CssClass="insbox_txt"></asp:Label></td>
            <td style="text-align:left;">
                <asp:Label runat="server" ID="Check_File_L" EnableViewState="false" CssClass="insbox_txt"></asp:Label></td>
            <td style="text-align:left;">
                <asp:Label runat="server" ID="Check_File2_L" EnableViewState="false" CssClass="insbox_txt"></asp:Label></td>
        </tr>
    </table>
    <div class="bottom_btns">
        <asp:Button ID="Step2_Pre_Btn" runat="server" OnClick="Step2_Pre_Btn_Click" Text="<%$Resources:L,上一步 %>"  CssClass="btn btn-primary" UseSubmitBehavior="false" CausesValidation="false"/>
        <asp:Button ID="Step2_Next_Btn" runat="server" CommandName="MoveNext"  Text="<%$Resources:L,下一步 %>" CssClass="btn btn-primary" OnClick="Step2_Next_Btn_Click" />
    </div>
</div>
</asp:WizardStep>
<asp:WizardStep runat="server" ID="WizardStep3" Title="">
<div class="container-fulid instcon">
    <h1>第三步：<%=Resources.L.配置数据库连接 %></h1>
    <div class="container content_body text-left" style="max-width: 700px;">
        <div class="form-group">
            <span class="control-label"><%=Resources.L.数据库版本 %></span>
            <asp:DropDownList ID="SqlVersion_DP" onchange="sqlselect()" runat="server" class="form-control text_300">
                <asp:ListItem Selected="True" Value="MSSql" Text="<%$Resources:L,SqlServer2005及更高版本 %>"></asp:ListItem>
                <asp:ListItem Value="Local" Text="<%$Resources:L,本地数据库 %>"></asp:ListItem>
                <asp:ListItem Value="Oracle">Oracle</asp:ListItem>
            </asp:DropDownList>
            <span class="margin_l20">
                <a href="https://www.zoomla.cn/Item/2977.aspx" target="_blank" class="btn btn-info"><i class="glyphicon glyphicon-question-sign"></i><%=Resources.L.未安装数据库 %></a>
            </span>
        </div>
        <div class="form-group">
            <span class="control-label"><%=Resources.L.数据源地址 %></span>
            <asp:TextBox ID="TxtDataSource" runat="server" class="form-control text_300" data-enter="0" Text="(local)" autofocus="autofocus"/>
            <span class="control-label margin_l20">
                <asp:RequiredFieldValidator ID="ValrDataSource" runat="server" Display="Dynamic" ForeColor="Red" ControlToValidate="TxtDataSource" ErrorMessage="数据源不能为空!" />
                <%=Resources.L.如local或远程主机名 %>
            </span>
        </div>
        <div class="form-group">
            <span class="control-label"><%=Resources.L.数据库名称 %></span>
            <asp:TextBox ID="TxtDataBase" runat="server" Text="ZoomLaCMS" data-enter="1" class="form-control text_300"/>
            <span class="control-label margin_l20">
                <asp:RequiredFieldValidator ID="ValrDataBase" runat="server" ForeColor="Red" ControlToValidate="TxtDataBase" ErrorMessage="数据库名称不能为空!" />
            </span>
        </div>
        <div class="form-group">
            <span class="control-label"><%=Resources.L.数据库用户 %></span>
            <asp:TextBox ID="TxtUserID" runat="server" data-enter="2" class="form-control text_300" Text="ZoomLaCMS"/>
            <span class="control-label margin_l20">
                <asp:RequiredFieldValidator ID="ValrUserID" runat="server" ForeColor="Red" ControlToValidate="TxtUserID" ErrorMessage="用户名不能为空!" Display="Dynamic"/>
                <%=Resources.L.有权限访问该数据库的用户名 %>!
            </span>
        </div>
        <div class="form-group">
            <span class="control-label"><%=Resources.L.数据库口令 %></span>
            <asp:TextBox ID="TxtPassword" runat="server" TextMode="Password" data-enter="3" CssClass="form-control text_300"/>
            <asp:HiddenField runat="server" ID="TxtPassword_Hid" />
            <span class="control-label margin_l20">
                <asp:RequiredFieldValidator ID="ValrPassword" runat="server" ForeColor="Red" ControlToValidate="TxtPassWord" ErrorMessage="用户口令不能为空"/>
            </span>
        </div>
        <div class="form-group">
            <span class="control-label"></span>
            <span class="control-label" style="min-width:300px;">
                <label><input type="checkbox" runat="server" id="ignoreSql_chk" />如已手工预执行过脚本勾选(可忽略)</label>
            </span>
            <span class="control-label margin_l20"></span>
        </div>
        <div class="form-group">
            <span class="control-label"></span>
            <div class="div300" style="margin-top:15px;">
                <asp:Button ID="Step3_Pre_Btn" runat="server" OnClick="Step3_Pre_Btn_Click" Text="<%$Resources:L,上一步 %>" CssClass="btn btn-primary" UseSubmitBehavior="false" CausesValidation="false" />
                <asp:Button ID="Step3_Next_Btn" runat="server" data-enter="4" Text="<%$Resources:L,下一步 %>" CssClass="btn btn-primary" OnClick="Step3_Next_Btn_Click" />
            </div>
        </div>
    </div>
</div>
</asp:WizardStep>
<asp:WizardStep runat="server" ID="WizardStep4" Title="">
<div class="container-fulid instcon">
    <h1>第四步：<%=Resources.L.配置网站信息 %><small class="small_txt"><%=Resources.L.也可安装完成进入后台配置更新此信息 %></small></h1>
    <div class="container text-left" style="max-width: 700px;">
        <div class="form-group">
            <span class="control-label"><%=Resources.L.网站名称 %></span>
            <asp:TextBox ID="TxtSiteName" runat="server" Text="逐浪CMS" data-enter="0" class="form-control text_300"/>
            <span class="control-label margin_l20">
                <asp:RequiredFieldValidator runat="server" ID="RS1" ForeColor="Red" ControlToValidate="TxtSiteName" ErrorMessage="网站名称不能为空!" />
            </span>
        </div>
        <div class="form-group">
            <span class="control-label"><%=Resources.L.网站标题 %></span>
            <asp:TextBox ID="TxtSiteTitle" runat="server" Text="逐浪CMS" data-enter="1" class="form-control text_300"/>
            <span class="control-label margin_l20">
                <asp:RequiredFieldValidator runat="server" ID="RS2" ForeColor="Red" ControlToValidate="TxtSiteTitle" ErrorMessage="网站标题不能为空!"/>
            </span>
        </div>
        <div class="form-group">
            <span class="control-label"><%=Resources.L.网站地址 %></span>
            <asp:TextBox ID="TxtSiteUrl" runat="server" data-enter="2" class="form-control text_300"/>
            <span class="control-label margin_l20">
                <asp:RequiredFieldValidator runat="server" ID="RS3" ForeColor="Red" ControlToValidate="TxtSiteUrl" ErrorMessage="网站地址不能为空!"/>
            </span>
        </div>
        <div class="form-group">
            <span class="control-label">E-mail</span>
            <asp:TextBox ID="TxtEmail" runat="server" data-enter="3" class="form-control text_300" Text="web@zoomla.cn"/>
            <span class="control-label margin_l20">
                <asp:RequiredFieldValidator ID="RS4" runat="server" ForeColor="Red" ControlToValidate="TxtEmail" ErrorMessage="<%$Resources:L,Email不能为空 %>" Display="Dynamic" />
                <asp:RegularExpressionValidator ID="RS5" runat="server" ForeColor="Red" ErrorMessage="Email格式不正确" ControlToValidate="TxtEmail" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" />
            </span>
        </div>
        <div class="form-group">
            <span class="control-label"><%=Resources.L.管理员名称 %></span>
            <asp:TextBox CssClass="form-control text_300" ID="TxtAdminName" runat="server" Enabled="False">admin</asp:TextBox>
            <span class="control-label margin_l20"></span>
        </div>
        <div class="form-group">
            <span class="control-label"><%=Resources.L.管理员密码 %></span>
            <asp:TextBox ID="TxtAdminPassword" runat="server" TextMode="Password" data-enter="4" class="form-control text_300" autofocus="autofocus"/>
            <span class="control-label margin_l20">
                <asp:RegularExpressionValidator runat="server" ID="RS6" ForeColor="Red" ControlToValidate="TxtAdminPassword"  ValidationExpression="^[a-zA-Z0-9_\u4e00-\u9fa5\@\.]{6,40}$" Display="Dynamic" ErrorMessage="密码少于六位" />
                <asp:RequiredFieldValidator runat="server" ID="ValrAdminPassword" ForeColor="Red" ControlToValidate="TxtAdminPassword" Display="Dynamic" ErrorMessage="密码不能为空"/>
                <%=Resources.L.不少于6位字母数字组合 %>
            </span>
        </div>
        <div class="form-group">
            <span class="control-label"><%=Resources.L.确认密码 %></span>
            <asp:TextBox ID="TxtAdminPasswordAgain" runat="server" data-enter="5" TextMode="Password" class="form-control text_300"/>
            <span class="control-label margin_l20">
                <asp:RequiredFieldValidator runat="server" ID="RS7" ForeColor="Red" ErrorMessage="确认密码不能为空" ControlToValidate="TxtAdminPasswordAgain" Display="Dynamic"/>
                <asp:CompareValidator runat="server" ID="RS8" ForeColor="Red" ErrorMessage="两次密码不相同" ControlToCompare="TxtAdminPassword" ControlToValidate="TxtAdminPasswordAgain" />
            </span>
        </div>
        <div class="form-group">
            <span class="control-label"><%=Resources.L.后台路径 %></span>
            <asp:TextBox ID="TxtCustomPath" runat="server" data-enter="6" class="form-control text_300" Text="Admin" MaxLength="10" onkeyup="value=value.replace(/[^\w]/ig,'');check(this);" Title="请输入最少三位,最多十位,可英文与数字组合" />
            <span class="control-label margin_l20">
                <span id="Remind1">*<%=Resources.L.安装完成后可在后台进行配置 %></span>
                <asp:RequiredFieldValidator runat="server" ID="RS9"  ForeColor="Red" ControlToValidate="TxtCustomPath" Display="None" ErrorMessage="后台路径不能为空,最小三位!" />
                <asp:RegularExpressionValidator runat="server" ID="RS10" ForeColor="Red" ControlToValidate="TxtCustomPath" ValidationExpression="^[a-zA-Z0-9_\u4e00-\u9fa5\@\.]{3,10}$" Display="Dynamic" ErrorMessage="后台路径不能少于三位" />
            </span>
        </div>
        <div class="form-group">
            <span class="control-label"><%=Resources.L.管理认证码 %></span>
            <asp:TextBox ID="TxtSiteManageCode" runat="server" Text="8888" data-enter="7" class="form-control text_300" onkeyup="check2(this)" />
            <span class="control-label margin_l20">
                <span id="Remind2">*<%=Resources.L.初始为不开通管理认证码功能 %></span>
                <asp:RequiredFieldValidator ID="ValrSiteManageCode" runat="server" ControlToValidate="TxtSiteManageCode" Display="None" ErrorMessage="后台管理认证码不能为空!" />
            </span>
        </div>
        <div class="form-group">
            <span class="control-label"></span>
            <div class="div300">
                <asp:Button ID="Step4_Pre_Btn" runat="server" OnClick="Step4_Pre_Btn_Click" Text="<%$Resources:L,上一步 %>" CssClass="btn btn-primary" UseSubmitBehavior="false" CausesValidation="false" />
                <asp:Button ID="Step4_Next_Btn" data-enter="8" runat="server" Text="<%$Resources:L,下一步 %>" CssClass="btn btn-primary" OnClick="Step4_Next_Btn_Click" />
            </div>
        </div>
</div>
</div>
</asp:WizardStep>
<asp:WizardStep runat="server" ID="WizardStep5">
<div class="container-fulid instcon">
    <h1>第四步：<%=Resources.L.完成安装 %></h1>
    <div class="container content_body" style="padding-left:60px;">
        <div class="control-label">
            <div class="text-left" style="display:inline-block;">
                <%=Resources.L.已经成功安装 %><br />
                <%=Resources.L.请点击 %><strong><%=Resources.L.完成安装 %></strong>”<%=Resources.L.按钮跳转到首页 %>
            </div>
            <span class="glyphicon glyphicon-ok-sign" style="font-size:7em;color:#fff;"></span><br />
            <div class="text-left" style="margin-top:30px;">
                <asp:Button runat="server" ID="ReConfig_Btn" OnClick="ReConfig_Btn_Click" Text="重新配置" UseSubmitBehavior="false" CssClass="btn btn-primary" CausesValidation="false" />
                <a href="/Default.aspx" class="btn btn-primary">完成安装</a>
            </div>
        </div>
    </div>
</div>
</asp:WizardStep>
</WizardSteps>
<StepNavigationTemplate></StepNavigationTemplate>
<StartNavigationTemplate></StartNavigationTemplate>
<FinishNavigationTemplate></FinishNavigationTemplate>
</asp:Wizard>
<!--蓝色框结束-->
<div class="container instside">
    <ul id="carousel_step" class="list-unstyled">
        <li data-slide-to="1"><div class="step_circle"></div><div>安装协议</div></li>
        <li data-slide-to="2"><div class="step_circle"></div><div>数据连接</div></li>
        <li data-slide-to="3"><div class="step_circle"></div><div>环境检测</div></li>
        <li data-slide-to="4"><div class="step_circle"></div><div>配置信息</div></li>
        <li data-slide-to="5"><div class="step_circle"></div><div>完成安装</div></li>
    </ul>
</div> 
</div>
<div style="display:none;">
<asp:Button runat="server" ID="InstallDB_Btn" OnClick="InstallDB_Btn_Click" />
<asp:HiddenField runat="server" ID="CurStep_Hid" Value="1" />
<img id="bkpic_img" onerror="updateDefImg();"  style="display:none;"/>
</div>
<script src="/JS/ICMS/ZL_Common.js"></script>
<script src="/JS/Controls/ZL_Dialog.js"></script>
<script src="/JS/Controls/Control.js"></script>
<script>
    $("#mimenu_btn").click(function (e) {
        if ($(".user_mimenu_left").width() > 0) {
            $(".user_mimenu_left ul").fadeOut(100);
            $(".user_mimenu_left").animate({ width: 0 }, 200);
        }
        else {
            $(".user_mimenu_left").animate({ width: 150 }, 300);
            $(".user_mimenu_left ul").fadeIn();
        }
    });
    //会员菜单更多显示/隐藏
    $("#more_btn").click(function (e) {
        if ($(".user_menu_sub").css("display") == "none") {
            $(".user_menu_sub").slideDown();
            $(this).find("i").removeClass("fa-angle-double-down");
            $(this).find("i").addClass("fa-angle-double-up");
        }
        else {
            $(".user_menu_sub").slideUp(200);
            $(this).find("i").removeClass("fa-angle-double-up");
            $(this).find("i").addClass("fa-angle-double-down");
        }
    });
</script>
<script>
    $(function () {
        updateStepFlag();
        Control.EnableEnter();
    })
    //-----step1
    //function showLicense() {
    //    comdiag.title = "许可协议";
    //    comdiag.url = "/Install/Licence.html";
    //    comdiag.height = 500;
    //    comdiag.maxbtn = false;
    //    comdiag.backdrop = false;
    //    comdiag.ShowModal();
    //}
    function sureLicense() {
        var chk = document.getElementById("hasRead_chk");
        if (chk.checked) { $("#Stpe1_Next_Btn").removeAttr('disabled'); }
        else { $("#Stpe1_Next_Btn").attr("disabled", "disabled"); }
    }
    function showlic() {
        var lic = document.getElementById("lic_content");
        lic.style.display = '';
        lic.focus();
    }
    function hidelic() { var lic = document.getElementById("lic_content"); lic.style.display = "none"; }
    //-----step2
    function installDB() {
        var waitDiag = new ZL_Dialog();
        waitDiag.closebtn = false;
        waitDiag.ShowMask("正在执行SQL脚本,请等待");
        $("#InstallDB_Btn").click();
    }
    //-----step3
    function sqlselect() {
        var sel = $("#SqlVersion_DP").val().toLowerCase();
        switch (sel) {
            case "oracle":
                alert('抱歉，该版本仅对商业用户开放，请选择其它版本或联系逐浪软件取得授权。');
                window.open('http://www.zoomla.cn/corp/about/83.shtml', '', '');
                break;
            case "local":
                $("#TxtDataSource").val("(localdb)\\v11.0");
                $("#TxtDataBase").val("localdb");
                $("#TxtUserID").val("localdb");
                $("#TxtPassword").val("localdb");
                break;
            default:
                $("#TxtDataSource").val("(local)");
                $("#TxtDataBase").val("ZoomlaCMS");
                $("#TxtUserID").val("ZoomlaCMS");
                $("#TxtPassword").val("");
                break;
        }
    }
    //-----step4
    function check(obj) {
        if (obj.value.length > 9 || obj.value.length < 4) {
            Remind1.style.color = "red";
            Remind1.innerText = "最少三位,最多不能超过十位,英文或数字";
        }
        else {
            Remind1.style.color = "#BFDFFF"
            Remind1.innerText = "*安装完成后可在后台进行配置";
        }
    }
    function check2(obj) {
        if (obj.value.length < 1) {
            Remind2.style.color = "red";
            Remind2.innerText = "后台管理认证码不能为空";
        }
        else {
            Remind2.style.color = "#BFDFFF"
            Remind2.innerText = "*初始为不开通管理认证码功能";
        }
    }
    //-----common
    function updateStepFlag() {
        var step = ConverToInt($("#CurStep_Hid").val(), 1);
        $("#carousel_step li[data-slide-to=" + step + "]").find(".step_circle").addClass("active");
        //更换背景图
        var imgurl = "https://code.zoomla.cn/img/2016instbg_0" + step + ".jpg";
        $("#instbox").css("background-image", "url(" + imgurl + ")")
        $("#bkpic_img").attr("src", imgurl);
    }
    function updateDefImg() {
        var defurl = "/UploadFiles/demo/ad2.jpg";
        $("#instbox").css("background-image", "url(" + defurl + ")");
    }
    function showAlert(str) { alert(decodeURI(str)); }
</script>
</form>
</body>
</html>
