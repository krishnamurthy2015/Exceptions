
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->

<head>
	<meta charset="utf-8">
	<title>Custom Exceptions in java</title>
	<meta name="keywords" content="Custom Exceptions in java,custom exceptions,write a java program for custom exceptions,custom exception example">
	<meta name="description" content="Based on our programming requirement some times we have to create our own exception, which are nothing but Customized Exception">
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
		<h1 class="h1">Custom Exceptions in java</h1>
		<p class="p">Based on our programming requirement some times we have to create our own exception, which are nothing
but "Customized Exception".</p>
<h5>Example</h5>
<pre class="p1">
TooYoungException.
TooOldException.
InSufficiantFundsTransfer
</pre>
<h5>Note:</h5><p class="p"> <b>It is recommended to define customized exceptions as unchecked. i.e our custom exceptions class
should extends R.E either directly or indirectly.</b></p>
<h5>Write java program for custom exceptions</h5>
<pre class="brush:java">
import java.util.Scanner;

class TooYoungException extends RuntimeException
{
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	TooYoungException(String s)
    {
    super(s);
    }
}
class TooOldException extends RuntimeException
{
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	TooOldException(String s)
    {
    super(s);
    }
}
class CustomExceptionDemo
{
    public static void main(String arg[])
    {
    	Scanner sc=new Scanner(System.in);
    	System.out.println("please enter the age::");
        int age = sc.nextInt();
        if(age > 60)
        {
            throw new TooOldException("Younger age is already over");
        }
        else if(age &lt;18)
        {
            throw new TooYoungException("Please wait same more time");
        }
        System.out.println("Thanks for register");
    }
}

</pre>
<h4>Output1:</h4>
<pre class="p1">
please enter the age::
12
Exception in thread "main" TooYoungException: Please wait same more time
	at CustomExceptionDemo.main(CustomExceptionDemo.java:40)
</pre>
<h4>Output2</h4>
<pre class="p1">
please enter the age::
66
Exception in thread "main" TooOldException: Younger age is already over
	at CustomExceptionDemo.main(CustomExceptionDemo.java:36)

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