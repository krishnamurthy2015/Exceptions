
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->

<head>
	<meta charset="utf-8">
	<title>Methods in Catch block</title>
	<meta name="keywords" content="The Methods to display Exception Information,printStatckTrace(),Example for printstacktrace,getMessage(),uage of getMessage() in catch block,what are the methods to use to display the exception information?"> 
	<meta name="description" content="The Throwable class can contains the following methods to display error information.
printStackTrace()
toString()
getMessage()">
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
		<h1 class="h1">The Methods to display Exception Information</h1>
		<p class="p"><b> The Throwable class can contains the following methods to display error information.</b></p>
		<ul class="q1">
		<li>printStackTrace()</li>
		<li>toString()</li>
		<li>getMessage()</li>		
		</ul>
		<h1 class="h1">1. printStatckTrace:</h1>
		<p class="p">It displays error information in the following format.<br>
<b>Name of Exception : Description
StackTace</b></p>
<h5>Example:</h5>
<pre class="brush:java">
import java.lang.*;

public class ThrowableDemo {

   public static void main(String[] args) throws Throwable {

      OutputStream out;
      try {
         ExceptionFunc();
      }
      catch(Throwable e) {
         out = new FileOutputStream("file.text");
         // prints this throwable and its backtrace to the print stream
         PrintStream ps = new PrintStream(out);      
         e.printStackTrace(ps);
      }
   }
  
   public static void ExceptionFunc() throws Throwable {

      Throwable t = new Throwable("This is new Exception...");
      StackTraceElement[] trace = new StackTraceElement[] {
         new StackTraceElement("ClassName","methodName","fileName",10)
      };

      // sets the stack trace elements
      t.setStackTrace(trace);
      throw t;
   }
}
</pre>
<h4>Output:</h4>
<pre class="p">
ava.lang.Throwable: This is new Exception...
	at ClassName.methodName(fileName:10)
</pre>
<h1 class="h1">2. toString()</h1>
<p class="p">It displays error in the following format.
<br>Name of Exception : Description</p>
<h5>Example</h5>
<pre class="brush:java">
public class ExceptinTest {
	   public static void main(String args[])
	   {
		   
	      try 
	      {
	         System.out.println(10/0);
	      }
	      catch (Exception e) 
	      {
	    	 //e.printStackTrace();
	    	System.out.println(  e.toString());
	      }
	   }
	
}

</pre>
<h5>Output</h5>

<pre class="p" >
java.lang.ArithmeticException: / by zero
</pre>
<h1 class="h1">getMessage():</h1><p class="p"> it displays error information in the following format.<br><b>
Description</b></p>
<pre class="brush:java">
public class ExceptinTest {
	   public static void main(String args[])
	   {
		   
	      try 
	      {
	         System.out.println(10/0);
	      }
	      catch (Exception e) 
	      {
	    	 //e.printStackTrace();
	    	System.out.println(  e.getMessage());
	      }
	   }
	
}

</pre>
<h5>Output</h5>

<pre class="p">
/ by zero</pre>
<h4>Note:</h4><p>Default Exception handler always uses printStackTrace() method only. It is recommended when the product is in deploy mode</p>

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