<%@ Page Title="" Language="C#" MasterPageFile="~/SzablonStrony.Master" AutoEventWireup="true" CodeBehind="DodajPracownika.aspx.cs" Inherits="spotkania_biuro.DodajPracownika" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="page-content">
        <h3 class="page-header">DODAWANIE PRACOWNIKA</h3>
        <div class="form-group">
            <asp:Label ID="Label1" runat="server" Text="Imię:"></asp:Label><br />
            <asp:TextBox ID="ImieTextBox1" runat="server" Width="30%"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ImieTextBox1" ErrorMessage="Podaj imię" Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="ImieTextBox1" ErrorMessage="Imię powinno składać się z samych liter" ValidationExpression="^[A-Za-z]+$"></asp:RegularExpressionValidator>
        </div>
        <br />
        <div class="form-group">
            <asp:Label ID="Label2" runat="server" Text="Nazwisko:"></asp:Label>
            <br />
            <asp:TextBox ID="NazwiskoTextBox1" runat="server" Width="30%"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="NazwiskoTextBox1" ErrorMessage="Podaj nazwisko" Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="NazwiskoTextBox1" ErrorMessage="Nazwisko powinno składać się z samych liter" ValidationExpression="^[A-Za-z]+$"></asp:RegularExpressionValidator>
        </div>
        <br />
        <div class="form-group">
            <asp:Label ID="Label3" runat="server" Text="Rok urodzenia:"></asp:Label>
            <br />
            <asp:TextBox ID="RokTextBox1" runat="server" Width="30%"></asp:TextBox>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="RokTextBox1" ErrorMessage="Zły format daty" MaximumValue="2020" MinimumValue="1900" Type="Integer"></asp:RangeValidator>
        </div>
        <br />
        <div class="form-group">
            <asp:Label ID="Label4" runat="server" Text="Miasto zamieszkania:"></asp:Label>
            <br />
            <asp:TextBox ID="MiastoTextBox1" runat="server" Width="30%"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="MiastoTextBox1" ErrorMessage="Podaj miasto zamieszkania" Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="MiastoTextBox1" ErrorMessage="Miasto powinno składać się z samych liter" ValidationExpression="^[A-Za-z]+$"></asp:RegularExpressionValidator>
        </div>
        <br />
        <div class="form-group">
            <asp:Label ID="Label5" runat="server" Text="Stanowisko:"></asp:Label>
            <br />
            <asp:TextBox ID="StanowiskoTextBox1" runat="server" Width="30%"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="StanowiskoTextBox1" ErrorMessage="Podaj stanowisko"></asp:RequiredFieldValidator>
        </div>
        <br />
        <div class="form-group">
            <asp:Label ID="Label6" runat="server" Text="E-mail:"></asp:Label>
            <br />
            <asp:TextBox ID="EmailTextBox1" runat="server" Width="30%"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="EmailTextBox1" Display="Dynamic" ErrorMessage="Podaj e-mail"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="EmailTextBox1" ErrorMessage="Zły format maila" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </div>
        <br />
        <div class="form-group">
            <asp:Label ID="Label7" runat="server" Text="Numer telefonu:"></asp:Label>
            <br />
            <asp:TextBox ID="NrtelTextBox1" runat="server" Width="30%"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="NrtelTextBox1" ErrorMessage="Numer telefonu powinien składać się z cyfr" ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator>
        </div>
        <br />
        <div class="form-group">
            <asp:Label ID="Label8" runat="server" Text="Tablica informacyjna:"></asp:Label>
            <br />
            <asp:TextBox ID="TablicaTextBox1" runat="server" Height="60px" TextMode="MultiLine" Width="80%" Font-Names="Calibri"></asp:TextBox>
        </div>
        <br />
        <div class="form-button button">
            <asp:Button ID="Button1" runat="server" Text="DODAJ" BackColor="#2D3436" BorderColor="#2D3436" ForeColor="White" Height="40px" OnClick="DodajPracownikaButton1_Click" Width="100px" Font-Size="16px" />
        </div>
    </div>
</asp:Content>
