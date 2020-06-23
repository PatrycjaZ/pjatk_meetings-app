<%@ Page Title="" Language="C#" MasterPageFile="~/SzablonStrony.Master" AutoEventWireup="true" CodeBehind="Szukaj.aspx.cs" Inherits="spotkania_biuro.Szukaj" %>
<%@ Register src="Szukaj.ascx" tagname="Szukaj" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="page-content">
        <h3 class="page-header">WYSZUKIWANIE SPOTKANIA</h3>
        <uc1:Szukaj ID="Szukaj1" runat="server" />
        <p>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:API_PROJEKTConnectionString %>" SelectCommand="SELECT [IDSPOTKANIE], [SPOTKANIE], [CEL], [OPIS], [DATA_SPOTKANIA], [GODZ_ROZP], [GODZ_ZAK], [PROJEKT_IDPROJEKT] FROM [SPOTKANIE] WHERE ([SPOTKANIE] LIKE '%' + @SPOTKANIE + '%')">
                <SelectParameters>
                    <asp:QueryStringParameter Name="SPOTKANIE" QueryStringField="spotkanie" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </p>
        <br />
        <p>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="IDSPOTKANIE" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" Width="100%">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="IDSPOTKANIE" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="IDSPOTKANIE" />
                    <asp:BoundField DataField="SPOTKANIE" HeaderText="NAZWA SPOTKANIA" SortExpression="SPOTKANIE" />
                    <asp:BoundField DataField="CEL" HeaderText="CEL" SortExpression="CEL" />
                    <asp:BoundField DataField="OPIS" HeaderText="OPIS" SortExpression="OPIS" />
                    <asp:BoundField DataField="DATA_SPOTKANIA" DataFormatString="{0:d}" HeaderText="DATA SPOTKANIA" SortExpression="DATA_SPOTKANIA" />
                    <asp:BoundField DataField="GODZ_ROZP" HeaderText="GODZINA ROZPOCZĘCIA" SortExpression="GODZ_ROZP" />
                    <asp:BoundField DataField="GODZ_ZAK" HeaderText="GODZINA ZAKOŃCZENIA" SortExpression="GODZ_ZAK" />
                    <asp:BoundField DataField="PROJEKT_IDPROJEKT" HeaderText="ID OMAWIANEGO PROJEKTU" SortExpression="PROJEKT_IDPROJEKT" />
                </Columns>
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#F7F7DE" />
                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FBFBF2" />
                <SortedAscendingHeaderStyle BackColor="#848384" />
                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                <SortedDescendingHeaderStyle BackColor="#575357" />
            </asp:GridView>
        </p>
    </div>
</asp:Content>
