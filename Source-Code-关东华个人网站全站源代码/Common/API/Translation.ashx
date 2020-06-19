<%@ WebHandler Language="C#" Class="Translation" %>

using System;
using System.Web;
using System.Net;
using System.Xml;

public class Translation : IHttpHandler
{

    public void ProcessRequest(HttpContext context)
    {
        string action = context.Request.Form["action"];
        string result = "";
        switch (action)
        {
            case "bdtrans"://百度翻译
                WebClient web = new WebClient();
                result = web.DownloadString("http://openapi.baidu.com/public/2.0/bmt/translate?client_id="+GetBaiduKey(context)+"&q=" + context.Server.UrlEncode(context.Request.Form["text"]) + "&from=" + context.Request.Form["from"] + "&to=" + context.Request.Form["to"]);
                break;
            default:
                break;
        }
        context.Response.Write(result); context.Response.Flush(); context.Response.End();
    }
    public string GetBaiduKey(HttpContext context)
    {
        XmlDocument Xml = new XmlDocument();
        Xml.Load(context.Server.MapPath("/config/Suppliers.xml"));
        XmlNode keynode = Xml.SelectSingleNode("SuppliersList/BaiduTrans");
        return keynode.Attributes["Key"].Value;
    }

    public bool IsReusable
    {
        get
        {
            return false;
        }
    }

}