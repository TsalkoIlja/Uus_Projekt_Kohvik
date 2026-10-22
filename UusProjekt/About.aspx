<%@ Page Title="Töötajad" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="UusProjekt.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title">Töötaja.</h2>
    <p>
        
<asp:GridView ID="GridView1" runat="server"
    AutoGenerateColumns="False"
    DataKeyNames="TootajaId"
    DataSourceID="SqlDataSource1"
    EmptyDataText="There are no data records to display."
       CellPadding="10"
    CellSpacing="2"
    GridLines="Both"
    BorderWidth="2px"
    BorderColor="#7895B2"
    BackColor="White"
    ForeColor="#25364A">
    <HeaderStyle BackColor="#D6E6F2"
    ForeColor="#20364D"
    Font-Bold="True" />

<AlternatingRowStyle BackColor="#F0F6FA" />
            
<Columns>
    <asp:CommandField
    ShowEditButton="True"
    ShowDeleteButton="True"
    EditText="Muuda"
    DeleteText="Kustuta"
    UpdateText="Salvesta"
    CancelText="Tühista" />

    <asp:BoundField
        DataField="TootajaId"
        HeaderText="TootajaId"
        ReadOnly="True" />

    <asp:BoundField
        DataField="nimi"
        HeaderText="nimi" />

    <asp:BoundField
        DataField="isikukood"
        HeaderText="isikukood" />

    <asp:BoundField
        DataField="telefon"
        HeaderText="telefon" />

    
<asp:TemplateField HeaderText="amet_ametId">
    <ItemTemplate>
        <asp:Label ID="LabelAmet" runat="server"
            Text='<%# Eval("amet_Nimetus") %>'>
        </asp:Label>
    </ItemTemplate>

    <EditItemTemplate>
        <asp:DropDownList ID="DropDownListEditAmet"
            runat="server"
            DataSourceID="SqlDataSourceAmet"
            DataTextField="amet_Nimetus"
            DataValueField="ametId"
            SelectedValue='<%# Bind("amet_ametId") %>'>
        </asp:DropDownList>
    </EditItemTemplate>
</asp:TemplateField>

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
    Width="320px"
    CellPadding="8"
    BorderWidth="2px"
    BorderColor="#7895B2"
    BackColor="#F0F6FA">

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

        <asp:CommandField
    ShowInsertButton="True"
    InsertText="Lisa"
    CancelText="Tühista" />
    </Fields>
</asp:DetailsView>

    </p>
    </main>
</asp:Content>
