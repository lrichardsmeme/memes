<%@ Import Namespace="System" %>
<%@ Page Language="C#" %>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
<script runat="server">
  public string ServerSideFunction(string input)
  {
    return "Hello " + input;
  }
</script>
<form id="form1" runat="server">
    <div>
        <table>
            <tr><td>&nbsp;</td><td><h1 align="left">PowerShell Command Harness</h1></td></tr>
            <tr><td>&nbsp;</td><td>&nbsp;</td></tr>
            <tr><td>&nbsp;</td><td>PowerShell Command</td></tr>
            <tr><td>
                <br />
                </td><td>
                <asp:TextBox ID="Input" runat="server" TextMode="MultiLine" Width="433px" Height="73px" ></asp:TextBox>
            </td></tr>
            <tr><td>
                &nbsp;</td><td>
<% string pagevariable = "World"; %>
                <asp:Button ID="ExecuteCode" Text="Execute" Width="200" onclick="<% =ServerSideFunction(pagevariable) %>" />
            </td></tr>
                <tr><td>&nbsp;</td><td><h3>Result</h3></td></tr>
                <tr><td>
                    &nbsp;</td><td>
                    <asp:TextBox ID="ResultBox" TextMode="MultiLine" Width="700" Height="200" runat="server"></asp:TextBox>
                </td></tr>
        </table>
    </div>
</form>
</body>
</html>
