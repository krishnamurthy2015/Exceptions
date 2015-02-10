
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->

<head>
	<meta charset="utf-8">
	<title>Nested try</title>
	<meta name="keywords" content="nested try block in java,nested try,Example program for Nested try block?,write a java program for nested try block?"> 
	<meta name="description" content="The way of handling exception is varied from exception to exception. For every exception type we should define corresponding catch blocks, hence try with multiple catch blocks is possible.">
	<meta name="author" content="krishna murthy">
	
	<!-- Mobile Specific Meta -->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

	<!-- Stylesheets -->
	<link rel="stylesheet" href="/css/bootstrap.css" />
	<link rel="stylesheet" href="/css/bootstrap-responsive.css" />
	<link rel="stylesheet" href="/css/custom.css" />
	<link rel="stylesheet" href="/css/jquery.mobile-1.3.1.css"/>
	<link rel="shortcut icon" href="/images/TLC-logo.png" type="image/x-icon">	

	<!-- Synatax -->
	
	<link href='/css/shCore.css' rel='stylesheet' type='text/css'>
   <link href='/css/shThemeDefault.css' rel='stylesheet' type='text/css'>
   <link href='/css/shCoreDefault.css' rel='stylesheet' type='text/css'>
   <script src='/js/shCore.js' type='text/javascript'></script>
   <script src='/js/shAutoloader.js' type='text/javascript'></script>
   <script src='/js/shBrushJava.js' type='text/javascript'></script>
     <script type="text/javascript">
     SyntaxHighlighter.all()
    </script>
	
	<!--[if lt IE 9]>
		<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->
		<!-- Google analytics -->
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-53799001-1', 'auto');
  ga('send', 'pageview');

</script>
</head>
<body>
<%@include file="/java/jheader.jsp" %>
<!-- Container -->
<div class="container">

<%@include file="/java/Jpageheader.jsp" %>

<div class="row">
	<div class="span2.1">
		<%@include file="/java/corejava/Exceptions/E-LeftNav.jsp" %>
	</div>
	
	<div class="span9">	
	
		<div class="btn-group">
			<a href="" class="btn btn-success btn-danger">&laquo; Previous</a>
		</div>
		<div class="pull-right"> 
			<a href="" class="btn btn-success btn-danger">Next Chapter &raquo; </a>
		</div>
<h1 class="h1">Nested try block- Exception handling</h1>
<p class="p">The try statement can be nested. <b>That is, a try statement can be inside the block of another try is call a Nested try</b>.<br><br>
Each time a <b>try statement</b> is entered, the context of that exception is pushed on the stack. If an
inner try statement does not have a <b>catch</b> handler for a particular exception, the stack is
unwound and the next <b>try</b> statement's <b>catch</b> handlers are inspected for a match. <br><br>This continues
until one of the catch statements succeeds, or until all of the nested try statements are exhausted.</p>
<h4 class="q"><b>Syntax</b></h4>
<pre class="brush:java">
//Main try block
try
{
   statement 1;
   statement 2;
   //try-catch block inside another try block
   try
   {
      statement 3;
      statement 4;
   }
   catch(Exception e1)
   {
       //Exception Message
   }
   //try-catch block inside another try block
   try
   {
       statement 5;
       statement 6;
   }
   catch(Exception e2)
   {
       //Exception Message
   }
}
catch(Exception e3) //Catch of Main(parent) try block
{
      //Exception Message
}
....	
</pre>
<h4 class="p1">Example program for Nested try block?</h4>
<pre class="brush:java">
lass NestedExceptionDemo
{  
 public static void main(String args[])
 {  
  try
  {  
    try
    {  
     System.out.println("divided rule");  
     int b =10/0;  
    }
    catch(ArithmeticException e)
    {
    	System.out.println(e);
    }  
   
    try
    {  
	    int a[]=new int[5];  
	    a[5]=4;  
    }
    catch(ArrayIndexOutOfBoundsException e)
    {
    	System.out.println(e);
    }  
     
    System.out.println("other statement");  
  }
  catch(Exception e)
  {
  System.out.println("handeled");
  }  
  System.out.println("normal flow..");  
 }  
}  

</pre>
<h4>Output</h4>
<pre class="p">
divided rule
java.lang.ArithmeticException: / by zero
java.lang.ArrayIndexOutOfBoundsException: 5
other statement
normal flow..

</pre>
<h4 class="p1">Example2</h4>
<pre class="brush:java">
public class ExceptionExample {

    public static void main(String argv[]) {

     int num1 = 10;
     int num2 = 0;
     int result = 0;
     int arr[] = new int[5];

	try {
	     try {
	     arr[5] = 5;
	}catch (ArrayIndexOutOfBoundsException e) {
	System.out.println("Err: Array Out of Bound");
	}    

	try {
	     result = num1 / num2;
	}catch (ArithmeticException e) {
	     System.out.println("Err: Divided by Zero");
	}
	System.out.println("Result of Division : " + result);

   }catch (Exception e) {
        System.out.println("Exception Occured !");
   }

  }
}

</pre>
<h4>Output</h4>
<pre>Err: Array Out of Bound
Err: Divided by Zero
Result of Division : 0
</pre>

	<hr>
			<div class="btn-group">
				<a href="" class="btn btn-success btn-danger">&laquo; Previous</a>
			</div>
			<div class="pull-right"> 
				<a href="" class="btn btn-success btn-danger">Next Chapter &raquo; </a>
			</div> 
	</div>

</div>

</div><!-- End of container -->

<%@include file="/footer.jsp" %>
</body>
</html>