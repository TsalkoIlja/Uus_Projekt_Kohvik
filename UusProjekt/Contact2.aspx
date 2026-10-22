<%@ Page Title="TootajaToograafik" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact2.aspx.cs" Inherits="UusProjekt.Contact2" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title">Töötajate töögraafik</h2>
<h3>Töögraafiku tabel</h3>
<p>
    <asp:GridView ID="GridView1" runat="server"
    AutoGenerateColumns="False"
    DataKeyNames="ToograafikId"
    DataSourceID="SqlDataSource1"
    EmptyDataText="Andmed puuduvad."
    CellPadding="10"
    CellSpacing="0"
    GridLines="None"
    BorderWidth="2px"
    BorderColor="#7899B8"
    BackColor="White"
    ForeColor="#17324D"
    Width="650px">
        <Columns>
            <asp:BoundField DataField="ToograafikId" HeaderText="ToograafikId" ReadOnly="True" SortExpression="ToograafikId" InsertVisible="False" />
            <asp:BoundField DataField="kuupaev" HeaderText="kuupaev" SortExpression="kuupaev" />
            <asp:BoundField DataField="nimi" HeaderText="Töötaja nimi" SortExpression="nimi" />
            <asp:BoundField DataField="isikukood" HeaderText="isikukood" SortExpression="isikukood" />
        </Columns>
        <HeaderStyle
    BackColor="#D5E5F2"
    ForeColor="#17324D"
    Font-Bold="True"
    Height="45px" />

<RowStyle
    BackColor="#FFFFFF"
    Height="42px" />

<AlternatingRowStyle
    BackColor="#EDF4FA" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TsalkoKohvikConnectionString1 %>" DeleteCommand="DELETE FROM [ToograafikSet] WHERE [ToograafikId] = @ToograafikId" InsertCommand="INSERT INTO [ToograafikSet] ([kuupaev], [Tootaja_TootajaId]) VALUES (@kuupaev, @Tootaja_TootajaId)" SelectCommand="SELECT ToograafikSet.ToograafikId, ToograafikSet.kuupaev, TootajaSet.nimi, TootajaSet.isikukood FROM ToograafikSet INNER JOIN TootajaSet ON ToograafikSet.Tootaja_TootajaId = TootajaSet.TootajaId" UpdateCommand="UPDATE [ToograafikSet] SET [kuupaev] = @kuupaev, [Tootaja_TootajaId] = @Tootaja_TootajaId WHERE [ToograafikId] = @ToograafikId">
        <DeleteParameters>
            <asp:Parameter Name="ToograafikId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="kuupaev" Type="String" />
            <asp:Parameter Name="Tootaja_TootajaId" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="kuupaev" Type="String" />
            <asp:Parameter Name="Tootaja_TootajaId" Type="Int32" />
            <asp:Parameter Name="ToograafikId" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</p>
        
    </main>
</asp:Content>
