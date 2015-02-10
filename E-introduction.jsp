
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->

<head>
	<meta charset="utf-8">
	<title>Exception Handling</title>
	<meta name="keywords" content="What is Exception?,Explain about Exception handling in java,Exception handling in java,Types of Exceptions,What is Checked exception,what is unchecked exception,Exception handling hierarchy diagram,Exception handling hierarchy,Partially checked Vs fully checked"> 
	<meta name="description" content="An unwanted or unexpected event that disturbs the normal flow of the program execution is called as Exception">
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
		<h1 class="h1">Introduction to Exception Handling</h1>
		<h1 class="h1">Definition of Exception: </h1>
		<p class="p"><b>An unwanted or unexpected event that disturbs the normal flow of the program execution is called as Exception.</b>
		<br>
		<div id="impcontents">
		<ol>
			<li><a href="">Definition of Exception</a></li>
			<li><a href="">Types of Exceptions</a></li>
			<li><a href="">Exception Handling hierarchy diagram</a></li>
			<li><a href="">Partially checked Vs fully checked</a></li>
		</ol>
		</div>
		<p class="p">Ex:<br>SleepingException, TirePuncharedException, FileNotFoundException</p>
		<p class="p">If we are not handling exception, the program may terminate abnormally with out releasing allocated
resources. This is not a graceful termination. Being a good programming practice compulsory we should
handle exceptions for graceful termination of the program</p>
<p class="p"><b>Exception handling means it is not repairing an exception we are providing alternative way to continue the
program normally.</b><br><br> For example if out programming requirement is to read the data from London file, if at
runtime London file is not available, we have to provide a local file as the part of exception handling. So
that respect of the program will be continued normally.</p>
<h1 class="h1">Types of Exception </h1>
<p class="p"><b>Throwable</b> is the parent of entire java exception hierarchy. It has 2 child classes</p>
<p class="p">1). Exception.<br>
2). Error.</p>
<h1 class="h1">1). Exception.</h1>
<p class="p">These are recoverable. Most of the cases exceptions are raised due to program code only.</p>
<p class="p">The Exceptions are classified in t two major categories they are <br>1. Checked Exceptions<br>2. Unchecked Exceptions</p>
<h1 class="q1">1. Checked Exceptions(Compiletime Exceptions)</h1> 
<p class="p"><b>The Exceptions which are checked by the compiler for smooth execution of the program at runtime
are called 'checked exceptions'.</b><br>
Ex:- IOException, ServletException, InterruptedException.</p>
<pre class="brush:java">
import java.io.*;
class CheckedExceptionDemo {  
   public static void main(String args[]) 
   {
	FileInputStream fis = null;
	/*This constructor FileInputStream(File filename)
	 * throws FileNotFoundException which is a checked
	 * exception*/
        fis = new FileInputStream("B:/myfile.txt"); 
	int k; 

	/*Method read() of FileInputStream class also throws 
	 * a checked exception: IOException*/
	while(( k = fis.read() ) != -1) 
	{ 
		System.out.print((char)k); 
	} 

	/*The method close() closes the file input stream
	 * It throws IOException*/
	fis.close(); 	
   }
}
</pre>
<h5>Output</h5>
<pre class="p">
Exception in thread "main" java.lang.Error: Unresolved compilation problems: 
Unhandled exception type FileNotFoundException
Unhandled exception type IOException
Unhandled exception type IOException
</pre>
<h2 class="q1">2). Unchecked Exceptions(Runtime Exceptions)</h2>
<p class="p"><b>The Exceptions which are not checked by the compiler are called "unchecked exceptions" or Runtime Exceptions</b>
<br><br>
EX: ArithmeticException, NullPointerException,ClassCastException etc..</p>
<br>
<p class="p">RuntimeException and it's child classes, Error and it's child classes are considered as unchecked
exceptions and all the remaining considered as checked.</p>
<h5>NOTE:</h5>
<p class="p1"><b>Whether the exception is checked or unchecked it always occur at runtime only.</b></p>
<h1 class="h1">2). Error</h1>
<p class="p"><b>Errors are non-recoverable. Most of the cases errors are due to lack of system resources but not due
to our programs.</b></p>
<p class="p">EX:<br>OutOfMemoeryError, StackOverflowError, LinkageError etc..</p>
<h1 class="p1"><b>Exception Handling Hierarchy Diagram </b></h1>
<img alt="exceptions hierarchy" src="/java/corejava/Exceptions/images/Exceptions.PNG">
<h1 class="q">Partially checked Vs fully checked</h1>
<p class="p">checked exception is said to be fully checked iff all it's child classes also checked.
<br>Ex:- IOException.</p>
<p class="p">A checked exception is said to be partially checked if some of it's child classes are not checked.
Ex:- Exception, Throwable.</p>
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