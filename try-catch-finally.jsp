
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->

<head>
	<meta charset="utf-8">
	<title>try-catch-finally</title>
	<meta name="keywords" content="try - catch - finally Control flow in Java,Nested try - catch - finally Control flow in Java"> 
	<meta name="description" content="this page will explain you try - catch - finally Control flow in Java,Nested try - catch - finally Control flow in Java">
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
		<h1 class="h1">try - catch - finally Control flow in Java</h1>
		<p class="p">The following program will demonstrates the control flow in different cases.</p>
<h5>Ex:</h5>
<pre class="brush:java">
class ExceptionDemo
{
	public static void main(String arg[])
	{
		try
		{
			statement1;
			statement2;
			statement3;
		}
		catch (X e)
		{
			statement4;
		}
		finally
		{
			statement5;
		}
		statement6;
	}
}
</pre>
<h4>Explanation</h4>
<p class="p">
<b>Case1:</b><br> If there is no exception, then the statements 1, 2, 3, 5, 6 will execute with normal termination.<br>
<b>Case2:</b><br> If an exception raised at statement-2 and the corresponding catch block matched, then the
statements 1, 4, 5, 6 will execute with normal termination.</p><br>
<b>Case3:</b><br> If an exception raised at statement-2 but the corresponding catch block not matched then the
statements 1, 5, 6 will execute with abnormal termination.<br>
<b>Case4:</b><br> If an exception raised at statement-2 and while executing the corresponding catch block at
statement-4 an exception raised then the statements 1, 5 will execute with abnormal termination.
<br><b>Case5:</b><br> If an exception raised at statement-5 or at statement-6 then it is always abnormal condition.<br>
<br>
<h1 class="h1">Nested try - catch - finally Control flow in Java</h1>	
<p class="p">The following program will demonstrates the flow of nested try -catch - finally.<br>
<h5>Ex:</h5>
<pre class="brush:java">
try
{
	statement 1;
	statement 2;
	statement 3;
	try
	{
	statement 4;
	statement 5;
	statement 6;
	}
	catch (X e)
	{
	statement 7;
	}
	finally
	{
	statement 8;
	}
	statement 9;
}
catch (Y e)
{
	statement 10;
}
finally
{
	statement 11;
}
	statement 12;
}
</pre>
<h1 class="h1">Explanation</h1>
<p class="p">
<b>Case1:</b><br> if there is no exception then the statements 1, 2, 3, 4, 5, 6, 7, 8, 9, 11, 12 will execute with
normal termination.<br>
<b>Case2:</b><br> if an exception raised at statement-2 and the corresponding catch block matched then the
statements 1, 10, 11, 12 will execute with normal termination.<br>
<b>Case3:</b> <br>if an exception raised at statement-2 but the corresponding catch block not matched then the
statements 1, 11, 12 will execute with abnormal termination.<br>
<b>Case4:</b><br> if an exception raised at statement-5 and the corresponding inner catch has matched then the
statements 1, 2, 3, 4, 7, 8, 9, 11, 12 will execute with normal termination.<br>
<b>Case5:</b><br> if an exception raised at statement-5 and the inner catch has not matched but outer catch has
matched then the statements 1, 2, 3, 4, 8, 10, 11, 12 will execute with normal termination.<br>
<b>Case6:</b><br> if an exception raised at statement-5 but the inner and outer catch blocks are not matched
then the statements 1, 2, 3, 4, 8, 11 will execute with abnormal termination.<br>
<b>Case7:</b><br> if an exception raised at statement-7 and<br>
i) If outer catch block has matched then the statements 1, 2, 3, - - - 8, 10, 11, 12 will
execute with normal termination.<br>
ii) If the outer catch block has not matched then the statements 1, 2, 3, - - - 8, 11 will
execute with abnormal termination.	<br>
<b>Case8:</b><br> if an exception raised at statement-8 and<br>
i) If outer catch has matched then the statements 1, 2, 3, - - - will execute with normal
termination.<br>
ii) If outer catch has not matched then the statements 1, 2, 3, - - - 11 will execute with
abnormal termination.<br>
<b>Case9:</b> if an exception raised at statement-9 and<br>
i) If the outer catch has matched then the statements 1, 2, 3 - - -8, 10, 11, 12 will
execute with normal termination.<br>
ii) If the outer catch has not matched then the statements 1, 2, 3 - - -8, 11 will execute
with abnormal termination.<br>
<b>Case10:</b><br> if an exception raised at statement-10 it is always abnormal termination but before
termination compulsory the finally block should be executed.<br>
<b>Case11:</b><br> if an exception raised at statement-11 or 12 it is always abnormal termination.<br>
</p>			<hr>
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