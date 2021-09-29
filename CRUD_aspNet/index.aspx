<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="CRUD_aspNet.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Motoristas]" DeleteCommand="DELETE FROM [Motoristas] WHERE [Codigo] = @Codigo" InsertCommand="INSERT INTO [Motoristas] ([CPF], [Nome], [Sexo], [Idade], [Ativo]) VALUES (@CPF, @Nome, @Sexo, @Idade, @Ativo)" UpdateCommand="UPDATE [Motoristas] SET [CPF] = @CPF, [Nome] = @Nome, [Sexo] = @Sexo, [Idade] = @Idade, [Ativo] = @Ativo WHERE [Codigo] = @Codigo">
        <DeleteParameters>
            <asp:Parameter Name="Codigo" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="CPF" Type="String" />
            <asp:Parameter Name="Nome" Type="String" />
            <asp:Parameter Name="Sexo" Type="String" />
            <asp:Parameter Name="Idade" Type="Int32" />
            <asp:Parameter Name="Ativo" Type="Boolean" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="CPF" Type="String" />
            <asp:Parameter Name="Nome" Type="String" />
            <asp:Parameter Name="Sexo" Type="String" />
            <asp:Parameter Name="Idade" Type="Int32" />
            <asp:Parameter Name="Ativo" Type="Boolean" />
            <asp:Parameter Name="Codigo" Type="Int32" />
        </UpdateParameters>
        </asp:SqlDataSource>
&nbsp;<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Codigo" DataSourceID="SqlDataSource1" GridLines="Vertical" Width="550px">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="Codigo" HeaderText="Codigo" InsertVisible="False" ReadOnly="True" SortExpression="Codigo" />
                <asp:BoundField DataField="CPF" HeaderText="CPF" SortExpression="CPF" />
                <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome" />
                <asp:BoundField DataField="Sexo" HeaderText="Sexo" SortExpression="Sexo" />
                <asp:BoundField DataField="Idade" HeaderText="Idade" SortExpression="Idade" />
                <asp:CheckBoxField DataField="Ativo" HeaderText="Ativo" SortExpression="Ativo" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>
</form>
</asp:Content>
