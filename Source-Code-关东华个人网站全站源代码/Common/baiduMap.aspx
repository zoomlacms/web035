<%@ page language="C#" autoeventwireup="true" inherits="User_UserShop_baiduMap, App_Web_22fw3pbb" masterpagefile="~/Common/Master/Empty.master" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<asp:Content runat="server" ContentPlaceHolderID="head">
    <title>地图定位</title>
    <style type="text/css">
        body, html {width: 100%;height: 100%;margin: 0;font-family: "微软雅黑";}
        #allmap { height: 500px;width: 100%;position: relative;z-index: 1;}
    </style>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="Content">

    <div id="allmap"></div><div id="r-result">
     <input type="hidden" id="lat"><input type="hidden" id="lng">
 </div>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="Script">
  <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=WRiR4XARbMRjm3NrQuP88w6P"></script>
  <script type="text/javascript" src="http://api.map.baidu.com/library/CityList/1.4/src/CityList_min.js"></script>
    <script type="text/javascript">
        //以下是地图相关代码
        var mp = new BMap.Map("allmap");
        var point = new BMap.Point(<%:Point%>);
        var marker = new BMap.Marker(point);
        mp.addOverlay(marker);
        mp.centerAndZoom(point, 14);
        mp.enableScrollWheelZoom();
        mp.enableInertialDragging();
        mp.enableContinuousZoom();
        // 显示城市
        var size = new BMap.Size(10, 20);
        mp.addControl(new BMap.CityListControl({
            anchor: BMAP_ANCHOR_TOP_LEFT,
            offset: size,
        }));
        //点击添加标注事件
        mp.addEventListener("click", showInfo);
        function showInfo(e) {
            mp.clearOverlays();
            var marker = new BMap.Marker(new BMap.Point(e.point.lng, e.point.lat));
            mp.addOverlay(marker);
            var pointStr = e.point.lng + "," + e.point.lat;
            $(parent.document).find("#txt_<%:Field%>").val(pointStr);
            parent.CloseComDiag();
           // window.parent.document.getElementById("#txt_<%:Field%>").innerText(pointStr);
        }
    </script>
</asp:Content>