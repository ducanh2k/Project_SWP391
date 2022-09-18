<%-- 
    Document   : department_view
    Created on : Sep 16, 2022, 11:11:03 AM
    Author     : User
--%>

<%@page import="model.Department"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
Department dep_detail= (Department) session.getAttribute("dep_detail");
%>

<html style="font-size: 16px;" lang="en"><head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <meta charset="utf-8">
                <meta name="keywords" content="​​Department Detail">
                    <meta name="description" content="">
                        <title>Department Detail</title>
                        <link rel="stylesheet" href="css/nicepage.css" media="screen">
                            <link rel="stylesheet" href="css/Home.css" media="screen">

                                </head>
                                <body data-home-page="Home.html" data-home-page-title="Home" class="u-body u-xl-mode" data-lang="en">

                                    <section class="u-clearfix u-section-1" id="carousel_e146">
                                        <div class="u-clearfix u-sheet u-sheet-1">
                                            <div class="u-clearfix u-expanded-width u-layout-wrap u-layout-wrap-1">
                                                <div class="u-layout">
                                                    <div class="u-layout-row">
                                                        <div class="u-align-left u-container-style u-layout-cell u-palette-1-light-3 u-size-41 u-layout-cell-1">
                                                            <div class="u-container-layout u-container-layout-1">
                                                                <h2 class="u-custom-font u-font-montserrat u-text u-text-1"> Department Detail</h2>
                                                                <div class="u-expanded-width-sm u-expanded-width-xs u-form u-form-1">
                                                                    <form action="https://forms.nicepagesrv.com/Form/Process" class="u-clearfix u-form-spacing-24 u-form-vertical u-inner-form" source="email" name="form" style="padding: 6px;">
                                                                        <div class="u-form-group u-form-name u-label-left u-form-group-1">
                                                                            <label for="name-e0f0" class="u-label u-spacing-12 u-label-1">Department ID : </label>
                                                                            <input type="text" value="${dep_detail.getDid()}" placeholder="Department ID" id="name-e0f0" name="name" class="u-input u-input-rectangle u-radius-7 u-white u-input-1" required="">
                                                                        </div>
                                                                        <div class="u-form-email u-form-group u-label-left u-form-group-2">
                                                                            <label for="email-e0f0" class="u-label u-spacing-12 u-label-2">Department name : </label>
                                                                            <input type="email" value="${dep_detail.getDname()}" placeholder="Department name" id="email-e0f0" name="email" class="u-input u-input-rectangle u-radius-7 u-white u-input-2" required="">
                                                                        </div>
                                                                        <div class="u-form-group u-form-select u-label-left u-form-group-3">
                                                                            <label for="select-73f7" class="u-label u-spacing-12 u-label-3">Active status : </label>
                                                                            <div class="u-form-select-wrapper" style="width: 50%">
                                                                                <select id="select-73f7" name="select" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-radius-7 u-white u-input-3">
                                                                                    <option value="Active" <%if(dep_detail.isIs_active()==true){%> selected <%}%>>Active</option>
                                                                                    <option value="Deactive" <%if(dep_detail.isIs_active()==false){%> selected <%}%>>Deactive</option>
                                                                                </select>
                                                                                <svg xmlns="http://www.w3.org/2000/svg" width="14" height="12" version="1" class="u-caret"><path fill="currentColor" d="M4 8L0 4h8z"></path></svg>
                                                                            </div>
                                                                        </div>
                                                                        <div class="u-form-group u-form-submit u-label-left u-form-group-4">
                                                                            <label class="u-label u-spacing-12 u-label-4"></label>
                                                                            <input type="submit" value="submit" class="u-form-control-hidden">
                                                                                <div class="u-align-left u-btn-submit-container">
                                                                                    <a href="#" class="u-btn u-btn-round u-btn-submit u-button-style u-radius-4 u-btn-1">EDIT<br>
                                                                                    </a>
                                                                                    <a href="#" class="u-btn u-btn-round u-btn-submit u-button-style u-radius-4 u-btn-1">DELETE<br>
                                                                                    </a>
                                                                                </div>
                                                                        </div>
                                                                        <div class="u-form-send-message u-form-send-success"> Thank you! Your message has been sent. </div>
                                                                        <div class="u-form-send-error u-form-send-message"> Unable to send your message. Please fix errors then try again. </div>
                                                                        <input type="hidden" value="" name="recaptchaResponse">
                                                                            <input type="hidden" name="formServices" value="abbe3663a1551d307b6a70471b7d1fc9">

                                                                                </form>
                                                                                </div>
                                                                                </div>
                                                                                </div>

                                                                                </div>
                                                                                </div>
                                                                                </div>
                                                                                </div>
                                                                                </div>
                                                                                </section>



                                                                                </body>
                                                                                </html>

