<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact3.aspx.cs" Inherits="UusProjekt.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>.</h2>
    <h2>Lisa TootajaToograafik veebivorm</h2>
<p>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="ToograafikId" DataSourceID="SqlDataSource1_toograafik" DefaultMode="Insert" Height="50px" Width="125px">
        <Fields>
            <asp:BoundField DataField="ToograafikId" HeaderText="ToograafikId" InsertVisible="False" ReadOnly="True" SortExpression="ToograafikId" />
            <asp:BoundField DataField="kuupaev" HeaderText="kuupaev" SortExpression="kuupaev" />
            <asp:TemplateField HeaderText="Tootaja_TootajaId" SortExpression="Tootaja_TootajaId">
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
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
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
