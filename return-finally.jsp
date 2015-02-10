
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->

<head>
	<meta charset="utf-8">
	<title>return-finally in java</title>
	<meta name="keywords" content="return vs finally block in Java, what  happends returns writes in try block,return in try block,what will happends if the system.exit(0); write in try block,System.exit(0) in try block,"> 
	<meta name="description" content="inally block dominates the return statement also. Hence, if there is any return statement present inside try or catch block,first finally block will be executed and then return statement will be executed.">
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
		<h1 class="h1">return vs finally block in Java</h1>
		<p class="p">finally block dominates the return statement also. Hence, if there is any return statement present inside try or catch block,<b>first finally block will be executed and then return statement will be executed.</b></p>
		<br>
		<h5>Example:</h5>
		<pre class="brush:java">
		public class Test
		{
			public static void main(String args[])
			{
				try
				{
					System.out.println("Try");
					return;
				}
				catch(Exception e)
				{
					e.printStackStrac();
				}
				finally
				{
					System.out.println("finally");
					
				}
			}
		}
		</pre>
<h5>Output:</h5>
<pre class="p1">
	Try
	finally
</pre>
		<p class="p"><b>The finally block won't be executed if the system it self exists(JVM shutdown) i.e in the case of
System.exit() finally block won't be executed.</b>
<pre class="brush:java">
	public class Test
		{
			public static void main(String args[])
			{
				try
				{
					System.out.println("Hi");
					System.exit(0);
				}
				catch (ArithmeticException e)
				{
					System.out.println("catch");
				}
				finally
				{
					System.out.println("finally");
				}
			}
		}
</pre>
<h5>Output:</h5>
<pre class="p1">
	hi
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