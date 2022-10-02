<%@page contentType="text/html" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
<!DOCTYPE html>
<html style="font-size: 16px;" lang="en"><head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta charset="utf-8">
        <meta name="keywords" content="mra">
        <meta name="description" content="">
        <title>Create Employee</title>
        <link rel="stylesheet" href="css/nicepage.css" media="screen">
        <link rel="stylesheet" href="css/Page-3.css" media="screen">
        <script class="u-script" type="text/javascript" src="js/jquery.js" defer=""></script>
        <script class="u-script" type="text/javascript" src="js/nicepage.js" defer=""></script>
        <meta name="generator" content="Nicepage 4.18.5, nicepage.com">
        <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">



        <script type="application/ld+json">{
            "@context": "http://schema.org",
            "@type": "Organization",
            "name": ""
            }</script>
        <meta name="theme-color" content="#478ac9">
        <meta property="og:title" content="Page 3">
        <meta property="og:type" content="website">
    </head>
    <body class="u-body u-xl-mode" data-lang="en"><header class="u-clearfix u-header u-header" id="sec-f9a6"><div class="u-clearfix u-sheet u-sheet-1"></div></header>
        <section class="u-align-center u-clearfix u-section-1" id="sec-992b">
            <div class="u-clearfix u-sheet u-valign-middle u-sheet-1"></div>
        </section>
        <section class="u-align-center u-clearfix u-image u-shading u-section-2" src="" id="sec-4b3d" data-image-width="256" data-image-height="256">
            <div class="u-align-left u-clearfix u-sheet u-sheet-1">
                <h1 class="u-text u-text-default u-text-1">Create new Employee</h1>
                <div class="u-form u-form-1">
                    <form action="MiddleServlet" method="post" class="u-clearfix u-form-spacing-10 u-form-vertical u-inner-form" source="email" name="form" style="padding: 10px;">
                        <div class="u-form-group u-form-name u-form-partition-factor-2">
                            <label for="text-b9da" class="u-label">Name</label>
                            <input type="text" placeholder="Enter Employee Name" id="name-2be9" name="name" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white" >
                        </div>
                        <div class="u-form-group u-form-partition-factor-2 u-form-group-2">
                            <label for="text-b9da" class="u-label">Phone</label>
                            <input type="number" placeholder="Enter your phone" id="text-b9da" name="phone" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white" >
                        </div>
                        <div class="u-form-email u-form-group u-form-partition-factor-2">
                            <label for="email-2be9" class="u-label">Email</label>
                            <input type="email" placeholder="Enter a valid email address" id="email-2be9" name="email" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white" >
                        </div>
                        <div class="u-form-group u-form-partition-factor-2 u-form-group-4">
                            <label for="text-d9b8" class="u-label">Manager</label>
                            <input type="text" placeholder="Enter your manager" id="text-d9b8" name="manager" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white" >
                        </div>
                        <div class="u-form-group u-form-partition-factor-2 u-form-select u-form-group-5">
                            <label for="select-3b17" class="u-label">Gender</label>
                            <div class="u-form-select-wrapper">
                                <select id="select-3b17" name="gender" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white">
                                    <option value="Male">Male</option>
                                    <option value="Female">Female</option>
                                </select>
                                <svg xmlns="http://www.w3.org/2000/svg" width="14" height="12" version="1" class="u-caret"><path fill="currentColor" d="M4 8L0 4h8z"></path></svg>
                            </div>
                        </div>
                        <div class="u-form-group u-form-partition-factor-2 u-form-group-6">
                            <label for="text-a22e" class="u-label">Department Name</label>
                            <input type="text" placeholder="Department Name" id="text-a22e" name="dname" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white" >
                        </div>
                        <div class="u-form-group u-form-partition-factor-2 u-form-select u-form-group-7">
                            <label for="select-82b1" class="u-label">Working Place</label>
                            <div class="u-form-select-wrapper">
                                <select id="select-82b1" name="workingPlace" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white">
                                    <option value="Ha Noi">Ha Noi</option>
                                    <option value="HCM city">HCM city</option>
                                    <option value="Da Nang">Da Nang</option>
                                </select>
                                <svg xmlns="http://www.w3.org/2000/svg" width="14" height="12" version="1" class="u-caret"><path fill="currentColor" d="M4 8L0 4h8z"></path></svg>
                            </div>
                        </div>
                        <div class="u-form-group u-form-partition-factor-2 u-form-group-8">
                            <label for="text-c373" class="u-label">Mentor</label>
                            <input type="text" placeholder="Enter your mentor" id="text-c373" name="mentor" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white" >
                        </div>
                        <div class="u-form-group u-form-partition-factor-2 u-form-group-9">
                            <label for="text-0076" class="u-label">Emergency Contact</label>
                            <input type="number" id="text-0076" name="eContact" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white" placeholder="Enter your Emergency Contact" >
                        </div>
                        <div class="u-form-group u-form-partition-factor-2 u-form-select u-form-group-10">
                            <label for="select-9165" class="u-label">Nationality</label>
                            <div class="u-form-select-wrapper">
                                <select id="select-9165" name="nationality" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white">
                                    <option value="Viet Nam">Viet Nam</option>
                                    <option value="Germany">Germany</option>
                                    <option value="England">England</option>
                                    <option value="USA">USA</option>
                                </select>
                                <svg xmlns="http://www.w3.org/2000/svg" width="14" height="12" version="1" class="u-caret"><path fill="currentColor" d="M4 8L0 4h8z"></path></svg>
                            </div>
                        </div>
                        <div class="u-form-group u-form-partition-factor-2 u-form-group-11">
                            <label for="text-1931" class="u-label">Passport</label>
                            <input type="number" placeholder="Enter your passport " id="text-1931" name="passport" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white" >
                        </div>
                        <div class="u-form-group u-form-partition-factor-2 u-form-group-12">
                            <label for="text-62e7" class="u-label">Visa Number</label>
                            <input type="number" placeholder="Enter your visa number" id="text-62e7" name="visaNumber" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white">
                        </div>
                        <div class="u-form-group u-form-partition-factor-2 u-form-group-13">
                            <label for="text-114b" class="u-label">Work license number</label>
                            <input type="number" id="text-114b" name="work" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white" placeholder="Work license number" >
                        </div>
                        <div class="u-form-group u-form-partition-factor-2 u-form-group-15">
                            <label for="text-a3e9" class="u-label">Approver</label>
                            <input type="text" id="text-a3e9" name="approver" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white" placeholder="Approver name">
                        </div>
                        <div class="u-form-group u-form-partition-factor-2 u-form-select u-form-group-16">
                            <label for="select-5c64" class="u-label">Certificate Level</label>
                            <div class="u-form-select-wrapper">
                                <select id="select-5c64" name="cerLevel" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white">
                                    <option value="Graduate">Graduate</option>
                                    <option value="Bachelor">Bachelor</option>
                                    <option value="Master">Master</option>
                                    <option value="Doctor">Doctor</option>
                                    <option value="Other">Other</option>
                                </select>
                                <svg xmlns="http://www.w3.org/2000/svg" width="14" height="12" version="1" class="u-caret"><path fill="currentColor" d="M4 8L0 4h8z"></path></svg>
                            </div>
                        </div>
                        <div class="u-form-group u-form-partition-factor-2 u-form-group-17">
                            <label for="text-3a47" class="u-label">ID number</label>
                            <input type="number" id="text-3a47" name="idNumber" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white" placeholder="ID number" >
                        </div>
                        <div class="u-form-group u-form-partition-factor-2 u-form-group-18">
                            <label for="text-ae2b" class="u-label">Research Area</label>
                            <input type="text" id="text-ae2b" name="research" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white" placeholder="Research Area" >
                        </div>
                        <div class="u-form-group u-form-partition-factor-2 u-form-group-19">
                            <label for="text-468f" class="u-label">Visa expiration date</label>
                            <input type="text" id="text-468f" name="visaDate" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white" placeholder="Visa expiration date" >
                        </div>
                        <div class="u-form-group u-form-partition-factor-2 u-form-group-20">
                            <label for="text-d6ef" class="u-label">Work license expiration date</label>
                            <input type="text" placeholder="Work license expiration date" id="text-d6ef" name="workDate" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white" >
                        </div>
                        <div class="u-form-group u-form-partition-factor-2 u-form-group-21">
                            <label for="text-5884" class="u-label">Position</label>
                            <input type="text" placeholder="Position" id="text-5884" name="position" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white" >
                        </div>
                        <div class="u-form-group u-form-partition-factor-2 u-form-group-22">
                            <label for="text-2fa1" class="u-label">Working Time</label>
                            <input type="text" placeholder="Working Time" id="text-2fa1" name="workTime" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white" >
                        </div>
                        <div class="u-form-group u-form-partition-factor-3 u-form-group-24">
                            <label for="text-6990" class="u-label">Certificate link</label>
                            <input type="text" placeholder="Certificate link" id="text-6990" name="cerLink" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white" >
                        </div>
                        <div class="u-form-group u-form-partition-factor-3 u-form-select u-form-group-25">
                            <label for="select-c420" class="u-label">BirthPlace</label>
                            <div class="u-form-select-wrapper">
                                <select id="select-c420" name="birthPlace" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white">
                                    <option value="Ha Noi">Ha Noi</option>
                                    <option value="HCM City">HCM City</option>
                                    <option value="Da Nang">Da Nang</option>
                                </select>
                                <svg xmlns="http://www.w3.org/2000/svg" width="14" height="12" version="1" class="u-caret"><path fill="currentColor" d="M4 8L0 4h8z"></path></svg>
                            </div>
                        </div>
                        <div class="u-align-center u-form-group u-form-submit">
                            <!--<a href="#" class="u-btn u-btn-submit u-button-style u-white u-btn-1">Submit</a>-->
                            <button onclick="Submit()" class="btn btn-primary">Submit</button>
                        </div>
                    </form>
                </div>
            </div>
        </section>
        <script>
            function Submit() {
                document.forms["form"].submit();
            }
        </script>
    </body></html>