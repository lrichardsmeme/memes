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
<% string pagevariable = "World"; %>
    <div>
        <table>
	<h3> A button </h3>
                <asp:Button ID="ExecuteCode" Text="Execute" Width="200" onclick="<% =ServerSideFunction(pagevariable) %>" />
        </table>
    </div>
</form>
</body>
</html>
