<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Master/Main.Master" CodeBehind="error.aspx.vb" Inherits="Presentacion.Formulario_web13" %>

<%@ Register Assembly="DevExpress.Web.Bootstrap.v17.2, Version=17.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.Bootstrap" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
 <style>
    html{
  }
  body{
      margin: 0;
      padding: 0;
      background: #e7ecf0;
      font-family: Arial, Helvetica, sans-serif;
  }
  *{
      margin: 0;
      padding: 0;
  }
  p{
      font-size: 12px;
      color: #373737;
      font-family: Arial, Helvetica, sans-serif;
      line-height: 18px;
  }
  p a{
      color: #218bdc;
      font-size: 12px;
      text-decoration: none;
  }
  a{
      outline: none;
  }
  .f-left{
      float:left;
  }
  .f-right{
      float:right;
  }
  .clear{
      clear: both;
      overflow: hidden;
  }
  #block_error{
      width: 845px;
      height: 384px;
      border: 1px solid #cccccc;
      margin: 72px auto 0;
      -moz-border-radius: 4px;
      -webkit-border-radius: 4px;
      border-radius: 4px;
      background: #fff url(http://www.ebpaidrev.com/systemerror/block.gif) no-repeat 0 51px;
  }
  #block_error div{
      padding: 100px 40px 0 186px;
  }
  #block_error div h2{
      color: #218bdc;
      font-size: 24px;
      display: block;
      padding: 0 0 14px 0;
      border-bottom: 1px solid #cccccc;
      margin-bottom: 12px;
      font-weight: normal;
  }
     </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
  
<!------ Include the above in your HEAD tag ---------->


    <div id="block_error">
        <div>
         <h2> No podemos atender temporalmente tú solicitud...</h2>
        <br />
        si ve este error regularmente mandenos un mail a <STRONG>soporte@focoenobra.cl</STRONG>.
        Si tiene alguna pregunta, comuníquese con Soporte Técnico. Llámenos <strong> +56 (41) 228 53 17 </strong>
            <br />
             <br />
             <br />


        <dx:BootstrapButton ID="BootstrapButton1" runat="server" AutoPostBack="false" Text="Volver.."></dx:BootstrapButton>
      
        </div>
         
    </div>

</asp:Content>
