<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sendmessage.aspx.cs" Inherits="sendmessage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <container>
        <form method="get" id="contactForm">
            <input class="form-control" type="hidden" name="Introduction" value="This email was sent from www.awebsite.com">
            <input class="form-control" type="hidden" name="subject" value="Awebsite.com Contact Form">
            <input class="form-control" type="hidden" name="to" value="email@awebsite.com">
                <div class="form-row">
                    <div class="col-md-6">
                        <div id="successfail"></div>
                    </div>
                </div>
                <div class="form-row">
                    <div class="col-12 col-md-6" id="message">
                        <h2 class="h4" style="color:#293034;"><i class="fa fa-envelope"></i> Contact Us<small><small class="required-input">&nbsp;(*required)</small></small>
                        </h2>
                        <div class="form-group"><label for="from-name">Name</label><span class="required-input">*</span>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text">
                                        <i class="fa fa-user-o"></i>
                                    </span>
                                </div>
                                <%--<input class="form-control" type="text" name="name" required="" placeholder="Full Name" id="from-name">--%>
                                <asp:TextBox ID="from-name" runat="server" class="form-control" required="" placeholder="Full Name"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="from-email">Email</label>
                            <span class="required-input">*</span>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text">
                                        <i class="fa fa-envelope-o"></i>
                                    </span>
                                </div>
                                <%--<input class="form-control" type="text" name="email" required="" placeholder="Email Address" id="from-email">--%>
                                <asp:TextBox ID="from-email" runat="server" class="form-control" required="" placeholder="Email Address"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-12 col-sm-6 col-md-12 col-lg-6">
                                <div class="form-group"><label for="from-phone">Phone</label><span class="required-input">*</span>
                                    <div class="input-group">
                                        <div class="input-group-prepend"><span class="input-group-text"><i class="fa fa-phone"></i></span></div>
                                        <%--<input class="form-control" type="text" name="phone" required="" placeholder="Primary Phone" id="from-phone">--%>
                                        <asp:TextBox ID="from-phone" runat="server" class="form-control" required="" placeholder="Primary Phone"></asp:TextBox>

                                    </div>
                                </div>
                            </div>
                            <div class="col-12 col-sm-6 col-md-12 col-lg-6">
                                <div class="form-group"><label for="from-calltime">Best Time to Call</label>
                                    <div class="input-group">
                                        <div class="input-group-prepend"><span class="input-group-text"><i class="fa fa-clock-o"></i></span></div><select class="form-control" name="call time" id="from-calltime"><optgroup label="Best Time to Call"><option value="Morning" selected="">Morning</option><option value="Afternoon">Afternoon</option><option value="Evening">Evening</option></optgroup></select></div>
                                </div>
                            </div>
                        </div>
                        <form action="#">
                            <p>
                              <label>
                                <%--<input name="group1" type="radio" checked />--%>
                                <span>Order Question</span>
                                  <asp:RadioButton ID="orderquest" runat="server" Checked></asp:RadioButton>
                              </label>
                            </p>
                            <p>
                              <label>
                                <asp:RadioButton ID="genquest" runat="server"></asp:RadioButton>
                                <%--<input name="group1" type="radio" />--%>
                                <span>General Question</span>
                              </label>
                            </p>
                            <p>
                              <label>
                              <asp:RadioButton ID="quote" runat="server"></asp:RadioButton>

                                <%--<input class="with-gap" name="group1" type="radio"  />--%>
                                <span>Price Quote</span>
                              </label>
                            </p>
                            <p>
                              <label>
                                  <asp:RadioButton ID="comment" runat="server"></asp:RadioButton>
                                <%--<input name="group1" type="radio" disabled="disabled" />--%>
                                <span>Comment</span>
                              </label>
                            </p>
                          </form>
                        <div class="form-group">
                            <label for="from-comments">Comments</label>
                            <%--<textarea class="form-control" rows="5" name="comments" placeholder="Enter Comments" id="from-comments"></textarea>--%>
                            <asp:TextBox ID="from-comments" runat="server" class="form-control" TextMode="MultiLine"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <div class="form-row">
                                <div class="col">
                                    <%--<button class="btn btn-primary btn-block" type="reset" style="background-color:#ffde16;">
                                        <i class="fa fa-undo"></i> Reset
                                    </button>--%>
                                    <asp:Button ID="reset" runat="server" Text="Reset" style="background-color:#ffde16;"></asp:Button>
                                </div>
                                <div class="col">
                                    <div class="modal fade" role="dialog" tabindex="-1">
                                        <div class="modal-dialog" role="document">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h4 class="modal-title">Thank you!&nbsp;</h4><button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button></div>
                                                <div class="modal-body">
                                                    <p>Thank you for contacting us! We'll get back to you as soon as we can.</p>
                                                </div>
                                                <div class="modal-footer"><button class="btn btn-light" type="button" data-dismiss="modal">Close</button><button class="btn btn-primary" type="button" style="background-color:#ffde16;">Save</button></div>
                                            </div>
                                        </div>
                                    </div>
                                    <%--<button class="btn btn-primary btn-block" type="submit" style="background-color:#ffde16;">
                                        Submit <i class="fa fa-chevron-circle-right"></i>
                                    </button>--%>
                                    <asp:Button ID="submit" runat="server" Text="Submit" style="background-color:#ffde16;"></asp:Button>

                                </div>
                            </div>
                        </div>
                        <hr class="d-flex d-md-none">
                    </div>
                </div>
            </form>
    </container>

    <form id="form1" runat="server">
        <div>
        </div>
    </form>
</body>
</html>
