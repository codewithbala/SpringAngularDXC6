
<jsp:directive.page  import="java.util.*"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	Hello World.. From index.jsp <br>
	Today's date and time is: 
	<jsp:scriptlet> 
		int x = 10;
		Date date = new Date();
	</jsp:scriptlet>
	<% int num2 = 2000; %>// scriptlet
	<jsp:expression>date </jsp:expression>
	<br> The value of x is: 
	<jsp:expression>x </jsp:expression>
	<h2>
	<%= date %>
	</h2>
	<br><p>The Value of num2 is </p>
	 <%= num2 %> // expression
	 <%! 
	 	public int sum(int num1, int num2){
			 return num1+num2;
	 } %> 
	 <h1>
	 	<% out.println("The Result is: "+ sum(100,200)); %>
	 </h1>
	 <h1>
	 <% int num3 = 200;
	 	int num4 = 500;
	 	if(num3 > num4){
	 		out.println(num3 +" is greater than "+num4);
	 	}else{
	 		out.println(num4 +" is greater than "+num3);
	 	}		
	 %>
	  </h1>
	 
	 <%! int myNum = 100; %>
	 <%= myNum %>
	 <%  int myNum = 200; %>
	 <%= myNum %>
	 <% out.println("<br> a(scriptlet) value is  : "+myNum); 
	 	out.println("<br> a(declarative) value is: "+this.myNum);
	 %>
	 <%
	 	String firstStr  = "I Love Coding ";
	 	String secondStr = " using Java";
	 %>
	 <h2>
	 <p>
	 	Concatenation of Strings: <%= firstStr.concat(secondStr) %>
	 </p>
	 <p>	
	 	Checking Equality		: <%= firstStr.equalsIgnoreCase(secondStr) %>
	 </p>
	 </h2>
	 
</body>
</html>