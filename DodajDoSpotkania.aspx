<%@ Page Title="" Language="C#" MasterPageFile="~/SzablonStrony.Master" AutoEventWireup="true" CodeBehind="DodajDoSpotkania.aspx.cs" Inherits="spotkania_biuro.DodajDoSpotkania" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="page-content">
        <h3 class="page-header">DODAWANIE PRACOWNIKA DO SPOTKANIA</h3>
        <div class="form-group">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:API_PROJEKTConnectionString %>" SelectCommand="SELECT [SPOTKANIE], [IDSPOTKANIE] FROM [SPOTKANIE]"></asp:SqlDataSource>
            <asp:Label ID="Label1" runat="server" Text="Spotkanie:"></asp:Label>
            <br />
            <asp:DropDownList ID="SpotkanieDropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="SPOTKANIE" DataValueField="IDSPOTKANIE" Width="30%" Font-Names="Calibri">
            </asp:DropDownList>
        </div>
        <br />
        <div class="form-group">
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:API_PROJEKTConnectionString %>" SelectCommand="SELECT [IDPRACOWNIK], [NAZWISKO] + ' ' + [IMIE] FROM [PRACOWNIK]"></asp:SqlDataSource>
            <asp:Label ID="Label2" runat="server" Text="Pracownik:"></asp:Label>
            <br />
            <asp:DropDownList ID="PracownikDropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Column1" DataValueField="IDPRACOWNIK" Width="30%" Font-Names="Calibri">
            </asp:DropDownList>
        </div>
        <br />
        <div class="form-group">
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:API_PROJEKTConnectionString %>" SelectCommand="SELECT DISTINCT [MIEJSCE_SPOTKANIA] FROM [UDZIAL_W_SPOTKANIU]"></asp:SqlDataSource>
            <asp:Label ID="Label5" runat="server" Text="Miejsce spotkania:"></asp:Label>
            <br />
            <asp:RadioButtonList ID="MiejsceRadioButtonList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="MIEJSCE_SPOTKANIA" DataValueField="MIEJSCE_SPOTKANIA">
            </asp:RadioButtonList>
        </div>
        <br />
        <div class="form-button button">
            <asp:Button ID="Button1" runat="server" Text="DODAJ" OnClick="DodajDoSpotkaniaButton1_Click" BackColor="#2D3436" BorderColor="#2D3436" Font-Size="16px" ForeColor="White" Height="40px" Width="100px" />
        </div>
    </div>
</asp:Content>
