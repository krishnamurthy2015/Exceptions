
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->

<head>
	<meta charset="utf-8">
	<title>top ten exceptions</title>
	<meta name="keywords" content="top ten exception in java,what is NullPointerException, when will occur NullPointerException,StackOverFlowError,what is StackOverFlowError,when occurs StackOverFlowError,ArrayIndexOutOfBoundsException in java,what is ArrayIndexOutOfBoundsException,ClassCastException in java,what is ClassCastException,NumberFormatException in java,what is NumberFormatException?">
	<meta name="description" content="All Exceptions are divided into two categories 
JVM Exceptions: Raised automatically by the JVM when ever a particular condition occurs.
Programatic Exceptions: These are raised programmatically because of programmers code or API's developers Code.">
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
		<h1 class="h1">Top Ten Exceptions in java</h1>
		<p class="p">All Exceptions are divided into two categories <br>
<b>JVM Exceptions:</b> Raised automatically by the JVM when ever a particular condition occurs.<br>
Ex: ArithmeticException, NullPointerException.<br>

<b>Programatic Exceptions:</b> These are raised programmatically because of programmers code or API's
developers Code.<br>
Ex: IllegalArgumentException, NumberFormatException.</p>
<ol class="p">
<li><b>NullPointerException:-</b> It is the direct child class of RuntimeException and it is unchecked. Thrown
automatically by the JVM when ever we are performing any operation on null.
<pre class="brush:java">
String s = null
System.out.println(s.length()); // NullPointerException.

</pre>
</li>
<li><b>StackOverFlowError:-</b> It is the child class of Error and it is unchecked. Raised automatically by the
JVM when ever we are performing recursive method invocation.
<pre class="brush:java">
class Test
{
	public static void m1()
	{
		m1();
	}
	public static void main(String arg[])
	{
		m1();
	}
}
</pre>
</li>
<li><b>ArrayIndexOutOfBoundsException:-</b> It is the child class of RuntimeException and it is unchecked
thrown automatically by the JVM when ever we are accessing an array element with invalid int index.(Out
of range index)
<pre class="brush:java">
int [] a = {10, 20, 30};
System.out.println(a[0]);
System.out.println(a[20]);// ArrayIndexOutOfBoundsException
</pre>
</li>
<li>
<b>ClassCastException:- </b>It is the child class of RuntimeException and it is unchecked. Thrown
automatically by the JVM when ever we are trying to typecast parent class object to the child type.
<pre class="brush:java">
String s = "raju";
Object o = (Object)s
Object o = new Object();
String s = (String)o;
R.E: ClassCastException.
</pre>
</li>
<li>
<b>NoClassDefFoundError:-</b> It is the child class of Error and it is unchecked. Thrown automatically by the
JVM if the required .class file is not available.
<pre class="brush:java">
 java beebi
If beebi.class file is not available we will get NoClassDefFoundError
</pre>
</li>
<li><b>ExceptionInInitializerError:-</b> It is child class of Error and it is unchecked. Raised automatically by the
JVM when ever an Exception occur during initialization of static variables or execution of static blocks.
<pre class="brush:java">
class Test
{
	static int i = 10/0;
}
//=======================
class Test
{
	static
	{
		String s = null;
		System.out.println(s.length());
	}
}
</pre>
</li>
<li><b>IllegalArgumentException:-</b>It is the child class of RuntimeException and it is unchecked thrown
explicitly by the programmer or API developer when ever we are invoking a method with inappropriate or
invalid argument.
<pre class="brush:java">
The valid range of Thread priority is 1 - 10 , if we are trying to invoke setpriority
method with 100 as argument we will get IllegalArgumentException.

public void setPriority(int i)
{
	if (i>10 || i&lt;11)
	{
	throw new IllegalArgumentException();
	}
}
</pre>
</li>
<li>
<b>NumberFormatException:-</b> It is the child class of Illegal Argument and it is unchecked. Thrown
programmatically when ever we are attempting to convert String to Number type but the String is not
formatted properly
<pre class="brush:java">
String s = 10;
int i = Integer.parseInt(s);
String s = "ten";
int i = Integer.parseInt(s);
</pre>
</li>
<li>
<b>IlleaglStateExcepiton:-</b> It is the child class of RuntimeException and it is unchecked. Thrown
programmatically to indicate that a method has invoked at an inappropriate time.
<p class="p">
After invalidating a session object we are not allowed to call any method on that
object other wise IllegalStateException.<br><br>
After comiting the response we are not allowed to redirect or forward otherwise
IlleagalStateException<br><br>
After starting a thread we are not allowed to start the same thread once again other
wise IlleagalStateException.</p>

<pre class="brush:java">
MyThread t = new MyThread();
t.start();
t.start(); // IllegalThreadStateException.
</pre>
</li>
<li>
<b>AssertionError:-</b> It is the child class of Error and it is unchecked thrown programmatically to indicate
Assertion fails.
<pre class="brush:java">
Assert(false); // AssertionError

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