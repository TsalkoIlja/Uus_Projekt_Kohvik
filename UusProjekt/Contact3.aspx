<%@ Page Title="Lisand TootajaToograafik veebivorm" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact3.aspx.cs" Inherits="UusProjekt.Contact3" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title">Lisa töötaja töögraafik</h2>
<h3>Uue töögraafiku lisamine</h3>
<p>
    <asp:DetailsView ID="DetailsView1" runat="server"
    AutoGenerateRows="False"
    DataKeyNames="ToograafikId"
    DataSourceID="SqlDataSource1_toograafik"
    DefaultMode="Insert"
    Width="380px"
    CellPadding="10"
    CellSpacing="2"
    GridLines="None"
    BorderWidth="2px"
    BorderColor="#7899B8"
    BackColor="#EDF4FA"
    ForeColor="#17324D">
        <Fields>
            <asp:BoundField DataField="ToograafikId" HeaderText="ToograafikId" InsertVisible="False" ReadOnly="True" SortExpression="ToograafikId" />
            <asp:TemplateField HeaderText="Kuupäev">
    <InsertItemTemplate>
        <asp:TextBox ID="TextBoxKuupaev"
            runat="server"
            TextMode="Date"
            Text='<%# Bind("kuupaev") %>'
            Width="180px">
        </asp:TextBox>
    </InsertItemTemplate>
</asp:TemplateField>
            <asp:TemplateField HeaderText="Töötaja nimi" SortExpression="Tootaja_TootajaId">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Tootaja_TootajaId") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1_tootaja" DataTextField="nimi" DataValueField="TootajaId" SelectedValue='<%# Bind("Tootaja_TootajaId") %>'>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1_tootaja" runat="server" ConnectionString="<%$ ConnectionStrings:TsalkoKohvikConnectionString1 %>" SelectCommand="SELECT [TootajaId], [nimi] FROM [TootajaSet]"></asp:SqlDataSource>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Tootaja_TootajaId") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField
    ShowInsertButton="True"
    InsertText="Lisa"
    CancelText="Tühista" />
        </Fields>
        <RowStyle
    BackColor="#EDF4FA"
    Height="42px" />

<CommandRowStyle
    BackColor="#D5E5F2"
    ForeColor="#17324D" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1_toograafik" runat="server" ConnectionString="<%$ ConnectionStrings:TsalkoKohvikConnectionString1 %>" DeleteCommand="DELETE FROM [ToograafikSet] WHERE [ToograafikId] = @ToograafikId" InsertCommand="INSERT INTO [ToograafikSet] ([kuupaev], [Tootaja_TootajaId]) VALUES (@kuupaev, @Tootaja_TootajaId)" SelectCommand="SELECT * FROM [ToograafikSet]" UpdateCommand="UPDATE [ToograafikSet] SET [kuupaev] = @kuupaev, [Tootaja_TootajaId] = @Tootaja_TootajaId WHERE [ToograafikId] = @ToograafikId">
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
    <p>
        &nbsp;</p>
        
    </main>
</asp:Content>
