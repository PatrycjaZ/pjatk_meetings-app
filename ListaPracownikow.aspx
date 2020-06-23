<%@ Page Title="" Language="C#" MasterPageFile="~/SzablonStrony.Master" AutoEventWireup="true" CodeBehind="ListaPracownikow.aspx.cs" Inherits="spotkania_biuro.ListaPracowników" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="page-content">
        <h3 class="page-header">LISTA PRACOWNIKÓW</h3>
        <p>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:API_PROJEKTConnectionString %>" DeleteCommand="DELETE FROM [PRACOWNIK] WHERE [IDPRACOWNIK] = @IDPRACOWNIK" InsertCommand="INSERT INTO [PRACOWNIK] ([NAZWISKO], [IMIE], [MIASTO], [STANOWISKO], [EMAIL], [NR_TEL]) VALUES (@NAZWISKO, @IMIE, @MIASTO, @STANOWISKO, @EMAIL, @NR_TEL)" SelectCommand="SELECT [NAZWISKO], [IMIE], [MIASTO], [STANOWISKO], [EMAIL], [NR_TEL], [IDPRACOWNIK] FROM [PRACOWNIK]" UpdateCommand="UPDATE [PRACOWNIK] SET [NAZWISKO] = @NAZWISKO, [IMIE] = @IMIE, [MIASTO] = @MIASTO, [STANOWISKO] = @STANOWISKO, [EMAIL] = @EMAIL, [NR_TEL] = @NR_TEL WHERE [IDPRACOWNIK] = @IDPRACOWNIK">
                <DeleteParameters>
                    <asp:Parameter Name="IDPRACOWNIK" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="NAZWISKO" Type="String" />
                    <asp:Parameter Name="IMIE" Type="String" />
                    <asp:Parameter Name="MIASTO" Type="String" />
                    <asp:Parameter Name="STANOWISKO" Type="String" />
                    <asp:Parameter Name="EMAIL" Type="String" />
                    <asp:Parameter Name="NR_TEL" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="NAZWISKO" Type="String" />
                    <asp:Parameter Name="IMIE" Type="String" />
                    <asp:Parameter Name="MIASTO" Type="String" />
                    <asp:Parameter Name="STANOWISKO" Type="String" />
                    <asp:Parameter Name="EMAIL" Type="String" />
                    <asp:Parameter Name="NR_TEL" Type="String" />
                    <asp:Parameter Name="IDPRACOWNIK" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
        <div class="page-grid">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="IDPRACOWNIK" DataSourceID="SqlDataSource1" ForeColor="Black" Width="100%" EnableViewState="False">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="IDPRACOWNIK" HeaderText="ID" SortExpression="IDPRACOWNIK" InsertVisible="False" ReadOnly="True" />
                    <asp:BoundField DataField="IMIE" HeaderText="IMIĘ" SortExpression="IMIE" />
                    <asp:BoundField DataField="NAZWISKO" HeaderText="NAZWISKO" SortExpression="NAZWISKO" />
                    <asp:BoundField DataField="MIASTO" HeaderText="MIASTO" SortExpression="MIASTO" />
                    <asp:BoundField DataField="STANOWISKO" HeaderText="STANOWISKO" SortExpression="STANOWISKO" />
                    <asp:BoundField DataField="EMAIL" HeaderText="E-MAIL" SortExpression="EMAIL" />
                    <asp:BoundField DataField="NR_TEL" HeaderText="NUMER TELEFONU" SortExpression="NR_TEL" />
                    <asp:CommandField ShowSelectButton="True" ButtonType="Button" >
                    <ControlStyle BackColor="#A5B1C2" BorderColor="#A5B1C2" BorderStyle="Solid" Font-Names="Calibri" Font-Size="16px" Font-Strikeout="False" ForeColor="White" />
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
        </div>
        <p>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:API_PROJEKTConnectionString %>" DeleteCommand="DELETE FROM [PRACOWNIK] WHERE [IDPRACOWNIK] = @IDPRACOWNIK" InsertCommand="INSERT INTO [PRACOWNIK] ([NAZWISKO], [IMIE], [ROK_UR], [MIASTO], [STANOWISKO], [EMAIL], [NR_TEL], [TABLICA_INFO]) VALUES (@NAZWISKO, @IMIE, @ROK_UR, @MIASTO, @STANOWISKO, @EMAIL, @NR_TEL, @TABLICA_INFO)" SelectCommand="SELECT * FROM [PRACOWNIK] WHERE ([IDPRACOWNIK] = @IDPRACOWNIK)" UpdateCommand="UPDATE [PRACOWNIK] SET [NAZWISKO] = @NAZWISKO, [IMIE] = @IMIE, [ROK_UR] = @ROK_UR, [MIASTO] = @MIASTO, [STANOWISKO] = @STANOWISKO, [EMAIL] = @EMAIL, [NR_TEL] = @NR_TEL, [TABLICA_INFO] = @TABLICA_INFO WHERE [IDPRACOWNIK] = @IDPRACOWNIK">
                <DeleteParameters>
                    <asp:Parameter Name="IDPRACOWNIK" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="NAZWISKO" Type="String" />
                    <asp:Parameter Name="IMIE" Type="String" />
                    <asp:Parameter Name="ROK_UR" Type="Int32" />
                    <asp:Parameter Name="MIASTO" Type="String" />
                    <asp:Parameter Name="STANOWISKO" Type="String" />
                    <asp:Parameter Name="EMAIL" Type="String" />
                    <asp:Parameter Name="NR_TEL" Type="String" />
                    <asp:Parameter Name="TABLICA_INFO" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="GridView1" Name="IDPRACOWNIK" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="NAZWISKO" Type="String" />
                    <asp:Parameter Name="IMIE" Type="String" />
                    <asp:Parameter Name="ROK_UR" Type="Int32" />
                    <asp:Parameter Name="MIASTO" Type="String" />
                    <asp:Parameter Name="STANOWISKO" Type="String" />
                    <asp:Parameter Name="EMAIL" Type="String" />
                    <asp:Parameter Name="NR_TEL" Type="String" />
                    <asp:Parameter Name="TABLICA_INFO" Type="String" />
                    <asp:Parameter Name="IDPRACOWNIK" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
        <div class="page-grid">
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="#D2DAE2" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="IDPRACOWNIK" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="Vertical" Height="50px" Width="80%">
                <AlternatingRowStyle BackColor="White" />
                <EditRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <EmptyDataRowStyle BackColor="#2D3436" />
                <Fields>
                    <asp:BoundField DataField="IDPRACOWNIK" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="IDPRACOWNIK" />
                    <asp:TemplateField HeaderText="IMIĘ" SortExpression="NAZWISKO">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("IMIE") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Podaj imię" Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="Imię powinno składać się z samych liter" ValidationExpression="^[A-Za-z]+$"></asp:RegularExpressionValidator>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("IMIE") %>'></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("IMIE") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="NAZWISKO" SortExpression="IMIE">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("NAZWISKO") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Podaj nazwisko" Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="Nazwisko powinno składać się z samych liter" ValidationExpression="^[A-Za-z]+$"></asp:RegularExpressionValidator>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("NAZWISKO") %>'></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("NAZWISKO") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="ROK URODZENIA" SortExpression="ROK_UR">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("ROK_UR") %>'></asp:TextBox>
                            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox6" Display="Dynamic" ErrorMessage="Zły format daty" MaximumValue="2020" MinimumValue="1900" Type="Integer"></asp:RangeValidator>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("ROK_UR") %>'></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label6" runat="server" Text='<%# Bind("ROK_UR") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="MIASTO" SortExpression="MIASTO">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("MIASTO") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Podaj miasto zamieszkania" Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="Miasto powinno składać się z samych liter" ValidationExpression="^[A-Za-z]+$"></asp:RegularExpressionValidator>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("MIASTO") %>'></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("MIASTO") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="STANOWISKO" SortExpression="STANOWISKO">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("STANOWISKO") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Podaj stanowisko"></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("STANOWISKO") %>'></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("STANOWISKO") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="E-MAIL" SortExpression="EMAIL">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("EMAIL") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="Podaj e-mail" Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox5" Display="Dynamic" ErrorMessage="Zły format maila" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("EMAIL") %>'></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("EMAIL") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="NUMER TELEFONU" SortExpression="NR_TEL">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("NR_TEL") %>'></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="TextBox7" Display="Dynamic" ErrorMessage="Numer telefonu powinien składać się z cyfr" ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("NR_TEL") %>'></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label7" runat="server" Text='<%# Bind("NR_TEL") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="TABLICA Z INFORMACJAMI" SortExpression="TABLICA_INFO">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox8" runat="server" Font-Names="Calibri" Text='<%# Bind("TABLICA_INFO") %>' TextMode="MultiLine" Width="80%"></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("TABLICA_INFO") %>'></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label8" runat="server" Text='<%# Bind("TABLICA_INFO") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
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
