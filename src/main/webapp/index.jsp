<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1" import="java.net.InetAddress,java.util.Date"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%out.print("index 12345678...."+new Date()); 
	InetAddress addr = InetAddress.getLocalHost();
	String ip=addr.getHostAddress().toString();//获得本机IP
	String hostName=addr.getHostName().toString();//获得本机名称 
	 out.println("ip:"+ip+",hostName:"+hostName);
	System.out.println("sysout log print....");
	%>
</body>
</html>