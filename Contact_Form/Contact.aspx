<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Contact_Form.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   
    <section id ="main-content">
        <section id ="wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                            <div class="col-md-4 col-md-offset-4">
                                <h1>Contact Form</h1>
                                <h3>
                                    <asp:Label ID="confirm" Text="" runat="server" />

                                </h3>
                            </div>
                        </header>

                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                        <asp:Label Text="First Name" runat="server" />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_firstName" ErrorMessage="First Name is required" ForeColor="Red"></asp:RequiredFieldValidator>
                                        <asp:TextBox ID="txt_firstName" runat="server" Enabled ="true" CssClass="form-control input-sm" placeholder="First Name"/>
                                    </div>
                                </div>

                                <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                        <asp:Label Text="Last Name" runat="server" />
                                        <asp:TextBox ID="txt_lastName" runat="server" Enabled ="true" CssClass="form-control input-sm" placeholder="Last Name"/>
                                    </div>
                                </div>
                            </div>


                            <div class="row">
                                <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                        <asp:Label Text="Subject" runat="server" />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_subject" ErrorMessage="Subject is required" ForeColor="Red"></asp:RequiredFieldValidator>
                                        <asp:TextBox ID="txt_subject" runat="server" Enabled ="true" CssClass="form-control input-sm" placeholder="Subject"/>
                                    </div>
                                </div>

                                <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                        <asp:Label Text="Email" runat="server" />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_email" ErrorMessage="Email is required" ForeColor="Red"></asp:RequiredFieldValidator>
                                        <asp:TextBox ID="txt_email" runat="server" Enabled ="true" CssClass="form-control input-sm" placeholder="Email"/>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                        <asp:Label Text="Message" runat="server" />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_message" ErrorMessage="Message is required" ForeColor="Red"></asp:RequiredFieldValidator>
                                        <asp:TextBox ID="txt_message" runat="server" Enabled ="true" TextMode="MultiLine" Rows="4" placeholder="Email" Height="71px" Width="1386px" />

                                    </div>
                                </div>
                              </div>

                            <div class="row">
                                <div class="col-md-8 col-md-offset-2">
                                    <div class="form-group">
                                        <asp:Button Text="Contact" ID="btn_Contact" CssClass="btn btn-primary" Width="200px" runat="server" onClick="btnContact_Click"/>

                                    </div>
                                </div>
                              </div>

                            </div>
                        </div>
                    </section>
                </div>
            </div>
        </section>

    </section>
</asp:Content>
