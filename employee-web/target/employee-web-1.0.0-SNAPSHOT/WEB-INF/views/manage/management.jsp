<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">


<title>Insert title here</title>
<link rel="stylesheet"
    href="${pageContext.request.contextPath}/resources/app/css/styles.css">
<style>
    
   #five a#seven{
 	color:white;
 	position:absolute;
	top:10px;
	left:90px;
 	font-size: 20px;
    } 
    body{
    margin-left:10px;
    margin-right:10px;
    margin-top:0;
    
    padding:0;
    
    }
    
    #button{
    width:170px;
    height:50px;
    background-color: white;
    border:1px solid #0070C0;
    color:#0070C0;
    border-radius: 3px;
    font-size: 30px;
    text-align: center;
    position:relative;
    top:30px;
    left:90px;
    border-radius: 20px;
    }
    </style>
    
</head>
<body>
		<div id="wrapper">
    	<div id="five" >
    		 
           <a id="seven" href="${pageContext.request.contextPath}/management">Search Employee</a>
           <form:form id="six" action="${pageContext.request.contextPath}/">
                <button id="eight" type="submit">Home</button>
            </form:form>
    	</div>
    </div>
    <div>
    <div id="button"><a href="${pageContext.request.contextPath}/newemployee/create">Register</a></div>
    </div>
</body>
</html>