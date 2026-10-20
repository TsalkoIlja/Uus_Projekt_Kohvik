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
                <asp:BoundField DataField="amet_Nimetus" HeaderText="amet" SortExpression="amet_Nimetus" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TsalkoKohvikConnectionString1 %>" DeleteCommand="DELETE FROM [TootajaSet] WHERE [TootajaId] = @TootajaId" InsertCommand="INSERT INTO [TootajaSet] ([nimi], [isikukood], [telefon], [amet_ametId]) VALUES (@nimi, @isikukood, @telefon, @amet_ametId)" SelectCommand="SELECT t.TootajaId, t.nimi, t.isikukood,
                      t.telefon, t.amet_ametId, a.amet_Nimetus
               FROM [TootajaSet] AS t
               LEFT JOIN [ametSet] AS a
               ON t.amet_ametId = a.ametId" UpdateCommand="UPDATE [TootajaSet] SET [nimi] = @nimi, [isikukood] = @isikukood, [telefon] = @telefon, [amet_ametId] = @amet_ametId WHERE [TootajaId] = @TootajaId">
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
        
<asp:SqlDataSource ID="SqlDataSourceAmet" runat="server"
    ConnectionString="<%$ ConnectionStrings:TsalkoKohvikConnectionString1 %>"
    SelectCommand="SELECT [ametId], [amet_Nimetus] FROM [ametSet]">
</asp:SqlDataSource>

    </p>
<h2>
        Lisa töötaja</h2>
<p>
        
<asp:DetailsView ID="DetailsView1" runat="server"
    DataSourceID="SqlDataSource1"
    AutoGenerateRows="False"
    DefaultMode="Insert"
    Width="300px">

    <Fields>
        <asp:BoundField DataField="nimi" HeaderText="nimi" />
        <asp:BoundField DataField="isikukood" HeaderText="isikukood" />
        <asp:BoundField DataField="telefon" HeaderText="telefon" />

        <asp:TemplateField HeaderText="amet_ametId">
            <InsertItemTemplate>
                <asp:DropDownList ID="DropDownListAmet"
                    runat="server"
                    DataSourceID="SqlDataSourceAmet"
                    DataTextField="amet_Nimetus"
                    DataValueField="ametId"
                    SelectedValue='<%# Bind("amet_ametId") %>'>
                </asp:DropDownList>
            </InsertItemTemplate>
        </asp:TemplateField>

        <asp:CommandField ShowInsertButton="True" />
    </Fields>
</asp:DetailsView>

    </p>
        <h3>Your application description page.</h3>
        <p>Use this area to provide additional information.</p>
    </main>
</asp:Content>
