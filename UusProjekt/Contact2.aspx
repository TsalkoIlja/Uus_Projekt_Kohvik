<%@ Page Title="TootajaToograafik" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact2.aspx.cs" Inherits="UusProjekt.Contact2" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>.</h2>
        <h3>TootajaToograafik tabel</h3>
<p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ToograafikId" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
        <Columns>
            <asp:BoundField DataField="ToograafikId" HeaderText="ToograafikId" ReadOnly="True" SortExpression="ToograafikId" InsertVisible="False" />
            <asp:BoundField DataField="kuupaev" HeaderText="kuupaev" SortExpression="kuupaev" />
            <asp:BoundField DataField="nimi" HeaderText="nimi" SortExpression="nimi" />
            <asp:BoundField DataField="isikukood" HeaderText="isikukood" SortExpression="isikukood" />
        </Columns>
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
