<!DOCTYPE html>
<html style="font-size: 16px;" lang="en"><head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta charset="utf-8">
        <meta name="keywords" content="mra">
        <meta name="description" content="">
        <title>Create new Employee</title>
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
        <section class="u-align-center u-clearfix u-image u-shading u-section-1" src="" data-image-width="256" data-image-height="256" id="sec-4b3d">
            <div class="u-align-left u-clearfix u-sheet u-sheet-1">
                <h1 class="u-text u-text-default u-text-1">Create new Employee</h1>
                <div class="u-form u-form-1">
                    <form action="mid" method="get" id="form1" class="u-clearfix u-form-spacing-10 u-form-vertical u-inner-form" source="email" name="form" style="padding: 10px;">
                        <div class="u-form-group u-form-name u-form-partition-factor-2">
                            <label for="name-2be9" class="u-label">Name</label>
                            <input type="text" placeholder="Enter Employee Name" id="name-2be9" name="name" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white" required="">
                        </div>
                        <div class="u-form-group u-form-partition-factor-2 u-form-group-2">
                            <label for="text-b9da" class="u-label">Phone</label>
                            <input type="text" placeholder="Enter your phone" id="text-b9da" name="phone" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white">
                        </div>
                        <div class="u-form-email u-form-group u-form-partition-factor-2">
                            <label for="email-2be9" class="u-label">Email</label>
                            <input type="email" placeholder="Enter a valid email address" id="email-2be9" name="email" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white" required="">
                        </div>
                        <div class="u-form-group u-form-partition-factor-2 u-form-group-4">
                            <label for="text-d9b8" class="u-label">Manager</label>
                            <input type="text" placeholder="Enter your manager" id="text-d9b8" name="manager" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white">
                        </div>
                        <div class="u-form-group u-form-select u-form-group-5">
                            <label for="select-3b17" class="u-label">Gender</label>
                            <div class="u-form-select-wrapper">
                                <select id="select-3b17" name="gender" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white">
                                    <option value="Male">Male</option>
                                    <option value="Female">Female</option>
                                </select>
                                <svg xmlns="http://www.w3.org/2000/svg" width="14" height="12" version="1" class="u-caret"><path fill="currentColor" d="M4 8L0 4h8z"></path></svg>
                            </div>
                        </div>
                    </form>
                </div>
                <br/>
                <br/>
                <br/>
                <div class="u-expanded-width u-tab-links-align-left u-tabs u-tabs-1">
                    <ul class="u-border-2 u-border-palette-1-base u-spacing-10 u-tab-list u-unstyled" role="tablist">
                        <li class="u-tab-item" role="presentation">
                            <a class="active u-active-palette-1-base u-button-style u-grey-10 u-tab-link u-text-active-white u-text-black u-tab-link-1" id="link-tab-0da5" href="#tab-0da5" role="tab" aria-controls="tab-0da5" aria-selected="true">Thông tin công vi?c</a>
                        </li>
                        <li class="u-tab-item" role="presentation">
                            <a class="u-active-palette-1-base u-button-style u-grey-10 u-tab-link u-text-active-white u-text-black u-tab-link-2" id="link-tab-14b7" href="#tab-14b7" role="tab" aria-controls="tab-14b7" aria-selected="false">Thông tin riêng t?</a>
                        </li>
                    </ul>
                    <div class="u-tab-content">
                        <div class="u-container-style u-tab-active u-tab-pane u-white u-tab-pane-1" id="tab-0da5" role="tabpanel" aria-labelledby="link-tab-0da5">
                            <div class="u-container-layout u-container-layout-1">
                                <div class="u-form u-form-2">
                                    <form action="mid" method="get" id="form2" class="u-clearfix u-form-spacing-10 u-form-vertical u-inner-form" source="email" name="form" style="padding: 10px;">
                                        <div class="u-form-group u-form-name u-form-partition-factor-2">
                                            <label for="name-2be9" class="u-label">Department Name</label>
                                            <input type="text" placeholder="Enter Department Name" id="name-2be9" name="Dname" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white" required="">
                                        </div>
                                        <div class="u-form-group u-form-partition-factor-2 u-form-select u-form-group-8">
                                            <label for="select-d71d" class="u-label">WorkingPlace</label>
                                            <div class="u-form-select-wrapper">
                                                <select id="select-d71d" name="workplace" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white">
                                                    <option value="Ha Noi">Ha Noi</option>
                                                    <option value="HCM city">HCM city</option>
                                                    <option value="Da Nang">Da Nang</option>
                                                </select>
                                                <svg xmlns="http://www.w3.org/2000/svg" width="14" height="12" version="1" class="u-caret"><path fill="currentColor" d="M4 8L0 4h8z"></path></svg>
                                            </div>
                                        </div>
                                        <div class="u-form-email u-form-group u-form-partition-factor-2">
                                            <label for="email-2be9" class="u-label">Mentor</label>
                                            <input type="text" placeholder="your mentor" id="email-2be9" name="mentor" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white" required="">
                                        </div>
                                        <div class="u-form-group u-form-partition-factor-2 u-form-group-10">
                                            <label for="text-b9da" class="u-label">Emergency Contact</label>
                                            <input type="number" placeholder="number" id="text-b9da" name="emerContact" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white">
                                        </div>
                                        <div class="u-form-group u-form-partition-factor-2 u-form-select u-form-group-11">
                                            <label for="select-17da" class="u-label">Nationality</label>
                                            <div class="u-form-select-wrapper">
                                                <select id="select-17da" name="nationality" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white">
                                                    <option value="Viet Nam">Viet Nam</option>
                                                    <option value="Germany">Germany</option>
                                                    <option value="England">England</option>
                                                    <option value="USA">USA</option>
                                                </select>
                                                <svg xmlns="http://www.w3.org/2000/svg" width="14" height="12" version="1" class="u-caret"><path fill="currentColor" d="M4 8L0 4h8z"></path></svg>
                                            </div>
                                        </div>
                                        <div class="u-form-group u-form-partition-factor-2 u-form-group-12">
                                            <label for="text-05d9" class="u-label">Passport</label>
                                            <input type="number" placeholder="Passport" id="text-05d9" name="passport" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white">
                                        </div>
                                        <div class="u-form-group u-form-partition-factor-2 u-form-group-13">
                                            <label for="text-534d" class="u-label">Visa Number</label>
                                            <input type="text" id="text-534d" name="number-2" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white" placeholder="Visa Number">
                                        </div>
                                        <div class="u-form-group u-form-partition-factor-2 u-form-group-14">
                                            <label for="text-5a0f" class="u-label">Work license number</label>
                                            <input type="text" placeholder="Work license number" id="text-5a0f" name="number-3" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white">
                                        </div>
                                        <div class="u-align-left u-form-group u-form-submit">
                                            <a href="#" class="u-btn u-btn-submit u-button-style u-text-white u-white u-btn-3">Submit</a>
                                            <input type="button" value="submit" class="u-form-control-hidden">
                                        </div>
                                    </form>
                                </div>
                                <div class="u-form u-form-3">
                                    <br/>
                                    <form action="mid" method="get" id="form3" class="u-clearfix u-form-spacing-10 u-form-vertical u-inner-form" source="email" name="form" style="padding: 10px;">
                                        <div class="u-form-group u-form-name u-form-partition-factor-2">
                                            <label for="name-2be9" class="u-label">Working Time</label>
                                            <input type="text" placeholder="Enter your working Time" id="name-2be9" name="name" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white" required="">
                                        </div>
                                        <div class="u-form-email u-form-group u-form-partition-factor-2">
                                            <label for="email-2be9" class="u-label">Approver</label>
                                            <input type="email" placeholder="Enter a valid email address" id="email-2be9" name="text-2" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white" required="">
                                        </div>
                                        <div class="u-form-group u-form-partition-factor-2 u-form-select u-form-group-18">
                                            <label for="select-18ac" class="u-label">Certificate Level</label>
                                            <div class="u-form-select-wrapper">
                                                <select id="select-18ac" name="select" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white">
                                                    <option value="Graduate">Graduate</option>
                                                    <option value="Bachelor">Bachelor</option>
                                                    <option value="Master">Master</option>
                                                    <option value="Doctor">Doctor</option>
                                                    <option value="Other">Other</option>
                                                </select>
                                                <svg xmlns="http://www.w3.org/2000/svg" width="14" height="12" version="1" class="u-caret"><path fill="currentColor" d="M4 8L0 4h8z"></path></svg>
                                            </div>
                                        </div>
                                        <div class="u-form-group u-form-partition-factor-2 u-form-group-19">
                                            <label for="text-ac53" class="u-label">Id number</label>
                                            <input type="text" placeholder="ID" id="text-ac53" name="text-1" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white">
                                        </div>
                                        <div class="u-form-group u-form-partition-factor-2 u-form-group-20">
                                            <label for="text-bcea" class="u-label">Research Area</label>
                                            <input type="text" placeholder="Research Area" id="text-bcea" name="text" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white">
                                        </div>
                                        <div class="u-form-group u-form-partition-factor-2 u-form-group-21">
                                            <label for="text-94f1" class="u-label">Visa expiration date</label>
                                            <input type="text" id="text-94f1" name="number" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white" placeholder="Visa expiration date">
                                        </div>
                                        <div class="u-form-group u-form-partition-factor-2 u-form-group-22">
                                            <label for="text-47bf" class="u-label">Work license expiration date</label>
                                            <input type="text" placeholder="Work license expiration date" id="text-47bf" name="text-5" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white">
                                        </div>
                                        <div class="u-form-group u-form-partition-factor-2 u-form-group-23">
                                            <label for="text-adb6" class="u-label">Position</label>
                                            <input type="text" placeholder="Position" id="text-adb6" name="text-4" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white">
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="u-align-left u-container-style u-tab-pane u-white u-tab-pane-2" id="tab-14b7" role="tabpanel" aria-labelledby="link-tab-14b7">
                            <div class="u-container-layout u-container-layout-2">
                                <div class="u-expanded-height u-form u-form-4">
                                    <form action="mid" method="get" id="form4" class="u-clearfix u-form-spacing-10 u-form-vertical u-inner-form" source="email" name="form" style="padding: 10px;">
                                        <div class="u-form-group u-form-partition-factor-2 u-form-select u-form-group-25">
                                            <label for="select-2c5f" class="u-label">Certificate</label>
                                            <div class="u-form-select-wrapper">
                                                <select id="select-2c5f" name="select-1" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white">
                                                    <option value="Graduate">Graduate</option>
                                                    <option value="Bachelor">Bachelor</option>
                                                    <option value="Master">Master</option>
                                                    <option value="Doctor">Doctor</option>
                                                    <option value="Other">Other</option>
                                                </select>
                                                <svg xmlns="http://www.w3.org/2000/svg" width="14" height="12" version="1" class="u-caret"><path fill="currentColor" d="M4 8L0 4h8z"></path></svg>
                                            </div>
                                        </div>
                                        <div class="u-form-group u-form-name u-form-partition-factor-2">
                                            <label for="name-2be9" class="u-label">Working Time</label>
                                            <input type="text" placeholder="Enter your working Time" id="name-2be9" name="name" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white" required="">
                                        </div>
                                        <div class="u-form-email u-form-group u-form-partition-factor-2">
                                            <label for="email-2be9" class="u-label">Approver</label>
                                            <input type="email" placeholder="Enter a valid email address" id="email-2be9" name="text-2" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white" required="">
                                        </div>
                                        <div class="u-form-group u-form-partition-factor-2 u-form-select u-form-group-28">
                                            <label for="select-c74b" class="u-label">BirthPlace</label>
                                            <div class="u-form-select-wrapper">
                                                <select id="select-c74b" name="select-2" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white">
                                                    <option value="Ha Noi">Ha Noi</option>
                                                    <option value="HCM City">HCM City</option>
                                                    <option value="Da Nang">Da Nang</option>
                                                </select>
                                                <svg xmlns="http://www.w3.org/2000/svg" width="14" height="12" version="1" class="u-caret"><path fill="currentColor" d="M4 8L0 4h8z"></path></svg>
                                            </div>
                                        </div>
                                        <div class="u-form-group u-form-partition-factor-2 u-form-select u-form-group-29">
                                            <label for="select-18ac" class="u-label">Certificate Level</label>
                                            <div class="u-form-select-wrapper">
                                                <select id="select-18ac" name="select" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white">
                                                    <option value="Graduate">Graduate</option>
                                                    <option value="Bachelor">Bachelor</option>
                                                    <option value="Master">Master</option>
                                                    <option value="Doctor">Doctor</option>
                                                    <option value="Other">Other</option>
                                                </select>
                                                <svg xmlns="http://www.w3.org/2000/svg" width="14" height="12" version="1" class="u-caret"><path fill="currentColor" d="M4 8L0 4h8z"></path></svg>
                                            </div>
                                        </div>
                                        <div class="u-form-group u-form-partition-factor-2 u-form-group-30">
                                            <label for="text-ac53" class="u-label">Id number</label>
                                            <input type="text" placeholder="ID" id="text-ac53" name="text-1" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white">
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="u-align-left u-form-group u-form-submit">
                    <a href="#" onclick="formCreate()" class="u-btn u-btn-submit u-button-style u-text-black u-white u-btn-3">Submit</a>
                    <input type="submit" onclick="formCreate()" style="color: black" value="submit" class="u-form-control-hidden">
                </div>
            </div>
        </section>
        <section class="u-align-center u-clearfix u-section-2" id="sec-992b">
            <div class="u-clearfix u-sheet u-valign-middle u-sheet-1"></div>
        </section>
        <script>
            function formCreate() {
                alert("duc anh dep trai");
                document.forms["form1"].submit();
                document.forms["form2"].submit();
//                document.getElementById("Form2").submit();
//                document.getElementById("Form3").submit();
//                document.getElementById("Form4").submit();
            }
        </script>
    </body></html>