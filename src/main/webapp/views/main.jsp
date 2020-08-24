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
<div class="mb-2">
    <button type="button" class="btn btn-info" id="list">List</button>
</div>
<script type="text/javascript">
    $('#list').on('click', function (e) {
        $.ajax({
            url: '/getList',
            type: 'GET',
            dataType: 'json',
            success: function (result, jqXHR, xhr) {
                if (xhr.status === 200) {
                    console.log(result);
                    alert(xhr.status + ": " + jqXHR);
                }
            },
            error: function (xhr, e) {
                console.log("Insert Error:", xhr.status);
                alert(xhr.status + ": " + e)
            }
        });
    }).css('width', 220);
</script>

<form role="form">
    <button type="button" class="btn btn-success" id="btn1" onclick="btnSel(1, 'button')">버튼 1</button>

    <button type="button" class="btn btn-success" id="btn2" onclick="btnSel(2, 'button')">버튼 2</button>

    <button type="button" class="btn btn-success" id="btn3" onclick="btnSel(3, 'button')">버튼 3</button>
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
                if (xhr.status === 200) {
                    alert(xhr.status + ": " + jqXHR)
                }
            },
            error: function (xhr, e) {
                console.log("Insert Error:", xhr.status);
                alert(xhr.status + ": " + e)
            }
        });
    }
    // });


</script>
</body>
</html>
