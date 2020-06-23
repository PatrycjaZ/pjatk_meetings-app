<%@ Page Title="" Language="C#" MasterPageFile="~/SzablonStrony.Master" AutoEventWireup="true" CodeBehind="DodajProjekt.aspx.cs" Inherits="spotkania_biuro.DodajProjekt" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="page-content">
        <h3 class="page-header">DODAWANIE PROJEKTU</h3>
        <div class="form-group">          
            <asp:Label ID="Label1" runat="server" Text="Nazwa projektu:"></asp:Label>
            <br />
            <asp:TextBox ID="ProjektTextBox1" runat="server" Width="30%"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ProjektTextBox1" ErrorMessage="Podaj nazwę projektu"></asp:RequiredFieldValidator>
        </div>
        <br />
        <div class="form-group">          
            <asp:Label ID="Label2" runat="server" Text="Opis projektu:"></asp:Label>
            <br />
            <asp:TextBox ID="OpisTextBox1" runat="server" Width="80%" Font-Names="Calibri" Height="60px" TextMode="MultiLine"></asp:TextBox>
        </div>
        <br />
        <div class="form-group">          
            <asp:Label ID="Label3" runat="server" Text="Deadline projektu:"></asp:Label>
            <asp:Calendar ID="DataCalendar1" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Calibri" Font-Size="14px" ForeColor="Black" Height="180px" Width="300px">
                <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                <NextPrevStyle VerticalAlign="Bottom" />
                <OtherMonthDayStyle ForeColor="#808080" />
                <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                <SelectorStyle BackColor="#CCCCCC" />
                <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                <WeekendDayStyle BackColor="#FFFFCC" />
            </asp:Calendar>
        </div>
        <br />
        <div class="form-group">          
            <asp:Label ID="Label4" runat="server" Text="Priorytet projektu (od 1 do 5):"></asp:Label>
            <br />
            <asp:TextBox ID="PriorytetTextBox1" runat="server" Width="30%"></asp:TextBox>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="PriorytetTextBox1" ErrorMessage="Skala od 1 do 5" MaximumValue="5" MinimumValue="1" Type="Integer"></asp:RangeValidator>
        </div>
        <br />
        <div class="form-button button">
            <asp:Button ID="Button1" runat="server" Text="DODAJ" BackColor="#2D3436" BorderColor="#2D3436" ForeColor="White" Height="40px" OnClick="DodajProjektButton1_Click" Width="100px" Font-Size="16px" />
        </div>
    </div>
</asp:Content>
