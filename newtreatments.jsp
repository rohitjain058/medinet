<%@ page  import="java.sql.*" %>
<%@ page session ="true"%>
<%@ page import= "java.util.*"%>
<HTML>
<HEAD>
<%
  
    Class.forName("com.mysql.jdbc.Driver");
    String dbURL = "jdbc:mysql://localhost:3306/medicates";
    Connection con = DriverManager.getConnection(dbURL,"root","");
    Statement s=con.createStatement();
    ResultSet rs;
    String value;
%>

<meta http-equiv="Content-Language" content="en-us">
<TITLE>Latest News in Medical Field</TITLE>
<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=windows-1252">
</HEAD>
<BODY BGCOLOR=#F0F0F0 LEFTMARGIN=275 TOPMARGIN=25 MARGINWIDTH=0 MARGINHEIGHT=0>  
&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<object classid="clsid:D27CDB6E-AE6D-11CF-96B8-444553540000" id="obj1" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0" border="0" width="766" height="240">
				<param name="movie" value="images/header.swf"></param>
				<param name="quality" value="High"></param>
				<embed src="images/header.swf" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" name="obj1" width="766" height="240"></object>
				<br>
<!-- ImageReady Slices (general_for_everyone.psd) -->
			<p style="margin-top: 1px">
			<b><font size="2" face="Verdana">Latest News regarding to Treatment 
			and Disease and their proof also.</font></b><font size="2"> </font>
			</p>
			<table cellpadding="5" cellspacing="1" align =center>
	<%
		 out.println("<th>no.</th><th>disease</th><th>treatment</th><th>dosage</th><th>side effect</th>");
%>
<%
rs=s.executeQuery("SELECT * from tblproducts");
while(rs.next())
{
%>
	<font face="Verdana" size="2">
	<% String st;%>
	

	</font>
	
 	 <tr> 
    	<td height="20" width="10" bgColor= #BFBFBF>
		<font face="Verdana" size="2"><%=rs.getString(1)%></font></td>
    	<td height="20" width="138" bgColor=#6AA3D0><font face="Verdana" size="2"><%=rs.getString(2)%></font></td>
    	<td height="20" width="138" bgColor= #BFBFBF>
		<font face="Verdana" size="2"><%=rs.getString(3)%></font></td>
    	<td height="20" width="138" bgColor= #6AA3D0>
		<font face="Verdana" size="2"><%=rs.getString(4)%></font></td>
    	<td height="20" width="138" bgColor= #BFBFBF>
		<font face="Verdana" size="2"><%=rs.getString(5)%></font></td>
    		<%
	}
	%>
  </tr>
</table>

<!-- End ImageReady Slices -->
</BODY>
</HTML>