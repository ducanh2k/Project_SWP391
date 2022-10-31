<%-- 
    Document   : approvement
    Created on : Oct 28, 2022, 10:00:02 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            button {
                display: inline-block;
                height: 150px;
                width: 170px;
                background-color: white;
                border: none;
                border-radius: 5px;
                color: #333;
                padding: 15px 32px
            }

            #close-image img {
                display: block;
                height: 130px;
                width: 100px;
            }
            .container {
                display: flex;
                justify-content: center;
                align-items: center;
            }
        </style>
    </head>
    <body style="background-image: url(images/bg.jpg); background-repeat: no-repeat; object-fit: cover">
        <h1 style="text-align: center;font-weight: bold;color: #660000">Approval List</h1>
        <div class="container">
            <button onclick="window.window.location.href = 'approval?text=Business Trip'" id="close-image" style="font-size: 15px;font-weight: bold"><img src="images/onLeave.png"><br/>Business Trip</button>
            &nbsp;&nbsp;&nbsp;
            <button onclick="window.window.location.href = 'approval?text=Find Folder'" id="close-image" style="font-size: 15px;font-weight: bold"><img src="images/find.jpg"><br/>Find Folder</button>
            &nbsp;&nbsp;&nbsp;
            <button onclick="window.window.location.href = 'approval?text=Create Approval'" id="close-image" style="font-size: 15px;font-weight: bold"><img src="images/approval.webp"><br/>Create Approval</button>
            &nbsp;&nbsp;&nbsp;
            <button onclick="window.window.location.href = 'approval?text=Approve Contract'" id="close-image" style="font-size: 15px;font-weight: bold"><img src="images/contract.jpg"><br/>Approve Contract</button>
            &nbsp;&nbsp;&nbsp;
        </div>
        <br/><br/>
        <br/><br/>
        <div class="container">
            <button onclick="window.window.location.href = 'approval?text=Payment Form'" id="close-image" style="font-size: 15px;font-weight: bold"><img src="images/payment.jpg"><br/>Payment Form</button>
            &nbsp;&nbsp;&nbsp;
            <button onclick="window.window.location.href = 'approval?text=Rent Car Form'" id="close-image" style="font-size: 15px;font-weight: bold"><img src="images/rentCar.jpg"><br/>Rent Car Form</button>
            &nbsp;&nbsp;&nbsp;
            <button onclick="window.window.location.href = 'approval?text=Shopping/Supply'" id="close-image" style="font-size: 15px;font-weight: bold"><img src="images/buy.webp"><br/>Shopping/Supply</button>
        </div>
        <br/><br/>
        <br/><br/><br/><br/>
        <br/><br/>
        <%
            int count = 0;
            if (request.getAttribute("count") != null) {
                count = Integer.parseInt(request.getAttribute("count").toString());

        %>
        <p style="font-weight: bold">Now: <%= count%> form waiting for approve</p>
        <%            }
        %>
    </body>
</html>
