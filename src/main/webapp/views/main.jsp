<%--
  Created by IntelliJ IDEA.
  User: blucean
  Date: 2020-08-14
  Time: 오후 2:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/views/htmlHead.jsp" %>
<html>
<head>
    <title>Main</title>
</head>
<body>
<h1>Message Service</h1>

<form role="form">
    <button type="button" id="btn1" onclick="btnSel(1)">버튼 1</button>

    <button type="button" id="btn2" onclick="btnSel(2)">버튼 2</button>

    <button type="button" id="btn3" onclick="btnSel(3)">버튼 3</button>
</form>
<script type="text/javascript">
    function btnSel(sel) {
        switch (sel) {
            case 1: {
                console.log("click btn: ", sel);
                objSubmit();
                break;
            }
            case 2: {
                console.log("click btn: ", sel);
                objSubmit();
                break;
            }
            case 3: {
                console.log("click btn: ", sel);
                objSubmit();
                break;
            }

        }
    }

    let objSubmit = function () {

        // $("button[type='button']").on('click', function (e) {
        let form = $("form[role='form']");
        let obj = new FormData(form[0]);

        $.ajax({
            url: '/addMsg',
            type: 'POST',
            data: obj,
            processData: false,
            contentType: false,
            success: function (response, jqXHR, xhr) {
                console.log("Insert Response Data:", response);
                console.log(xhr.status)
                console.log(jqXHR)
                if (xhr.status === 200) {
                    alert("성공");
                } else if (xhr.status === 400) {
                    alert("실패");
                }
            },
            error: function (xhr, e, response) {
                console.log("Insert Error:", xhr, e, response);
                alert("에러!!")
            }
        });
    }
    // });


</script>
</body>
</html>
