
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->

<head>
	<meta charset="utf-8">
	<title>throws keyword</title>
	<meta name="keywords" content="throws keyword in java,throw keyword,what is the use of throws keyword"> 
	<meta name="description" content="he throws keyword is used to declare or handle an exception.">
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
		<h1 class="h1">Throws keyword</h1>
		<p class="p">The <b>throws keyword is used to declare or handle an exception.</b>It gives an information to the programmer that there may occur an exception so it is better for the programmer to provide the exception handling code so that normal flow can be maintained.<br><br>
		If our code may be a chance of raising checked exception then compulsory we should handle that checked
exception either by using try, catch or we have to delegate that responsibility to <b>the caller using throws
keyword</b> other wise<br>
 C.E saying UnreportedException : XXXException must be caught or declared to be thrown</p> 
<h5>Example</h5>
<pre class="brush:java">
class Test
{
	public static void main(String arg[])
	{
	Thread.sleep(1000);
	}
}
</pre>
		
<h5>Output</h5>
<pre class="p1">
Test.java:5: error: unreported exception InterruptedException; must be caught or
 declared to be thrown
Thread.sleep(1000);
            ^
1 error
</pre>
<p class="p"><b>We can resolve this problem either by using try catch or by using throws keyword as follows.</b></p>
<pre class="brush:java">
class Test
{
	public static void main(String arg[])
	{
		try
		{
		Thread.sleep(1000);
		}
		catch (InterruptedException e)
		{
		}
	}
}

</pre>	
<p class="h1">OR</p>
<pre class="brush:java">
class Test
{
	public static void main(String arg[])throws InterruptedException
	{
	Thread.sleep(1000);
	}
}

</pre>	
<p class="p"><b>Hence the main objective of throws keyword is to delegate the responsibilities of exception handling to the
caller</b></p>
<pre class="brush:java">
class Test
{
	public static void main(String arg[]) throws InterruptedException
	{
		doStuff();
	}
	public static void doStuff() throws InterruptedException
	{
		doMoreStuff();
	}
	public static void doMoreStuff() throws InterruptedException
	{
		Thread.sleep(500);
		System.out.println("I am in office");
	}
}
</pre>
<p>If we are not taking at least one throws keyword we will get Compiler Error.</p>
<p class="p">If the parent class constructor throws some checked exception then the child class constructor must throw
same checked exception or its parent other wise compiler error.</p>
<pre class="brush:java">
class p
{
	p()throws IOException
	{
	}
}
class C extends p
{
	C()throw Exception
	{
		super();
	}
}
//Other wise we will get compile time error
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