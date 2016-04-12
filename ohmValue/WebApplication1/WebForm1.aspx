<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css" />
    <link href="/css/bootstrap.css" rel="stylesheet" />
</head>
<body >
    <form id="form1" runat="server" style="padding:5px;">
   <div class="container" style="border:double;background-color:aliceblue;padding-top:5px; height:600px;">
       <div class="row padding" style="text-align:center;font-size:medium;font-weight:bold">
           calculate 4 band resistor value
       </div>
    <div class="row padding">     
      <asp:Label ID="lblBandColor1" Text ="Band Color1:" runat="server" class="col-sm-2 control-label"></asp:Label>
        <div class="col-sm-5">
             <asp:DropDownList id="ddlBandColor1" runat="server" OnSelectedIndexChanged="ddlBandColor1_SelectedIndexChanged" class="form-control" AutoPostBack="true">
                <asp:ListItem>black</asp:ListItem>
               <asp:ListItem>brown</asp:ListItem>
               <asp:ListItem>red</asp:ListItem>
               <asp:ListItem>orange</asp:ListItem>
               <asp:ListItem>yellow</asp:ListItem>
               <asp:ListItem>green</asp:ListItem>
               <asp:ListItem>blue</asp:ListItem>
               <asp:ListItem>violet</asp:ListItem>
               <asp:ListItem>grey</asp:ListItem>
               <asp:ListItem>white</asp:ListItem>
              
           </asp:DropDownList>                
        </div>     
        <asp:Label ID="lblColorLabel1" runat="server" BackColor="Black"  Text="color" class="col-sm-1 control-label" ></asp:Label>
    </div>
    <div class="row padding">
       <asp:Label ID="lblBandColor2" Text ="Band Color2:" runat="server" class="col-sm-2 control-label" ></asp:Label>
     <div class="col-sm-5">
      <asp:DropDownList id="ddlBandColor2" runat="server" OnSelectedIndexChanged="ddlBandColor2_SelectedIndexChanged" class="form-control" AutoPostBack="true">
               <asp:ListItem>black</asp:ListItem>
               <asp:ListItem>brown</asp:ListItem>
               <asp:ListItem>red</asp:ListItem>
               <asp:ListItem>orange</asp:ListItem>
               <asp:ListItem>yellow</asp:ListItem>
               <asp:ListItem>green</asp:ListItem>
               <asp:ListItem>blue</asp:ListItem>
               <asp:ListItem>violet</asp:ListItem>
               <asp:ListItem>grey</asp:ListItem>
               <asp:ListItem>white</asp:ListItem>
               </asp:DropDownList>
         </div>
          <asp:Label ID="lblColorLabel2" runat="server" BackColor="Black" class="col-sm-1 control-label" Text="color"  ></asp:Label>
    </div>
    <div class="row padding">
      <asp:Label ID="lblBandColor3" Text ="Band Color3:" runat="server" CssClass="col-sm-2 control-label"></asp:Label>
        <div class="col-sm-5">
           <asp:DropDownList id="ddlBandColor3" runat="server" OnSelectedIndexChanged="ddlBandColor3_SelectedIndexChanged" AutoPostBack="true" CssClass="form-control">
               <asp:ListItem>black</asp:ListItem>
               <asp:ListItem>brown</asp:ListItem>
               <asp:ListItem>red</asp:ListItem>
               <asp:ListItem>orange</asp:ListItem>
               <asp:ListItem>yellow</asp:ListItem>
               <asp:ListItem>green</asp:ListItem>
               <asp:ListItem>blue</asp:ListItem>
               <asp:ListItem>violet</asp:ListItem>
               <asp:ListItem>grey</asp:ListItem>
               <asp:ListItem>white</asp:ListItem>
               <asp:ListItem>gold</asp:ListItem>
               <asp:ListItem>silver</asp:ListItem>
               </asp:DropDownList>
            </div>
           <asp:Label ID="lblColorLabel3" runat="server" BackColor="Black"   Text="color" class="col-sm-1 control-label"></asp:Label>
    </div>
            <div class="row padding">
                <asp:Label ID="lblBandColor4" Text="Band Color4:" runat="server" class="col-sm-2 control-label"></asp:Label>
                 <div class="col-sm-5">
                  <asp:DropDownList ID="ddlBandColor4" runat="server" OnSelectedIndexChanged="ddlBandColor4_SelectedIndexChanged" AutoPostBack="true" CssClass="form-control">
                    <asp:ListItem>red</asp:ListItem>
                    <asp:ListItem>orange</asp:ListItem>
                    <asp:ListItem>yellow</asp:ListItem>
                    <asp:ListItem>green</asp:ListItem>
                    <asp:ListItem>blue</asp:ListItem>
                    <asp:ListItem>violet</asp:ListItem>
                    <asp:ListItem>grey</asp:ListItem>
                    <asp:ListItem>gold</asp:ListItem>
                    <asp:ListItem>silver</asp:ListItem>
                </asp:DropDownList>
                </div>
                <asp:Label ID="lblColorLabel4" runat="server" BackColor="red"  Text="color" class="col-sm-1 control-label"></asp:Label>
            </div>
        <div class="row padding">
         <asp:Label id="lblResistorValue" runat="server" Text="ResistorValue:" CssClass="col-sm-2 control-label"></asp:Label>
         <div class="col-sm-3">
         <asp:TextBox ID="txtResistorValue" runat="server" CssClass="form-control"></asp:TextBox> -
         <asp:TextBox ID="txtResistorValueplus" runat="server" CssClass="form-control"></asp:TextBox> 
        </div>
        <asp:Label ID="lblInfo" runat="server"  Text="color" class="label-info">Value displayed in ohm</asp:Label>
     </div>
       </div>
  
    <%--<div style="width:100%px;height:200px;text-align:center;">
        <div id="divMain" class="row"><b>Calculate 4 Band Resistor Value</b>
        </div>
       <div id="divResistorValueCalculator" class="row padding">
           <div>
           <asp:Label ID="lblBandColor1" Text ="Band Color1:" runat="server" "col-sm-2 control-label"></asp:Label>
           <asp:DropDownList id="ddlBandColor1" runat="server" OnSelectedIndexChanged="ddlBandColor1_SelectedIndexChanged" AutoPostBack="true">
                <asp:ListItem>black</asp:ListItem>
               <asp:ListItem>brown</asp:ListItem>
               <asp:ListItem>red</asp:ListItem>
               <asp:ListItem>orange</asp:ListItem>
               <asp:ListItem>yellow</asp:ListItem>
               <asp:ListItem>green</asp:ListItem>
               <asp:ListItem>blue</asp:ListItem>
               <asp:ListItem>violet</asp:ListItem>
               <asp:ListItem>grey</asp:ListItem>
               <asp:ListItem>white</asp:ListItem>
              
           </asp:DropDownList>
           <asp:Label ID="lblColorLabel1" runat="server" BackColor="Black"  style="Width:20px;" Text="color" ></asp:Label>
          </div>
           <div style="height:30px;">
           <asp:Label ID="lblBandColor2" Text ="Band Color2:" runat="server" ></asp:Label>
           <asp:DropDownList id="ddlBandColor2" runat="server" OnSelectedIndexChanged="ddlBandColor2_SelectedIndexChanged" AutoPostBack="true">
               <asp:ListItem>black</asp:ListItem>
               <asp:ListItem>brown</asp:ListItem>
               <asp:ListItem>red</asp:ListItem>
               <asp:ListItem>orange</asp:ListItem>
               <asp:ListItem>yellow</asp:ListItem>
               <asp:ListItem>green</asp:ListItem>
               <asp:ListItem>blue</asp:ListItem>
               <asp:ListItem>violet</asp:ListItem>
               <asp:ListItem>grey</asp:ListItem>
               <asp:ListItem>white</asp:ListItem>
               </asp:DropDownList>
           <asp:Label ID="lblColorLabel2" runat="server" BackColor="Black" style="Width:20px;" Text="color"  ></asp:Label>
          </div>
           <div style="height:30px;">
           <asp:Label ID="lblBandColor3" Text ="Band Color3:" runat="server"></asp:Label>
           <asp:DropDownList id="ddlBandColor3" runat="server" OnSelectedIndexChanged="ddlBandColor3_SelectedIndexChanged" AutoPostBack="true">
               <asp:ListItem>black</asp:ListItem>
               <asp:ListItem>brown</asp:ListItem>
               <asp:ListItem>red</asp:ListItem>
               <asp:ListItem>orange</asp:ListItem>
               <asp:ListItem>yellow</asp:ListItem>
               <asp:ListItem>green</asp:ListItem>
               <asp:ListItem>blue</asp:ListItem>
               <asp:ListItem>violet</asp:ListItem>
               <asp:ListItem>grey</asp:ListItem>
               <asp:ListItem>white</asp:ListItem>
               <asp:ListItem>gold</asp:ListItem>
               <asp:ListItem>silver</asp:ListItem>
               </asp:DropDownList>
           <asp:Label ID="lblColorLabel3" runat="server" BackColor="Black"  style="Width:20px;" Text="color" ></asp:Label>
          </div>
           <div style="height:30px;">
           <asp:Label ID="lblBandColor4" Text ="Band Color4:" runat="server"></asp:Label>
           <asp:DropDownList id="ddlBandColor4" runat="server" OnSelectedIndexChanged="ddlBandColor4_SelectedIndexChanged" AutoPostBack="true">                           
               <asp:ListItem>red</asp:ListItem>
               <asp:ListItem>orange</asp:ListItem>
               <asp:ListItem>yellow</asp:ListItem>
               <asp:ListItem>green</asp:ListItem>
               <asp:ListItem>blue</asp:ListItem>
               <asp:ListItem>violet</asp:ListItem>
               <asp:ListItem>grey</asp:ListItem>              
               <asp:ListItem>gold</asp:ListItem>
               <asp:ListItem>silver</asp:ListItem>
           </asp:DropDownList>
           <asp:Label ID="lblColorLabel4" runat="server" BackColor="red"  style="Width:20px;" Text="color" ></asp:Label>
          </div>
       </div>
    </div>
     <div id="divResistorValue" style="background-color:aliceblue;width:100%;height:200px;text-align:center;">
         <asp:Label id="lblResistorValue" runat="server" Text="ResistorValue:" CssClass=""></asp:Label>
         <asp:TextBox ID="txtResistorValue" runat="server" CssClass="form-control"></asp:TextBox> ohm to
         <asp:TextBox ID="txtResistorValueplus" runat="server" CssClass="form-control"></asp:TextBox> ohm
     </div>--%>
    </form>
</body>
</html>
