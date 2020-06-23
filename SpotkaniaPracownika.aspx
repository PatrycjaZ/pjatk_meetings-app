<%@ Page Title="" Language="C#" MasterPageFile="~/SzablonStrony.Master" AutoEventWireup="true" CodeBehind="SpotkaniaPracownika.aspx.cs" Inherits="spotkania_biuro.SpotkaniaPracownika" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="page-content">
        <h3 class="page-header">SPOTKANIA PRACOWNIKA</h3>
        <div class="form-group">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:API_PROJEKTConnectionString %>" SelectCommand="SELECT [IDPRACOWNIK], [NAZWISKO] + ' ' + [IMIE] FROM [PRACOWNIK]"></asp:SqlDataSource>
            <asp:Label ID="Label2" runat="server" Text="Pracownik:"></asp:Label><br />
            <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Column1" DataValueField="IDPRACOWNIK" Width="30%">
            </asp:DropDownList>
            <br />
            <br />
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:API_PROJEKTConnectionString %>" SelectCommand="SELECT [IDSPOTKANIE], [SPOTKANIE], [MIEJSCE_SPOTKANIA], [DATA_SPOTKANIA], [GODZ_ROZP], [GODZ_ZAK], UDZIAL_W_SPOTKANIU.PRACOWNIK_IDPRACOWNIK
FROM [SPOTKANIE] 
INNER JOIN UDZIAL_W_SPOTKANIU 
ON UDZIAL_W_SPOTKANIU.SPOTKANIE_IDSPOTKANIE = SPOTKANIE.IDSPOTKANIE
WHERE UDZIAL_W_SPOTKANIU.PRACOWNIK_IDPRACOWNIK = @IDPRACOWNIK
">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList2" Name="IDPRACOWNIK" PropertyName="SelectedValue" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="Vertical" Width="100%" AllowSorting="True">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="IDSPOTKANIE" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="IDSPOTKANIE" />
                    <asp:BoundField DataField="SPOTKANIE" HeaderText="NAZWA SPOTKANIA" SortExpression="SPOTKANIE" />
                    <asp:BoundField DataField="MIEJSCE_SPOTKANIA" HeaderText="MIEJSCE SPOTKANIA" SortExpression="MIEJSCE_SPOTKANIA" />
                    <asp:BoundField DataField="DATA_SPOTKANIA" HeaderText="DATA SPOTKANIA" SortExpression="DATA_SPOTKANIA" DataFormatString="{0:d}" />
                    <asp:BoundField DataField="GODZ_ROZP" HeaderText="GODZINA ROZPOCZĘCIA" SortExpression="GODZ_ROZP" />
                    <asp:BoundField DataField="GODZ_ZAK" HeaderText="GODZINA ZAKOŃCZENIA" SortExpression="GODZ_ZAK" />
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
        </div>
    </div>
</asp:Content>
