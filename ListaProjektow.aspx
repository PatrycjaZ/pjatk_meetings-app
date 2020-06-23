<%@ Page Title="" Language="C#" MasterPageFile="~/SzablonStrony.Master" AutoEventWireup="true" CodeBehind="ListaProjektow.aspx.cs" Inherits="spotkania_biuro.ListaProjektow" %>
<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="page-content">
        <h3 class="page-header">LISTA PROJEKTÓW</h3>
        <p>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:API_PROJEKTConnectionString %>" SelectCommand="SELECT [PROJEKT], [OPIS], [DEADLINE], [PRIORYTET], [IDPROJEKT] FROM [PROJEKT]" DeleteCommand="DELETE FROM [PROJEKT] WHERE [IDPROJEKT] = @IDPROJEKT" InsertCommand="INSERT INTO [PROJEKT] ([PROJEKT], [OPIS], [DEADLINE], [PRIORYTET]) VALUES (@PROJEKT, @OPIS, @DEADLINE, @PRIORYTET)" UpdateCommand="UPDATE [PROJEKT] SET [PROJEKT] = @PROJEKT, [OPIS] = @OPIS, [DEADLINE] = @DEADLINE, [PRIORYTET] = @PRIORYTET WHERE [IDPROJEKT] = @IDPROJEKT">
                <DeleteParameters>
                    <asp:Parameter Name="IDPROJEKT" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="PROJEKT" Type="String" />
                    <asp:Parameter Name="OPIS" Type="String" />
                    <asp:Parameter DbType="Date" Name="DEADLINE" />
                    <asp:Parameter Name="PRIORYTET" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="PROJEKT" Type="String" />
                    <asp:Parameter Name="OPIS" Type="String" />
                    <asp:Parameter DbType="Date" Name="DEADLINE" />
                    <asp:Parameter Name="PRIORYTET" Type="Int32" />
                    <asp:Parameter Name="IDPROJEKT" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>

        </p>
        <div class="page-grid">

            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" Width="100%" DataKeyNames="IDPROJEKT" EnableViewState="False">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="IDPROJEKT" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="IDPROJEKT" />
                    <asp:BoundField DataField="PROJEKT" HeaderText="NAZWA PROJEKTU" SortExpression="PROJEKT" />
                    <asp:BoundField DataField="OPIS" HeaderText="OPIS" SortExpression="OPIS" />
                    <asp:TemplateField HeaderText="DEADLINE" SortExpression="DEADLINE">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" AutoPostBack="True" Text='<%# Bind("DEADLINE") %>' TextMode="Date"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("DEADLINE", "{0:d}") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="PRIORYTET" HeaderText="PRIORYTET" SortExpression="PRIORYTET" />
                    <asp:CommandField ShowSelectButton="True" NewText="" ButtonType="Button" >
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
        </div>
        <br />
        <p>

            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:API_PROJEKTConnectionString %>" DeleteCommand="DELETE FROM [PROJEKT] WHERE [IDPROJEKT] = @IDPROJEKT" InsertCommand="INSERT INTO [PROJEKT] ([PROJEKT], [OPIS], [DEADLINE], [PRIORYTET]) VALUES (@PROJEKT, @OPIS, @DEADLINE, @PRIORYTET)" SelectCommand="SELECT * FROM [PROJEKT] WHERE ([IDPROJEKT] = @IDPROJEKT)" UpdateCommand="UPDATE [PROJEKT] SET [PROJEKT] = @PROJEKT, [OPIS] = @OPIS, [DEADLINE] = @DEADLINE, [PRIORYTET] = @PRIORYTET WHERE [IDPROJEKT] = @IDPROJEKT">
                <DeleteParameters>
                    <asp:Parameter Name="IDPROJEKT" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="PROJEKT" Type="String" />
                    <asp:Parameter Name="OPIS" Type="String" />
                    <asp:Parameter DbType="Date" Name="DEADLINE" />
                    <asp:Parameter Name="PRIORYTET" Type="Int32" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="GridView1" Name="IDPROJEKT" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="PROJEKT" Type="String" />
                    <asp:Parameter Name="OPIS" Type="String" />
                    <asp:Parameter DbType="Date" Name="DEADLINE" />
                    <asp:Parameter Name="PRIORYTET" Type="Int32" />
                    <asp:Parameter Name="IDPROJEKT" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>

        </p>
        <div class="page-grid">
            <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="80%" AutoGenerateRows="False" BackColor="#D2DAE2" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="IDPROJEKT" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="Vertical">
                <AlternatingRowStyle BackColor="White" />
                <EditRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <Fields>
                    <asp:BoundField DataField="IDPROJEKT" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="IDPROJEKT" />
                    <asp:TemplateField HeaderText="NAZWA PROJEKTU" SortExpression="PROJEKT">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("PROJEKT") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="Podaj nazwę projektu"></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("PROJEKT") %>'></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("PROJEKT") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="OPIS" SortExpression="OPIS">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Font-Names="Calibri" Text='<%# Bind("OPIS") %>' TextMode="MultiLine" Width="80%"></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("OPIS") %>'></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("OPIS") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="DEADLINE" SortExpression="DEADLINE">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Font-Names="Calibri" Text='<%# Bind("DEADLINE") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("DEADLINE", "{0:d}") %>'></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("DEADLINE", "{0:d}") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="PRIORYTET" SortExpression="PRIORYTET">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("PRIORYTET") %>'></asp:TextBox>
                            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox4" ErrorMessage="Skala od 1 do 5" MaximumValue="5" MinimumValue="1" Type="Integer"></asp:RangeValidator>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("PRIORYTET") %>'></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("PRIORYTET") %>'></asp:Label>
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
