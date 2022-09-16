<%-- 
    Document   : department_view
    Created on : Sep 16, 2022, 11:11:03 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html style="font-size: 16px;" lang="en"><head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="​​Department Detail">
    <meta name="description" content="">
    <title>Department Detail</title>
    <link rel="stylesheet" href="css/nicepage.css" media="screen">
<link rel="stylesheet" href="css/Home.css" media="screen">
<!--    <script class="u-script" type="text/javascript" src="jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="nicepage.js" defer=""></script>
    <meta name="generator" content="Nicepage 4.18.4, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
    <link id="u-page-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i">
    
    
    <script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": "",
		"logo": "images/default-logo.png"
}</script>
    <meta name="theme-color" content="#478ac9">
    <meta property="og:title" content="Home">
    <meta property="og:type" content="website">-->
  </head>
  <body data-home-page="Home.html" data-home-page-title="Home" class="u-body u-xl-mode" data-lang="en">
<!--      <header class="u-clearfix u-header u-header" id="sec-9ec6"><div class="u-clearfix u-sheet u-valign-middle u-sheet-1">
        <a href="https://nicepage.com" class="u-image u-logo u-image-1">
          <img src="images/default-logo.png" class="u-logo-image u-logo-image-1">
        </a>
        <nav class="u-menu u-menu-dropdown u-offcanvas u-menu-1">
          <div class="menu-collapse" style="font-size: 1rem; letter-spacing: 0px;">
            <a class="u-button-style u-custom-left-right-menu-spacing u-custom-padding-bottom u-custom-top-bottom-menu-spacing u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="#">
              <svg class="u-svg-link" viewBox="0 0 24 24"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#menu-hamburger"></use></svg>
              <svg class="u-svg-content" version="1.1" id="menu-hamburger" viewBox="0 0 16 16" x="0px" y="0px" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns="http://www.w3.org/2000/svg"><g><rect y="1" width="16" height="2"></rect><rect y="7" width="16" height="2"></rect><rect y="13" width="16" height="2"></rect>
</g></svg>
            </a>
          </div>
          <div class="u-nav-container">
            <ul class="u-nav u-unstyled u-nav-1"><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="Home.html" style="padding: 10px 20px;">Home</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="About.html" style="padding: 10px 20px;">About</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="Contact.html" style="padding: 10px 20px;">Contact</a>
</li></ul>
          </div>
          <div class="u-nav-container-collapse">-->
<!--            <div class="u-black u-container-style u-inner-container-layout u-opacity u-opacity-95 u-sidenav">
              <div class="u-inner-container-layout u-sidenav-overflow">
                <div class="u-menu-close"></div>
                <ul class="u-align-center u-nav u-popupmenu-items u-unstyled u-nav-2"><li class="u-nav-item"><a class="u-button-style u-nav-link" href="Home.html">Home</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="About.html">About</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="Contact.html">Contact</a>
</li></ul>
              </div>
            </div>
            <div class="u-black u-menu-overlay u-opacity u-opacity-70"></div>
          </div>
        </nav>
      </div></header>-->
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
                        <input type="text" placeholder="Department ID" id="name-e0f0" name="name" class="u-input u-input-rectangle u-radius-7 u-white u-input-1" required="">
                      </div>
                      <div class="u-form-email u-form-group u-label-left u-form-group-2">
                        <label for="email-e0f0" class="u-label u-spacing-12 u-label-2">Department name : </label>
                        <input type="email" placeholder="Department name" id="email-e0f0" name="email" class="u-input u-input-rectangle u-radius-7 u-white u-input-2" required="">
                      </div>
                      <div class="u-form-group u-form-select u-label-left u-form-group-3">
                        <label for="select-73f7" class="u-label u-spacing-12 u-label-3">Active status : </label>
                        <div class="u-form-select-wrapper">
                          <select id="select-73f7" name="select" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-radius-7 u-white u-input-3">
                            <option value="Item 1">Item 1</option>
                            <option value="Item 2">Item 2</option>
                            <option value="Item 3">Item 3</option>
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
                        </div>
                        <div class="u-align-left u-btn-submit-container">
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
              <div class="u-align-center u-container-style u-layout-cell u-size-19 u-layout-cell-2">
                <div class="u-container-layout u-container-layout-2">
                  <p class="u-custom-font u-font-montserrat u-text u-text-grey-40 u-text-2">Department Description<br>alo<br>blo<br>clo
                  </p>
                  <img class="u-expanded-width u-image u-image-contain u-image-default u-image-1" src="images/Untitled-2.png" alt="" data-image-width="688" data-image-height="432">
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    
    
<!--    <footer class="u-align-center u-clearfix u-footer u-grey-80 u-footer" id="sec-a7fc"><div class="u-clearfix u-sheet u-sheet-1">
        <p class="u-small-text u-text u-text-variant u-text-1">Sample text. Click to select the Text Element.</p>
      </div></footer>-->
<!--    <section class="u-backlink u-clearfix u-grey-80">
      <a class="u-link" href="https://nicepage.com/website-templates" target="_blank">
        <span>Website Templates</span>
      </a>
      <p class="u-text">
        <span>created with</span>
      </p>
      <a class="u-link" href="" target="_blank">
        <span>Website Builder Software</span>
      </a>. 
    </section>-->
  
</body></html>

