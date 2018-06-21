<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 13px;
        }
        .auto-style4 {
            margin-left: 16px;
        }
        .auto-style5 {
            margin-left: 14px;
        }
        .auto-style6 {
            margin-left: 10px;
        }
        .auto-style7 {
            margin-left: 8px;
        }
        .auto-style8 {
            margin-left: 47px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="Generated Secret :"></asp:Label>
        <asp:TextBox ID="txtGeneratedSecret" runat="server" CssClass="auto-style1" ReadOnly="True" Width="423px"></asp:TextBox>
        <asp:Button ID="btnGenerateSecret" runat="server" CssClass="auto-style5" OnClick="btnGenerateSecret_Click" Text="Generate" />
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Input Secret :"></asp:Label>
        <asp:TextBox ID="txtEnteredSecret" runat="server" CssClass="auto-style8" Width="426px"></asp:TextBox>
        <br />
        <asp:Label ID="Label3" runat="server" Text="Generated TOTP :"></asp:Label>
        <asp:TextBox ID="txtTOTPCode" runat="server" CssClass="auto-style6" Width="423px"></asp:TextBox>
        <asp:Button ID="btnCreateTOTP" runat="server" CssClass="auto-style4" OnClick="btnCreateTOTP_Click" Text="Create TOTP" Width="101px" />
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="Check time before TOTP code expiry :"></asp:Label>
        <asp:Button ID="btnCheckTiming" runat="server" CssClass="auto-style7" OnClick="btnCheckTiming_Click" Text="Check" />
    
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Text="Confirm TOTP :"></asp:Label>
        <asp:TextBox ID="txtConfirmTotp" runat="server"></asp:TextBox>
        <asp:Button ID="btnConfirm" runat="server" OnClick="btnConfirm_Click" Text="Confirm" />
    
    </div>
    </form>
</body>
</html>
