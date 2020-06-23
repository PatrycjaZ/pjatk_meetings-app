<%@ Page Title="" Language="C#" MasterPageFile="~/SzablonStrony.Master" AutoEventWireup="true" CodeBehind="ListaSpotkan.aspx.cs" Inherits="spotkania_biuro.ListaSpotkan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="page-content">
        <h3 class="page-header">LISTA SPOTKAŃ</h3>
        <p>  
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:API_PROJEKTConnectionString %>" SelectCommand="SELECT [IDSPOTKANIE], [SPOTKANIE], [CEL], [SPOTKANIE].[OPIS], [DATA_SPOTKANIA], [GODZ_ROZP], [GODZ_ZAK], [PROJEKT]
FROM [SPOTKANIE] LEFT OUTER JOIN [PROJEKT] 
ON [SPOTKANIE].[PROJEKT_IDPROJEKT]=[PROJEKT].[IDPROJEKT]" OnSelecting="SqlDataSource1_Selecting" DeleteCommand="DELETE FROM [SPOTKANIE] WHERE [IDSPOTKANIE] = @IDSPOTKANIE">
                <DeleteParameters>
                    <asp:Parameter Name="IDSPOTKANIE" />
                </DeleteParameters>
            </asp:SqlDataSource>
        </p>
        <div class="page-grid">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" Width="100%" DataKeyNames="IDSPOTKANIE" EnableViewState="False">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="IDSPOTKANIE" HeaderText="ID" SortExpression="IDSPOTKANIE" InsertVisible="False" ReadOnly="True" />
                    <asp:BoundField DataField="SPOTKANIE" HeaderText="NAZWA SPOTKANIA" SortExpression="SPOTKANIE" />
                    <asp:BoundField DataField="CEL" HeaderText="CEL" SortExpression="CEL" />
                    <asp:BoundField DataField="OPIS" HeaderText="OPIS" SortExpression="OPIS" />
                    <asp:BoundField DataField="DATA_SPOTKANIA" HeaderText="DATA SPOTKANIA" SortExpression="DATA_SPOTKANIA" DataFormatString="{0:d}" />
                    <asp:BoundField DataField="GODZ_ROZP" HeaderText="GODZINA ROZPOCZĘCIA" SortExpression="GODZ_ROZP" />
                    <asp:BoundField DataField="GODZ_ZAK" HeaderText="GODZINA ZAKOŃCZENIA" SortExpression="GODZ_ZAK" />
                    <asp:BoundField DataField="PROJEKT" HeaderText="OMAWIANY PROJEKT" SortExpression="PROJEKT" />
                    <asp:CommandField ShowSelectButton="True" ButtonType="Button" >
                    <ControlStyle BackColor="#A5B1C2" BorderColor="#A5B1C2" BorderStyle="Solid" Font-Names="Calibri" Font-Size="16px" ForeColor="White" />
                    </asp:CommandField>
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
            <br />
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:API_PROJEKTConnectionString %>" DeleteCommand="DELETE FROM [SPOTKANIE] WHERE [IDSPOTKANIE] = @IDSPOTKANIE" InsertCommand="INSERT INTO [SPOTKANIE] ([SPOTKANIE], [CEL], [OPIS], [DATA_SPOTKANIA], [GODZ_ROZP], [GODZ_ZAK], [PROJEKT_IDPROJEKT]) VALUES (@SPOTKANIE, @CEL, @OPIS, @DATA_SPOTKANIA, @GODZ_ROZP, @GODZ_ZAK, @PROJEKT_IDPROJEKT)" SelectCommand="SELECT * FROM [SPOTKANIE] WHERE ([IDSPOTKANIE] = @IDSPOTKANIE)" UpdateCommand="UPDATE [SPOTKANIE] SET [SPOTKANIE] = @SPOTKANIE, [CEL] = @CEL, [OPIS] = @OPIS, [DATA_SPOTKANIA] = @DATA_SPOTKANIA, [GODZ_ROZP] = @GODZ_ROZP, [GODZ_ZAK] = @GODZ_ZAK, [PROJEKT_IDPROJEKT] = @PROJEKT_IDPROJEKT WHERE [IDSPOTKANIE] = @IDSPOTKANIE">
                <DeleteParameters>
                    <asp:Parameter Name="IDSPOTKANIE" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="SPOTKANIE" Type="String" />
                    <asp:Parameter Name="CEL" Type="String" />
                    <asp:Parameter Name="OPIS" Type="String" />
                    <asp:Parameter DbType="Date" Name="DATA_SPOTKANIA" />
                    <asp:Parameter DbType="Time" Name="GODZ_ROZP" />
                    <asp:Parameter DbType="Time" Name="GODZ_ZAK" />
                    <asp:Parameter Name="PROJEKT_IDPROJEKT" Type="Int32" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="GridView1" Name="IDSPOTKANIE" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="SPOTKANIE" Type="String" />
                    <asp:Parameter Name="CEL" Type="String" />
                    <asp:Parameter Name="OPIS" Type="String" />
                    <asp:Parameter DbType="Date" Name="DATA_SPOTKANIA" />
                    <asp:Parameter DbType="Time" Name="GODZ_ROZP" />
                    <asp:Parameter DbType="Time" Name="GODZ_ZAK" />
                    <asp:Parameter Name="PROJEKT_IDPROJEKT" Type="Int32" />
                    <asp:Parameter Name="IDSPOTKANIE" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="#D2DAE2" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="IDSPOTKANIE" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="Vertical" Height="50px" OnPageIndexChanging="DetailsView1_PageIndexChanging" Width="80%">
                <AlternatingRowStyle BackColor="White" />
                <EditRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <Fields>
                    <asp:BoundField DataField="IDSPOTKANIE" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="IDSPOTKANIE" />
                    <asp:TemplateField HeaderText="NAZWA SPOTKANIA" SortExpression="SPOTKANIE">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("SPOTKANIE") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Podaj nazwę spotkania"></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("SPOTKANIE") %>'></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("SPOTKANIE") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="CEL" SortExpression="CEL">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("CEL") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Podaj cel spotkania"></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("CEL") %>'></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("CEL") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="OPIS" SortExpression="OPIS">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox6" runat="server" Font-Names="Calibri" Text='<%# Bind("OPIS") %>' TextMode="MultiLine" Width="80%"></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("OPIS") %>'></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label6" runat="server" Text='<%# Bind("OPIS") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="DATA SPOTKANIA" SortExpression="DATA_SPOTKANIA">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("DATA_SPOTKANIA") %>' Font-Names="Calibri"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="Podaj datę spotkania"></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("DATA_SPOTKANIA", "{0:d}") %>'></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("DATA_SPOTKANIA", "{0:d}") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="GODZINA ROZPOCZĘCIA" SortExpression="GODZ_ROZP">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("GODZ_ROZP") %>' TextMode="Time" Font-Names="Calibri"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Dodaj godzinę rozpoczęcia"></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("GODZ_ROZP") %>'></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("GODZ_ROZP") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="GODZINA ZAKOŃCZENIA" SortExpression="GODZ_ZAK">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("GODZ_ZAK") %>' TextMode="Time" Font-Names="Calibri"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Dodaj godzinę zakończenia" ControlToValidate="TextBox5"></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("GODZ_ZAK") %>'></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("GODZ_ZAK") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="PROJEKT_IDPROJEKT" HeaderText="OMAWIANY PROJEKT" SortExpression="PROJEKT_IDPROJEKT" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ButtonType="Button" >
                    <ControlStyle BackColor="#A5B1C2" BorderColor="#A5B1C2" BorderStyle="Solid" Font-Names="Calibri" Font-Size="16px" ForeColor="White" />
                    </asp:CommandField>
                </Fields>
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#F7F7DE" />
            </asp:DetailsView>
        </div>
    </div>
</asp:Content>
