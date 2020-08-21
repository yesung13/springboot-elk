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
    <button type="button" id="btn1" onclick="btnSel(1, 'btn1 clicked')">버튼 1</button>

    <button type="button" id="btn2" onclick="btnSel(2, 'btn2 clicked')">버튼 2</button>

    <button type="button" id="btn3" onclick="btnSel(3, 'btn3 clicked')">버튼 3</button>
</form>
<script type="text/javascript">
    function btnSel(sel, message) {
        switch (sel) {
            case 1: {
                console.log("click btn: [", message, ": ", sel, "]");
                objSubmit(sel, message);
                break;
            }
            case 2: {
                console.log("click btn: [", message, ": ", sel, "]");
                objSubmit(sel, message);
                break;
            }
            case 3: {
                console.log("click btn: [", message, ": ", sel, "]");
                objSubmit(sel, message);
                break;
            }

        }
    }

    let objSubmit = function (sel, message) {

        // $("button[type='button']").on('click', function (e) {
        // let form = $("form[role='form']");
        // let obj = new FormData(form[0]);

        let data = {};
        data.msg = message;
        data.msgNum = sel;
        console.log(data);

        $.ajax({
            url: '/addMsg',
            type: 'POST',
            // data: obj,
            data: data,
            // processData: false,
            // contentType: false,
            dataType: 'json',
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
