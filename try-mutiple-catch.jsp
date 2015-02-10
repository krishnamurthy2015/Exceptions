
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->

<head>
	<meta charset="utf-8">
	<title>try with multiple catch</title>
	<meta name="keywords" content="Try with multiple catch blocks,Example for try with multiple catch blocks?,what will happend if parent class to child class exception handling,multiple catch blocks"> 
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
	<h1 class="h1">Try with multiple catch blocks</h1>
	<p class="p"><b>The way of handling exception is varied from exception to exception.</b>
Hence for every exception type we should define corresponding catch blocks, hence try with multiple catch blocks is possible.</p>
<h5>Example for try with multiple catch blocks</h5>
<pre class="brush:java">
public class ExceptionTest
{
	public static void main(String args[])
	{
	
		try
		{
			//Business Logic
		}
		catch (ArithmeticException e )
		{
			//Handling the ArithmeticException
		}
		catch (NullPointerException e)
		{
			//Handling the NullPointerException
		}
		catch(IOException e)
		{
			//Handling the IOException
		}
		catch(Exception e)
		{
			//Handling the Exception
		}
	}
}

</pre>
<h4>NOTE:</h4>
<p class="q1">In the case of try with multiple catch blocks the <b>order of catch blocks is important</b>. And it should be from
<b>child to parent</b> Exception class other wise we will get CompilerTime Error.<br>If we are trying to parent to child, it is <b>Saying Exception xxx has already been caught</b></p>
<h1 class="h1">Parent to Child</h1>
<p class="p">let's consider if we handle the exception from parent to child, the following example explains you</p>
<pre class="brush:java">
public class ExceptinTest {
	public static void main(String[] args) {
		 
        try{
            System.out.println(10 / 0);
        }catch (Exception ex) {
 
            ex.printStackTrace();
 
        }catch (ArithmeticException e){
            e.printStackTrace();
        }
    }
	
}

</pre>
<h4>output:</h4>
<pre class="p">
Exception in thread "main" java.lang.Error: Unresolved compilation problem: 
	Unreachable catch block for ArithmeticException. It is already handled by the catch block for Exception

	at ExceptinTest.main(ExceptinTest.java:13)

</pre>
<h4>NOTE:</h4>
<p class="p">If there is no chance of raising an exception in try statement then we are not allowed to maintain catch block
for that exception violation leads to compile time error but this rule is applicable only for fully checked
exceptions.</p>
<h5>Example</h5>
<pre class="brush:java">
public class Demo
{
	public static void main(String args[]) 
	{
	
	
		try
		{
		System.out.println("Hi");
		}
		catch (IOException e)
		{
			e.printStackTrace();
		}
	}
}
	
</pre>
<h5>Output</h5>
<pre class="p">

Exception in thread "main" java.lang.Error: Unresolved compilation problem: 
	IOException cannot be resolved to a type

	at ExceptinTest.main(ExceptinTest.java:13)
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