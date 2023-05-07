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
                            </div>
                        </header>

                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                        <asp:Label Text="First Name" runat="server" />
                                        <asp:TextBox runat="server" Enabled ="true" CssClass="form-control input-sm" placeholder="First Name"/>
                                    </div>
                                </div>

                                <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                        <asp:Label Text="Second Name" runat="server" />
                                        <asp:TextBox runat="server" Enabled ="true" CssClass="form-control input-sm" placeholder="Second Name"/>
                                    </div>
                                </div>
                            </div>


                            <div class="row">
                                <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                        <asp:Label Text="Subject" runat="server" />
                                        <asp:TextBox runat="server" Enabled ="true" CssClass="form-control input-sm" placeholder="Subject"/>
                                    </div>
                                </div>

                                <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                        <asp:Label Text="Email" runat="server" />
                                        <asp:TextBox runat="server" Enabled ="true" CssClass="form-control input-sm" placeholder="Email"/>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                        <asp:Label Text="Message" runat="server" />
                                        <textarea CssClass="form-control input-sm" placeholder="Message"></textarea>

                                    </div>
                                </div>
                              </div>

                            <div class="row">
                                <div class="col-md-8 col-md-offset-2">
                                    <div class="form-group">
                                        <asp:Button Text="Contact" ID="btnContact" CssClass="btn btn-primary" Width="200" runat="server" />

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
