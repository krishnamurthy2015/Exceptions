
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->

<head>
	<meta charset="utf-8">
	<title>throw keyword</title>
	<meta name="keywords" content="throw keyword in java,use of throw keyword,throw,example for throw"> 
	<meta name="description" content="Some time we can create Exception Object manually and handover that Object to the JVM explicitly by using throw keyword">
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
		<h1 class="h1">Throw keyword in java</h1>
<p class="p">Some time we can create Exception Object manually and handover that Object to the JVM explicitly by using throw keyword</p>
<h5>Syntax:</h5>
<pre class="brush:java">
		
		throw new ArithematicException("/by Zero");
		
		//Here throw is handover our created Exception to the JVM manually
		
		//rest of the part creation of ArithmaticException Object Explicitly
	</pre>
	<h4>Example:</h4>
	<pre class="brush:java">
	class Test
	{
		public static void main(String arg[])
		{
		System.out.println(10/0);
		}
	}
	
	</pre>	
	<p>Here in first case <b>main method is responsible</b> for the creation of exception object and hand - over that object
to the JVM.</p>
<pre class="brush:java">
class Test
{
	public static void main(String arg[])
	{
		throw new ArithmeticException ("/ by zero...!");
	}
}
</pre>
<p class="p">In the second case we created object explicitly and hand - over that object to the JVM programmatically by
<b>throw keyword.</b></p>
<p class="p"><b>In General we can use throw keyword for customized Exceptions</b>
<h1 class="h1">Rules for throw keyword</h1>
<ol class="p">
<li>After throw keyword we are not allowed to place any statements directly other wise compile time error.
<pre class="brush:java">
class Test
{
	public static void main(String arg[])
	{
		throw new ArithmeticException();
		System.out.println("After throw statement...!");
	}
}
</pre>
<h5>output:</h5>
<pre class="p1">
Test.java:6: error: unreachable statement
System.out.println("After throw statement...!");
^
1 error
</pre>
</li>

</ol>

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