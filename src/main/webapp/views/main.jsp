<%--
  Created by IntelliJ IDEA.
  User: blucean
  Date: 2020-08-14
  Time: 오후 2:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/views/htmlHead.jsp"%>
<html>
<head>
    <title>Main</title>
</head>
<body>
<h1>Message Service</h1>

<form role="form">
    <button type="button">전송</button>
</form>
<script type="text/javascript">
    function x(){
        let form = $("form[role='form']")[0];
        let obj = new FormData(form);

        $.ajax({
            url: '/addMsg',
            type: 'POST',
            data: obj,
            processData: false,
            contentType: false,
            success: function (response) {
                console.log("Insert Response Data:", response);
                if (response === 200) {
                    alert("성공");
                } else if(response === 400){
                    alert("실패");
                }
            },
            error: function (xhr, e, response) {
                console.log("Insert Error:", xhr, e, response);
                alert("에러!!")
            }

        });

    }


</script>
</body>
</html>
