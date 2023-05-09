<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Database.aspx.cs" Inherits="Contact_Form.Database" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="gv" runat="server" AutoGenerateColumns="false">
                <Columns>
                    <asp:BoundField DataField="Email" HeaderText="Email"/>
                    <asp:BoundField DataField="Subject" HeaderText="Subject"/>
                    <asp:BoundField DataField="FirstName" HeaderText="First Name"/>
                    <asp:BoundField DataField="LastName" HeaderText="Last Name"/>
                    <asp:BoundField DataField="Message" HeaderText="Message"/>
                </Columns>
            </asp:GridView>

     <div class="row">
         <div class="col-md-8 col-md-offset-2">
             <div class="form-group">

                 <div class="deleteBlock">
                    <asp:Label Text="Id" runat="server" />
                    <asp:TextBox ID="txt_idForDelete" runat="server" Enabled ="true" CssClass="form-control input-sm" placeholder="Last Name"/>
                    <asp:Button Text="Delete" ID="btn_Delete" CssClass="btn btn-primary" Width="167px" runat="server" onClick="btnDelete_Click"/>
                 </div>
                
                 <br />

                  <asp:Label Text="Id" runat="server" />
                 <asp:TextBox ID="txt_idForUpdate" runat="server" Enabled ="true" CssClass="form-control input-sm" placeholder="First Name"/>

                 <asp:Label Text="First Name" runat="server" />
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_firstName" ErrorMessage="First Name is required" ForeColor="Red"></asp:RequiredFieldValidator>
                 <asp:TextBox ID="txt_firstName" runat="server" Enabled ="true" CssClass="form-control input-sm" placeholder="First Name"/>

                 <asp:Label Text="Last Name" runat="server" />
                                        <asp:TextBox ID="txt_lastName" runat="server" Enabled ="true" CssClass="form-control input-sm" placeholder="Last Name"/>

                 <asp:Label Text="Subject" runat="server" />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_subject" ErrorMessage="Subject is required" ForeColor="Red"></asp:RequiredFieldValidator>
                                        <asp:TextBox ID="txt_subject" runat="server" Enabled ="true" CssClass="form-control input-sm" placeholder="Subject"/>

                  <asp:Label Text="Email" runat="server" />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_email" ErrorMessage="Email is required" ForeColor="Red"></asp:RequiredFieldValidator>
                                        <asp:TextBox ID="txt_email" runat="server" Enabled ="true" CssClass="form-control input-sm" placeholder="Email"/>


                 <asp:Label Text="Message" runat="server" />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_message" ErrorMessage="Message is required" ForeColor="Red"></asp:RequiredFieldValidator>
                                        <asp:TextBox ID="txt_message" runat="server" Enabled ="true" TextMode="MultiLine" Rows="4" placeholder="Email" Height="71px" Width="1427px" />

                 <asp:Button Text="Update" ID="btn_Update" CssClass="btn btn-primary" Width="200px" runat="server" onClick="btnUpdate_Click"/>
              </div>
         </div>
        </div>
</asp:Content>
