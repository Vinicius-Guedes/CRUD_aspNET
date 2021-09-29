<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="inserir.aspx.cs" Inherits="CRUD_aspNet.inserir" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form_Insert" runat="server">
        <fieldset>
           <asp:TextBox ID="txtNome" name="txtNome" placeholder="Nome" runat="server"></asp:TextBox>
        </fieldset>
        <fieldset>
            <asp:TextBox ID="txtCPF" name="txtCPF" placeholder="CPF" runat="server"></asp:TextBox>
        </fieldset>
        <fieldset id="radio_Idade">
            <label>SEXO:</label>
            <asp:RadioButton ID="txtM" name="rdSexo" value="M" runat="server" />
            <label for="M">M</label>
            <asp:RadioButton ID="txtF" name="rdSexo" value="F" runat="server" />
            <label for="txtF">F</label>
            <asp:TextBox ID="txtIdade" name="txtIdade" placeholder="Idade" runat="server" MaxLength="2"></asp:TextBox>
        </fieldset>&nbsp;
        <asp:Button ID="btnInserir" runat="server" Text="INSERIR" OnClick="btnInserir_Click" />
    </form>
</asp:Content>
