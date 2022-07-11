<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="EmployeeManagement.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .Border {
            margin: auto;
            width: 35%;
        }

        .AddEmployeeButton {
            margin-left: 920px;
        }

        .modal {
            display: none; /* Hidden by default */
            position: fixed; /* Stay in place */
            z-index: 1; /* Sit on top */
            padding-top: 100px; /* Location of the box */
            left: 0;
            top: 0;
            width: 100%; /* Full width */
            height: 100%; /* Full height */
            overflow: auto; /* Enable scroll if needed */
            background-color: rgb(0,0,0); /* Fallback color */
            background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
        }

        /* Modal Content */
        .modal-content {
            background-color: #fefefe;
            margin: auto;
            padding: 20px;
            border: 1px solid #888;
            width: 50%;
        }

        /* The Close Button */
        .close {
            color: #aaaaaa;
            float: right;
            font-size: 15px;
            font-weight: bold;
        }

            .close:hover,
            .close:focus {
                color: #000;
                text-decoration: none;
                cursor: pointer;
            }

        .AddEmployeePopup {
            margin: auto;
            line-height: 40px;
        }
    </style>
</head>
    
<body>
    <form id="form1" runat="server">
        <div>
            <table class="Border">
                <tr>
                    <td>
                        <label>Employee Name:</label><asp:TextBox runat="server"></asp:TextBox></td>
                    <td>
                        <label>Role:</label><asp:DropDownList runat="server">
                            <asp:ListItem>HR</asp:ListItem>
                            <asp:ListItem>Admin</asp:ListItem>
                            <asp:ListItem>IT</asp:ListItem>
                        </asp:DropDownList></td>
                    <td>
                        <asp:Button runat="server" Text="Search" /></td>
                </tr>
            </table>
            <br />
            <br />
            <asp:Button runat="server" Text="Add New Employee" CssClass="AddEmployeeButton" OnClick="AddNewEmployeePopup" />
<%--            Add New employee popup content--%>
            <div id="myModal" class="modal" runat="server">

                <!-- Modal content -->
                <div class="modal-content">
                    <asp:Button runat="server" class="close" Text="&times;" OnClick="ClosePopup" />
                    <br />
                    <br />
                    <table class="AddEmployeePopup">
                        <tr>
                            <td>
                                <label>EmpName: </label>
                            </td>
                            <td>
                                <asp:TextBox runat="server"></asp:TextBox>

                            </td>
                            <td>
                                <label>LoginID: </label>
                            </td>
                            <td>
                                <asp:TextBox runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>Contact: </label>
                            </td>
                            <td>
                                <asp:TextBox runat="server"></asp:TextBox>
                            </td>
                            <td>
                                <label>Gender: </label>
                            </td>
                            <td>
                                <asp:DropDownList runat="server">
                                    <asp:ListItem>Male</asp:ListItem>
                                    <asp:ListItem>Female</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>Email: </label>
                            </td>
                            <td>
                                <asp:TextBox runat="server"></asp:TextBox>
                            </td>
                            <td>

                                <label>Roles: </label>
                            </td>
                            <td>
                                <asp:DropDownList runat="server">
                                    <asp:ListItem>HR</asp:ListItem>
                                    <asp:ListItem>Admin</asp:ListItem>
                                    <asp:ListItem>IT</asp:ListItem>
                                </asp:DropDownList>
                            </td>

                        </tr>
                        <tr>
                            <td>
                                <label>Salary: </label>
                            </td>
                            <td>
                                <asp:TextBox runat="server"></asp:TextBox>
                            </td>
                            <td>

                                <label>Status: </label>
                            </td>
                            <td>
                                <asp:DropDownList runat="server">
                                    <asp:ListItem>Active</asp:ListItem>
                                    <asp:ListItem>InActive</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>Resignation Date: </label>
                            </td>
                            <td>
                                <input type="date" runat="server" />
                            </td>
                        </tr>
                       

                    </table>
                    <table class="AddEmployeePopup">
                     <tr>
                            <td>
                                <asp:Button Text="Submit" runat="server" />
                            </td>
                              <td>
                                <asp:Button Text="Cancel" runat="server" OnClick="ClosePopup" />
                            </td>
                        </tr>
                        </table>
                </div>

            </div>

            <asp:GridView runat="server"></asp:GridView>
        </div>
    </form>
</body>
</html>
