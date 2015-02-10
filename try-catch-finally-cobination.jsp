
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->

<head>
	<meta charset="utf-8">
	<title>combination of t-c-f</title>
	<meta name="keywords" content="Possibe combinations of try, catch, finally,what are the possible combination of try,catch,and finally,what are the not possible combination of try catch and finally"> 
	<meta name="description" content="This page will guid you how to use try,catch and finally block in the programming">
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
		<h1 class="h1">Possible combinations of try, catch, finally</h1>
		<p class="p">The following are explains different try catch finally combinations</p>
		<table class="reference">
		<tr>
		<td>
			<pre class="brush:java">
			try
			{
			}
			catch (X e)
			{
			}
			finally
			{
			}
			</pre>
		</td>
		</tr>
		<tr><td>
		<pre class="brush:java">
		try
		{
		}
		catch (X e)
		{
		}		
		</pre>
		</td>
		</tr>
		
		<tr><td>
		<pre class="brush:java">
		try
		{
		}
		finally
		{
		}
		</pre>
		</td>
		</tr>
		<tr><td>
		<pre class="brush:java">
		try
		{
		}
		catch (X e)
		{
		}
		catch (Y e)
		{
		}
		finally
		{
		}
				
		</pre>
		</td>
		</tr>		</table>
		
		<h1 class="h1">Not-Possible combinations of try, catch, finally</h1>
		<table class="reference">
		
		<tr>
		<td>
			<pre class="brush:java">
			try
			{
			}
		C.E: try with out catch or finally
			</pre>
		</td>
		</tr>
		<tr>
		<td>
			<pre class="brush:java">
			catch(X e)
			{
			}
			C.E: catch with out try
			</pre>
		</td>
		</tr>
		<tr>
		<td>
			<pre class="brush:java">
			finally
			{
			}
			C.E: finally with out try
			</pre>
		</td>
		</tr>
		<tr>
		<td>
			<pre class="brush:java">
			try
			{
			}
			System.out.println("Hello");
			catch (X e)
			{
			}
			C.E:  try with out catch
				Catch with out try
			</pre>
		</td>
		</tr>
		<tr>
		<td>
			<pre class="brush:java">
			try
			{
			}
			catch (X e)
			{
			}
			System.out.println("Hello");
			finally
			{
			}
			C.E: finally without try
			</pre>
		</td>
		</tr>
		<tr>
		<td>
			<pre class="brush:java">
			try
			{
			}
			catch (X e)
			{
			}
			System.out.println("Hello");
			finally
			{
			}
			C.E: finally with out try
			</pre>
		</td>
		</tr>
		<tr>
		<td>
		<pre class="brush:java">
		try
		{
		}
		catch (X
		e)
		{
		}
		finally
		{
		}
		finally
		{
		}
		C.E: finally with out try
		</pre>
		</td>
		</tr>
		<tr>
		<td>
		<pre class="brush:java">
		try
		{
		}
		finally
		{
		}
		catch (X e)
		{
		}
		C.E: catch with out try
		</pre>
		</td>
		</tr>
		<tr>
		<td>
		<pre class="brush:java">
		try
		{
		}
		catch(X e)
		{
		}
		System.out.println("Hello");
		catch(Y e)
		{
		}
		C.E: catch with out try
		</pre>
		</td>
		</tr>
		
		</table>
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