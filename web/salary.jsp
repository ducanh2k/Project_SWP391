<%-- 
    Document   : salary
    Created on : Oct 26, 2022, 12:28:38 AM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js">
    </head>
    <body>
        <div class="container mt-5 mb-5">
            <div class="row">
                <div class="col-md-12">
                    <div class="text-center lh-1 mb-2">
                        <h6 class="fw-bold">Paycheck</h6> <span class="fw-normal">Payment for the month of ${day}</span>
                    </div>
                    <div class="row">
                        <div class="col-md-10">
                            <div class="row">
                                <div class="col-md-6">
                                    <div> <span class="fw-bolder">Employee Code</span> <small class="ms-3">${emp.getEid()}</small> </div>
                                </div>
                                <div class="col-md-6">
                                    <div> <span class="fw-bolder">Employee Name</span> <small class="ms-3">${emp.getName()}</small> </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div> <span class="fw-bolder">Department</span> <small class="ms-3">${dep.getDname()}</small> </div>
                                </div>
<!--                                <div class="col-md-6">
                                    <div> <span class="fw-bolder">NOD</span> <small class="ms-3">28</small> </div>
                                </div>-->
                            </div>
<!--                            <div class="row">
                                <div class="col-md-6">
                                    <div> <span class="fw-bolder">ESI No.</span> <small class="ms-3"></small> </div>
                                </div>
                                <div class="col-md-6">
                                    <div> <span class="fw-bolder">Mode of Pay</span> <small class="ms-3">SBI</small> </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div> <span class="fw-bolder">Designation</span> <small class="ms-3">Marketing Staff (MK)</small> </div>
                                </div>
                                <div class="col-md-6">
                                    <div> <span class="fw-bolder">Ac No.</span> <small class="ms-3">*******0701</small> </div>
                                </div>
                            </div>-->
                        </div>
                        <table class="mt-4 table table-bordered">
                            <thead class="bg-dark text-white">
                                <tr>
                                    <th scope="col">Earnings</th>
                                    <th scope="col">Amount</th>
                                    <th scope="col">Deductions</th>
                                    <th scope="col">Amount</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th scope="row">Basic</th>
                                    <td>${basic}</td>
<!--                                    <td>PF</td>
                                    <td>1800.00</td>-->
                                </tr>
<!--                                <tr>
                                    <th scope="row">DA</th>
                                    <td>550.00</td>
                                    <td>ESI</td>
                                    <td>142.00</td>
                                </tr>
                                <tr>
                                    <th scope="row">WA</th>
                                    <td>120.00 </td>
                                    <td>LOP</td>
                                    <td>0.00</td>
                                </tr>
                                <tr>
                                    <th scope="row">CA</th>
                                    <td>0.00 </td>
                                    <td>PT</td>
                                    <td>0.00</td>
                                </tr>
                                <tr>
                                    <th scope="row">CCA</th>
                                    <td>0.00 </td>
                                    <td>SPL. Deduction</td>
                                    <td>500.00</td>
                                </tr>
                                <tr>
                                    <th scope="row">MA</th>
                                    <td>3000.00</td>
                                    <td>EWF</td>
                                    <td>0.00</td>
                                </tr>-->
<!--                                <tr>
                                    <th scope="row">Sales Incentive</th>
                                    <td>0.00</td>
                                    <td>CD</td>
                                    <td>0.00</td>
                                </tr>
                                <tr>
                                    <th scope="row">Leave Encashment</th>
                                    <td>0.00</td>
                                    <td colspan="2"></td>
                                </tr>-->
                                <tr>
                                    <th scope="row">Holiday Wages</th>
                                    <td>${si.getHw()}</td>
                                    <td colspan="2"></td>
                                </tr>
                                <tr>
                                    <th scope="row">Special Allowance</th>
                                    <td>${si.getSa()}</td>
                                    <td colspan="2"></td>
                                </tr>
                                <tr>
                                    <th scope="row">Bonus</th>
                                    <td>${si.getBonus()}</td>
                                    <td colspan="2"></td>
                                </tr>
                                <tr>
                                    <th scope="row">Individual Incentive</th>
                                    <td>${si.getIi()}</td>
                                    <td colspan="2"></td>
                                </tr>
                                <tr class="border-top">
                                    <th scope="row">Total Earning</th>
                                    <td>${total}</td>
                                    <td>Total Deductions</td>
                                    <td>0</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
<!--                    <div class="row">
                        <div class="col-md-4"> <br> <span class="fw-bold">Net Pay : 24528.00</span> </div>
                        <div class="border col-md-8">
                            <div class="d-flex flex-column"> <span>In Words</span> <span>Twenty Five thousand nine hundred seventy only</span> </div>
                        </div>
                    </div>-->
                    <div class="d-flex justify-content-end">
                        <div class="d-flex flex-column mt-2"> <span class="fw-bolder">For ${emp.getName()}</span> <span class="mt-4">Authorised Signatory</span> </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
