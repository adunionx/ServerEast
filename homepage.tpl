{if $condlinks.domainreg || $condlinks.domaintrans || $condlinks.domainown}
<div class="well override domaincheck">
<div class="row">
<div class="col-sm-12">
        <h1>{$LANG.domaincheckerchoosedomain}</h1>
    <p>{$LANG.domaincheckerenterdomain}</p>
    <div class="text-center">
        <form method="post" action="{$systemsslurl}domainchecker.php">
        <input class="form-control" name="domain" type="text" value="{$LANG.domaincheckerdomainexample}" onfocus="if(this.value=='{$LANG.domaincheckerdomainexample}')this.value=''" onblur="if(this.value=='')this.value='{$LANG.domaincheckerdomainexample}'" />
        {if $captcha}
        <div class="captchainput" align="center">
            <p>{$LANG.captchaverify}</p>
            {if $captcha eq "recaptcha"}
            <p>{$recaptchahtml}</p>
            {else}
            <p><img src="includes/verifyimage.php" align="middle" /> <input type="text" name="code" class="input-sm" maxlength="5" /></p>
            {/if}
        </div>
        {/if}
        <div class="internalpadding">{if $condlinks.domainreg}<input type="submit" value="{$LANG.checkavailability}" class="btn btn-danger btn-lg" /> {/if}{if $condlinks.domaintrans}<input type="submit" name="transfer" value="{$LANG.domainstransfer}" class="btn btn-primary btn-lg" />{/if}{if $condlinks.domainown} <input type="submit" name="hosting" value="{$LANG.domaincheckerhostingonly}" class="btn btn-success btn-lg" />{/if}</div>
        </form>
    </div>
</div>
</div>
</div>
{/if}

<div class="row spacing-20">

<div class="col-sm-6">
    <div class="well override">
            <h2 class="badge">{$LANG.navservicesorder}</h2>
        <p>{$LANG.clientareahomeorder}</p>
        <form method="post" action="cart.php">
        <div class="text-center"><input type="submit" value="{$LANG.clientareahomeorderbtn} &raquo;" class="btn btn-danger btn-md" /></div>
        </form>
    </div>
</div>
<div class="col-sm-6">
    <div class="well override">
        <h2 class="badge">{$LANG.manageyouraccount}</h2>
        <p>{$LANG.clientareahomelogin}</p>
        <form method="post" action="clientarea.php">
        <div class="text-center"><input type="submit" value="{$LANG.clientareahomeloginbtn} &raquo;" class="btn btn-danger btn-md" /></div>
        </form>
    </div>
</div>

</div>


<div class="spacing-40">
<div class="row">
<div class="col-sm-12">

<div class="well override">

{if $twitterusername}

    <h2  class="badge">{$LANG.twitterlatesttweets}</h2>
<div id="twitterfeed">
    <p><img src="images/loading.gif"></p>
</div>
{literal}<script language="javascript">
jQuery(document).ready(function(){
  jQuery.post("announcements.php", { action: "twitterfeed", numtweets: 3 },
    function(data){
      jQuery("#twitterfeed").html(data);
    });
});
</script>{/literal}
{elseif $announcements}
<h2  class="badge">{$LANG.latestannouncements}</h2>
<div class="announcement-list">
{foreach from=$announcements item=announcement}
<div class="announcement-title"><span class="date">{$announcement.date}</span> <a href="{if $seofriendlyurls}announcements/{$announcement.id}/{$announcement.urlfriendlytitle}.html{else}announcements.php?id={$announcement.id}{/if}">{$announcement.title}</a></div><p  class="text-left">{$announcement.text|strip_tags|truncate:225:"..."}</p>
{/foreach}
</div>
{/if}
</div>
 </div>
</div>
</div>