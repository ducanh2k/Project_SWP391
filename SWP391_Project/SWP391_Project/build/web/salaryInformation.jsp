<%-- 
    Document   : salaryInformation
    Created on : Oct 27, 2022, 1:58:46 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="row">
            <div class="col-md-6 my-3">
                <div class="card card-outline-secondary">
                    <div class="card-body">
                        <form class="form" role="form" autocomplete="off" action="salary" method="post">
                            <input type="text" hidden name="eid" value="${eid}"/>
                            <input type="text" hidden name="day" value="${day}"/>

                            <div class="form-group row">
                                <label class="col-md-3 col-form-label form-control-label">Coefficients salary</label>
                                <div class="col-md-9">
                                    <input class="form-control" type="number" value="${cs}" name="cs" readonly />
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-md-3 col-form-label form-control-label">number of days on leave</label>
                                <div class="col-md-9">
                                    <input class="form-control" type="number" value="${ol}" name="ol" readonly />
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-md-3 col-form-label form-control-label">Holiday Wages</label>
                                <div class="col-md-9">
                                    <input class="form-control" type="number" value="" name="hw"  />
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-lg-3 col-form-label form-control-label">Special Allowance</label>
                                <div class="col-lg-9">
                                    <input class="form-control" type="number" value="" name="sa"  />
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-lg-3 col-form-label form-control-label">Bonus</label>
                                <div class="col-lg-9">
                                    <input class="form-control" type="number" value="" name="bonus"  />
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-lg-3 col-form-label form-control-label">Individual Incentive</label>
                                <div class="col-lg-9">
                                    <input class="form-control" type="number" value="" name="ii"  />
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-lg-3 col-form-label form-control-label"></label>
                                <div class="col-lg-9">
                                    <input type="reset" class="btn btn-secondary" value="Cancel">
                                    <input type="submit" class="btn btn-primary" value="Calculate Salary">
                                </div>
                            </div>
                        </form>
                    </div>
                </div> 
            </div>
        </div>
    </body>
</html>
