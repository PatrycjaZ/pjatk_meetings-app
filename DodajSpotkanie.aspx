<%@ Page Title="" Language="C#" MasterPageFile="~/SzablonStrony.Master" AutoEventWireup="true" CodeBehind="DodajSpotkanie.aspx.cs" Inherits="spotkania_biuro.DodajSpotkanie" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="page-content">
        <h3 class="page-header">DODAWANIE SPOTKANIA</h3>
        <div class="form-group">
            <asp:Label ID="Label1" runat="server" Text="Nazwa spotkania:"></asp:Label><br />
            <asp:TextBox ID="SpotkanieTextBox1" runat="server" Width="50%"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="SpotkanieTextBox1" ErrorMessage="Podaj nazwę spotkania"></asp:RequiredFieldValidator>
        </div>
        <br />
        <div class="form-group">
            <asp:Label ID="Label2" runat="server" Text="Cel spotkania:"></asp:Label><br />
            <asp:TextBox ID="CelTextBox1" runat="server" Width="50%"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="CelTextBox1" ErrorMessage="Podaj cel spotkania"></asp:RequiredFieldValidator>
        </div>
        <br />
        <div class="form-group">
            <asp:Label ID="Label3" runat="server" Text="Opis spotkania:"></asp:Label><br />
            <asp:TextBox ID="OpisTextBox1" runat="server" Height="60px" TextMode="MultiLine" Width="80%" Font-Names="Calibri"></asp:TextBox>
        </div>
        <br />
        <div class="form-group">
            <asp:Label ID="Label4" runat="server" Text="Data spotkania:"></asp:Label>            
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
            <asp:Label ID="Label5" runat="server" Text="Godzina rozpoczęcia:  "></asp:Label>
            <asp:TextBox ID="GodzRozpTextBox1" runat="server" TextMode="Time"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="GodzRozpTextBox1" ErrorMessage="Dodaj godzinę rozpoczęcia"></asp:RequiredFieldValidator>
            <br /><br />
            <asp:Label ID="Label6" runat="server" Text="Godzina zakończenia: "></asp:Label>
            <asp:TextBox ID="GodzZakTextBox1" runat="server" TextMode="Time"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="GodzZakTextBox1" ErrorMessage="Dodaj godzinę zakończenia"></asp:RequiredFieldValidator>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:API_PROJEKTConnectionString %>" SelectCommand="SELECT IDPROJEKT, PROJEKT FROM PROJEKT UNION SELECT NULL AS Expr1, NULL AS Expr2 ORDER BY IDPROJEKT"></asp:SqlDataSource>
        <br />
        <div class="form-group">
            <asp:Label ID="Label7" runat="server" Text="Omawiany projekt:"></asp:Label>
            <br />
            <asp:DropDownList ID="ProjektDropDownList1" runat="server" Font-Names="Calibri" Width="50%" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="PROJEKT" DataValueField="IDPROJEKT">
            </asp:DropDownList>
        </div>
        <br />
        <div class="form-button button">
            <asp:Button ID="Button1" runat="server" Text="DODAJ" BackColor="#2D3436" BorderColor="#2D3436" ForeColor="White" Height="40px" FontSize="18px" OnClick="DodajSpotkanieButton1_Click" Width="100px" Font-Size="16px" />
        </div>
    </div>
</asp:Content>
