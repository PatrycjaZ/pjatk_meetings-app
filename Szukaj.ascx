<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Szukaj.ascx.cs" Inherits="spotkania_biuro.Szukaj1" %>
<style type="text/css">
    .auto-style1 {
        text-align: center;
        font-family: Calibri;
    }
</style>

<p>
    Podaj fragment nazwy spotkania:<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
</p>
<p class="auto-style1">
    <asp:TextBox ID="TextBox1" runat="server" Width="60%" Height="20px"></asp:TextBox>
    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Style/magnifying-glass.png" OnClick="ImageButton1_Click" Height="26px" />
</p>

