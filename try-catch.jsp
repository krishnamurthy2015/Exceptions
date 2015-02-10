
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->

<head>
	<meta charset="utf-8">
	<title>try-catch</title>
	<meta name="keywords" content="Exception Handling By Using try and catch, try and catch controlflow, how to use try and catch,Control Flow in try, catch"> 
	<meta name="description" content="We have to place the risky(Business logic Or sensitive) code inside the try block and the corresponding exception handling code inside
catch block.">
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
		<h1 class="h1">Exception Handling By Using try ,catch</h1>
		<p class="p">We have to place the risky(Business logic Or sensitive) code inside the try block and the corresponding exception handling code inside
catch block.</p>
<h5>Syntax:</h5>
<pre class="brush:java">
try
{
//Business Logic
}
catch(Exception e)
{
//Exception handling code
}
</pre>
<h5>Example:</h5>
<pre class="brush:java">
public class ExceptinTest
{
	public static void main(String arg[])
	{
	System.out.println("Statement 1");
	try
	{
		System.out.println(10/0);
	}
	catch(ArithmeticException e)
	{
	System.out.println("Exception occur in try block: "+10/2);
	}
		System.out.println("Statement 2");
	}
}

</pre>
<h5>OUTPUT:</h5>
<pre >
Statement 1
Exception occur in try block: 5
Statement 2

</pre>
<h4>NOTE:</h4>
<p class="p">With in the try block if any where an exception raised then rest of try block won't be executed even though we handled that Exception.<br>
If an exception raised at any statement which is not part of  try, then it is always Abnormal Termination</p>
<h1 class="h1">Control Flow in try, catch</h1>
<pre class="brush:java">
try
{
	statement 1;
	statement 2;
	statement 3;
}
catch (X e)
{
	statement 4;
}
statement 5;
</pre>
<p class="p"><b>Case1:</b>If there is no exception
1,2,3,5 normal termination.</p>
<p class="p"><b>Case2:</b>If there is an exception raised at statement 2 and the corresponding catch block matched.
1,4,5 normal termination.</p>
<p class="p"><b>Case3:</b> If an exception raised at statement 2 but the corresponding catch block is not matched
1 Abnormal termination.</p>
<p class="p"><b>Case4:</b> If an exception raised at statement 4 or statement 5 it is always abnormal termination.</p>
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