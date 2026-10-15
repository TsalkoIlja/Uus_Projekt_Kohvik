<%@ Page Title="Töötajad" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="UusProjekt.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title">Töötaja.</h2>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="TootajaId" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
            <Columns>
                <asp:BoundField DataField="TootajaId" HeaderText="TootajaId" ReadOnly="True" SortExpression="TootajaId" />
                <asp:BoundField DataField="nimi" HeaderText="nimi" SortExpression="nimi" />
                <asp:BoundField DataField="isikukood" HeaderText="isikukood" SortExpression="isikukood" />
                <asp:BoundField DataField="telefon" HeaderText="telefon" SortExpression="telefon" />
                <asp:BoundField DataField="amet_ametId" HeaderText="amet_ametId" SortExpression="amet_ametId" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TsalkoKohvikConnectionString1 %>" DeleteCommand="DELETE FROM [TootajaSet] WHERE [TootajaId] = @TootajaId" InsertCommand="INSERT INTO [TootajaSet] ([nimi], [isikukood], [telefon], [amet_ametId]) VALUES (@nimi, @isikukood, @telefon, @amet_ametId)" SelectCommand="SELECT [TootajaId], [nimi], [isikukood], [telefon], [amet_ametId] FROM [TootajaSet]" UpdateCommand="UPDATE [TootajaSet] SET [nimi] = @nimi, [isikukood] = @isikukood, [telefon] = @telefon, [amet_ametId] = @amet_ametId WHERE [TootajaId] = @TootajaId">
            <DeleteParameters>
                <asp:Parameter Name="TootajaId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="nimi" Type="String" />
                <asp:Parameter Name="isikukood" Type="String" />
                <asp:Parameter Name="telefon" Type="String" />
                <asp:Parameter Name="amet_ametId" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="nimi" Type="String" />
                <asp:Parameter Name="isikukood" Type="String" />
                <asp:Parameter Name="telefon" Type="String" />
                <asp:Parameter Name="amet_ametId" Type="Int32" />
                <asp:Parameter Name="TootajaId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
<h2>
        Lisa töötaja</h2>
<p>
        <asp:DetailsView ID="DetailsView1" runat="server" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="50px" Width="125px">
            <Fields>
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
    </p>
        <h3>Your application description page.</h3>
        <p>Use this area to provide additional information.</p>
    </main>
</asp:Content>
