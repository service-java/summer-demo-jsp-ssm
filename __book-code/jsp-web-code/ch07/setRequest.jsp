<%@page contentType="text/html"%>
<%@page pageEncoding="GB2312"%>
<html>	
    <head><title>request 类型的生命周期</title></head>
    <body>
    <jsp:useBean id="count"scope="request" class="bean.Counter"/>
    <font color="red">范围：request</font><br>
        您是本站第<font color=blue>
            <jsp:getProperty name="count" property="counter"/>
        </font>位参观者        
        <jsp:forward page="request.jsp" />
    </body>
</html>
