<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="UusProjekt._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
    .avaleht-kast {
        background-color: #E8F1F8;
        border: 2px solid #527A9E;
        border-radius: 8px;
        padding: 25px;
        margin-top: 20px;
        max-width: 850px;
    }

    .avaleht-kast h1 {
        color: #254F73;
        font-size: 36px;
    }

    .avaleht-kast h2 {
        color: #416B91;
        font-size: 26px;
    }

    .avaleht-kast p {
        color: #25364A;
        font-size: 18px;
    }

    .avaleht-kast hr {
        border: 0;
        border-top: 2px solid #7895B2;
        margin: 15px 0;
    }
</style>
    <main>
    <div class="avaleht-kast">
        <h1>Avaleht</h1>
        <hr />
        <h2>Tere tulemast!</h2>
        <p>See veebileht on ühendatud KohvikModeli andmebaasiga.</p>
        <p>Siin saab vaadata ja hallata töötajate andmeid.</p>
    </div>
</main>

</asp:Content>
