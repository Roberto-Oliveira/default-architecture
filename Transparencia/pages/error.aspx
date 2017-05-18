<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="error.aspx.cs" Inherits="Transparencia.pages.error" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ControlContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <style type="text/css">
        .back-white {
            background: white;
        }
    </style>
    <p class="back-white">
        <img src="/images/Error-404.png" alt="Erro, página não encontrada." />
    </p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptContent" runat="server">
</asp:Content>
