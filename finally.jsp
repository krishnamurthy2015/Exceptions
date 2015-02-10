
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->

<head>
	<meta charset="utf-8">
	<title>finally block in java</title>
	<meta name="keywords" content="finally block in java,what is the use of final block,example program for final block"> 
	<meta name="description" content="We required a block to maintain cleanup code which should execute always irrespective of whether the exception is raised or not whether it is handled or not , such block is nothing but finally block">
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
		<h1 class="h1">Finally block in Java</h1>
		<p class="p"><b>It is not recommended to place cleanup code inside try statement</b> because there is no guarantee for
execution of all statements inside try block.</p>
<p class="p">It is not recommended to maintain cleanup code with in the catch block because if there is no execution the
catch blocks won't be executed</p>
<p class="p">We required a block to maintain cleanup code which should execute always irrespective of whether the
exception is raised or not whether it is handled or not , such block is nothing but <b>"finally block"."</b><br>
Hence the main objective of finally block is to maintain cleanup code.</p>
<h5>Syntax</h5>
<pre class="brush:java">
try
{
	//open the database connection
	//read the data
}
catch (Exception e)
{
}
finally
{
	//Cleanup code
}
</pre>
	
<h4>Example1:</h4>
<pre class="brush:java">
try
{
	System.out.println("try");
}
catch (ArithmeticException e)
{
	System.out.println("catch");
}
finally
{
	System.out.println("finally");
}
</pre>
<h5>Output</h5>
<pre class="p1">
O/P: try
finally
Normal Termination
</pre>
<h4>Example2:</h4>
<pre class="brush:java">
try
{
	System.out.println(10/0);
}
catch (ArithmeticException e)
{
	System.out.println("catch");
}
finally
{
	System.out.println("finally");
}
</pre>
<h5>Output</h5>
<pre class="p1">
O/P: catch
	finally
	Normal Termination
</pre>
<h4>Example3:</h4>
<pre class="brush:java">
try
{
	System.out.println(10/0);
}
catch (NullPointerException e)
{
	System.out.println("catch");
}
finally
{
	System.out.println("finally");
}
</pre>
<h5>Output</h5>
<pre class="p1">
O/P: 
	finally
	abnormal Termination
</pre>
<h4>Note:</h4>
<p class="p">Hence finally block should always execute irrespective of whether the execution is raised or not raised or
handled or not handled.</p>


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