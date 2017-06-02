<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="content-type" content="text/html; charset={$charset}" />
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <title>{if $kbarticle.title}{$kbarticle.title} - {/if}{$pagetitle} - {$companyname}</title>
    <link rel="shortcut icon" href="itemplates/{$template}/img/favicon.png" />
    <link href='http://fonts.googleapis.com/css?family=Hind:400,300,600,500,700&amp;subset=latin,latin-ext' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>

    {if $systemurl}<base href="{$systemurl}" />
    {/if}
    <script type="text/javascript" src="templates/{$template}/js/jquery.min.js"></script>
    {if $livehelpjs}{$livehelpjs}
    {/if}
    <link href="templates/{$template}/css/bootstrap.css" rel="stylesheet">
    <link href="templates/{$template}/css/bootstrap-theme.css" rel="stylesheet">
    <link href="templates/{$template}/css/font-awesome.min.css" rel="stylesheet">
    <link href="templates/{$template}/css/slicknav.css" rel="stylesheet">
    <link href="templates/{$template}/css/tablesaw.stackonly.css" rel="stylesheet">
    <link href="templates/{$template}/css/jquery.circliful.css" rel="stylesheet" />
    <link href="templates/{$template}/css/whmcs.css" rel="stylesheet">
    <link href="templates/{$template}/css/style.css" rel="stylesheet">

    <script src="templates/{$template}/js/whmcs.js"></script>

    {$headoutput}

  </head>

  <body>

{$headeroutput}
 <!-- Top Bar-->
    <div class="top">
        <div class="row">
            <div class="col-sm-3">
                <div class="logo">
                    <a href="index.php"><img src="templates/{$template}/img/logo.png" alt="{$companyname}" />
                    </a>
                </div>
            </div>
            <div class="col-sm-9">

                <nav id="desktop-menu">
                    <ul class="sf-menu" id="navigation">
                        <li><a href="#">Home</a>
                            <ul>
                                <li><a href="http://themes.audemedia.com/html/servereast/index.html">Image Slider</a>
                                </li>
                                <li><a href="http://themes.audemedia.com/html/servereast/index-video.html">Video Header</a></li>
                            </ul>
                        </li>
                        <li><a href="#">Hosting</a>
                            <ul>
                                <li><a href="http://themes.audemedia.com/html/servereast/shared.html">Shared Hosting</a>
                                </li>
                                <li><a href="http://themes.audemedia.com/html/servereast/vps.html">Cloud VPS</a>
                                <ul>
                                <li><a href="http://themes.audemedia.com/html/servereast/vps-slider-3-plans.html">3 Plans Slider</a></li>
                                <li><a href="http://themes.audemedia.com/html/servereast/vps-slider-5-plans.html">5 Plans Slider</a></li>
                                <li><a href="http://themes.audemedia.com/html/servereast/vps-slider-6-plans.html">6 Plans Slider</a></li>
                                </ul>
                                </li>
                                <li><a href="http://themes.audemedia.com/html/servereast/servers.html">Dedicated Servers</a>
                                </li>
                            </ul>
                        </li>
                        <li><a href="http://themes.audemedia.com/html/servereast/domains.html">Domains</a>
                        </li>
                        <li><a href="#">Pages</a>
                            <ul>
                                <li><a href="http://themes.audemedia.com/html/servereast/about.html">About</a>
                                </li>
                                <li><a href="http://themes.audemedia.com/html/servereast/faq.html">FAQ</a>
                                </li>
                                <li><a href="http://themes.audemedia.com/html/servereast/login.html">Login</a>
                                </li>
                                <li><a href="http://themes.audemedia.com/html/servereast/datacenter.html">Datacenter</a>
                                </li>
                                <li><a href="http://themes.audemedia.com/html/servereast/elements.html">Elements</a>
                                </li>
                            </ul>
                        </li>
                        <li><a href="#">Blog</a>
                            <ul>
                                <li><a href="http://themes.audemedia.com/html/servereast/blog-category.html">Category</a>
                                </li>
                                <li><a href="http://themes.audemedia.com/html/servereast/blog-single.html">Single</a>
                                </li>
                            </ul>
                        </li>
                        <li><a href="http://themes.audemedia.com/html/servereast/contact.html">Contact</a>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
    </div>
    <!-- End of Top Bar-->

 <div class="whmcs-menu">
        <div class="row">
            <div class="col-sm-12">
     <nav class="navbar" role="navigation">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#main-navbar">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                    </div>


  <div class="collapse navbar-collapse" id="main-navbar">
            <ul class="nav navbar-nav">
            <li><a id="Menu-Home" href="{if $loggedin}clientarea{else}index{/if}.php">{$LANG.hometitle}</a></li>
{if $loggedin}
        <li class="dropdown"><a id="Menu-Services" class="dropdown-toggle" data-toggle="dropdown" href="#">{$LANG.navservices}&nbsp;<b class="caret"></b></a>
          <ul class="dropdown-menu">
            <li><a id="Menu-Services-My_Services" href="clientarea.php?action=products">{$LANG.clientareanavservices}</a></li>
            {if $condlinks.pmaddon}<li><a id="Menu-Services-My_Projects" href="index.php?m=project_management">{$LANG.clientareaprojects}</a></li>{/if}
            <li><a id="Menu-Services-Order_New_Services" href="cart.php">{$LANG.navservicesorder}</a></li>
            <li><a id="Menu-Services-View_Available_Addons" href="cart.php?gid=addons">{$LANG.clientareaviewaddons}</a></li>
          </ul>
        </li>


          {if $condlinks.domainreg || $condlinks.domaintrans}
            <li class="dropdown"><a id="Menu-Domains" class="dropdown-toggle" data-toggle="dropdown" href="#">{$LANG.navdomains}&nbsp;<b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a id="Menu-Domains-My_Domains" href="clientarea.php?action=domains">{$LANG.clientareanavdomains}</a></li>
                <li><a id="Menu-Domains-Renew_Domains" href="cart.php?gid=renewals">{$LANG.navrenewdomains}</a></li>
                {if $condlinks.domainreg}<li><a id="Menu-Domains-Register_a_New_Domain" href="cart.php?a=add&domain=register">{$LANG.navregisterdomain}</a></li>{/if}
                {if $condlinks.domaintrans}<li><a id="Menu-Domains-Transfer_Domains_to_Us" href="cart.php?a=add&domain=transfer">{$LANG.navtransferdomain}</a></li>{/if}
                {if $enomnewtldsenabled}<li><a id="Menu-Domains-Preregister_New_TLDs" href="{$enomnewtldslink}">Preregister New TLDs</a></li>{/if}
                <li><a id="Menu-Domains-Whois_Lookup" href="domainchecker.php">{$LANG.navwhoislookup}</a></li>
              </ul>
            </li>
         {/if}

            <li class="dropdown"><a id="Menu-Billing" class="dropdown-toggle" data-toggle="dropdown" href="#">{$LANG.navbilling}&nbsp;<b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a id="Menu-Billing-My_Invoices" href="clientarea.php?action=invoices">{$LANG.invoices}</a></li>
                <li><a id="Menu-Billing-My_Quotes" href="clientarea.php?action=quotes">{$LANG.quotestitle}</a></li>
                {if $condlinks.addfunds}<li><a id="Menu-Billing-Add_Funds" href="clientarea.php?action=addfunds">{$LANG.addfunds}</a></li>{/if}
                {if $condlinks.masspay}<li><a id="Menu-Billing-Mass_Payment" href="clientarea.php?action=masspay&all=true">{$LANG.masspaytitle}</a></li>{/if}
                {if $condlinks.updatecc}<li><a id="Menu-Billing-Manage_Credit_Card" href="clientarea.php?action=creditcard">{$LANG.navmanagecc}</a></li>{/if}
              </ul>
            </li>

            <li class="dropdown"><a id="Menu-Support" class="dropdown-toggle" data-toggle="dropdown" href="#">{$LANG.navsupport}&nbsp;<b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a id="Menu-Support-Tickets" href="supporttickets.php">{$LANG.navtickets}</a></li>
                <li><a id="Menu-Support-Knowledgebase" href="knowledgebase.php">{$LANG.knowledgebasetitle}</a></li>
                <li><a id="Menu-Support-Downloads" href="downloads.php">{$LANG.downloadstitle}</a></li>
                <li><a id="Menu-Support-Network_Status" href="serverstatus.php">{$LANG.networkstatustitle}</a></li>
              </ul>
            </li>

            <li><a id="Menu-Open_Ticket" href="submitticket.php">{$LANG.navopenticket}</a></li>

          {if $condlinks.affiliates}
          {/if}

{if $livehelp}
            <li><a id="Menu-Live_Chat" href="#" class="LiveHelpButton">Live Chat - <span class="LiveHelpTextStatus">Offline</span></a></li>
{/if}

            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" id="Menu-Hello_User">{$LANG.hello}, {$loggedinuser.firstname}!&nbsp;<b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a id="Menu-Hello_User-Edit_Account_Details" href="clientarea.php?action=details">{$LANG.editaccountdetails}</a></li>
                {if $condlinks.updatecc}<li><a id="Menu-Hello_User-Contacts_Sub-Accounts" href="clientarea.php?action=creditcard">{$LANG.navmanagecc}</a></li>{/if}
                <li><a href="clientarea.php?action=contacts">{$LANG.clientareanavcontacts}</a></li>
                {if $condlinks.addfunds}<li><a id="Menu-Hello_User-Add_Funds" href="clientarea.php?action=addfunds">{$LANG.addfunds}</a></li>{/if}
                <li><a id="Menu-Hello_User-Email_History" href="clientarea.php?action=emails">{$LANG.navemailssent}</a></li>
                <li><a id="Menu-Hello_User-Change_Password" href="clientarea.php?action=changepw">{$LANG.clientareanavchangepw}</a></li>
                <li><a id="Menu-Hello_User-Logout" href="logout.php">{$LANG.logouttitle}</a></li>
              </ul>
            </li>
{else}
            <li><a id="Menu-Annoucements" href="announcements.php">{$LANG.announcementstitle}</a></li>

            <li><a id="Menu-Knowledgebase" href="knowledgebase.php">{$LANG.knowledgebasetitle}</a></li>

            <li><a id="Menu-Network_Status" href="serverstatus.php">{$LANG.networkstatustitle}</a></li>

            <li><a id="Menu-Affiliates" href="affiliates.php">{$LANG.affiliatestitle}</a></li>

            <li><a id="Menu-Contact_Us" href="contact.php">{$LANG.contactus}</a></li>

{if $livehelp}
            <li><a id="Menu-Live_Chat" href="#" class="LiveHelpButton">Live Chat - <span class="LiveHelpTextStatus">Offline</span></a></li>
{/if}

            <li class="dropdown"><a id="Menu-Account" class="dropdown-toggle" data-toggle="dropdown" href="#">{$LANG.account}&nbsp;<b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a id="Menu-Account-Login" href="clientarea.php">{$LANG.login}</a></li>
                <li><a id="Menu-Account-Register" href="register.php">{$LANG.register}</a></li>
                <li><a id="Menu-Account-Forgot_Password" href="pwreset.php">{$LANG.forgotpw}</a></li>
              </ul>
            </li>
          </ul>

{/if}
</div>
</nav>
</div>
</div>
</div>

{if $pagetitle eq $LANG.carttitle}<div id="whmcsorderfrm">{/if}

