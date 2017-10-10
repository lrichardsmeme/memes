<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    void GreetingBtn_Click(Object sender,
                           EventArgs e)
    {
        // When the button is clicked,
        // change the button text, and disable it.

        Button clickedButton = (Button)sender;
        clickedButton.Text = "...button clicked...";
        clickedButton.Enabled = false;

        // Display the greeting label text.
	var shell = PowerShell.Create();
	shell.Commands.AddScript("get-host");
	var results = shell.Invoke();
	return results;
    }

</script>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
      <h3>Simple Button Example</h3>

      <asp:Button id="Button1"
           Text="Click here for greeting..."
           OnClick="GreetingBtn_Click" 
           runat="server"/>
      <br />
      <br />
      <asp:Label ID="GreetingLabel" runat="server" 
                 Visible="false" Text="Hello World!" />
    </div>
    </form>
</body>
</html>
