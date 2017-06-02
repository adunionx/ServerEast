{if $pagetitle eq $LANG.carttitle}</div>{/if}

<!--  Footer -->
    <div class="social">
        <div class="row">

            <div class="col-sm-6">
                <ul>
                    <li><a href="#" title="facebook" target="_blank"><i class="fa fa-facebook"></i></a>
                    </li>
                    <li><a href="#" title="twitter" target="_blank"><i class="fa fa-twitter"></i></a>
                    </li>
                    <li><a href="#" title="pinterest" target="_blank"><i class="fa fa-pinterest"></i></a>
                    </li>
                    <li><a href="#" title="rss" target="_blank"><i class="fa fa-rss"></i></a>
                    </li>
                    <li><a href="#" title="instagram" target="_blank"><i class="fa fa-instagram"></i></a>
                    </li>
                    <li><a href="#" title="github" target="_blank"><i class="fa fa-github"></i></a>
                    </li>
                </ul>
            </div>

            <div class="col-sm-6">

                <div id="mc_embed_signup">
                    <form class="form-inline validate" action="//audemedia.us7.list-manage.com/subscribe/post?u=b5638e105dac814ad84960d90&amp;id=9345afa0aa" method="post" id="mc-embedded-subscribe-form" name="mc-embedded-subscribe-form" target="_blank" novalidate>
                        <div class="row no-gutter">
                            <div class="col-sm-9">
                                <input type="email" value="" name="EMAIL" class="form-control" id="mce-EMAIL" placeholder="Subscribe to our newsletter" required>
                                <div style="position: absolute; left: -5000px;">
                                    <input type="text" name="b_b5638e105dac814ad84960d90_9345afa0aa" tabindex="-1" value="">
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <input type="submit" value="SUBSCRIBE" name="subscribe" id="mc-embedded-subscribe">
                            </div>

                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>


    <section class="footer">
        <div class="row">
            <div class="col-sm-3">
                <h4>Choose.</h4>
                <ul>
                    <li><a href="">Shared Hosting</a>
                    </li>
                    <li><a href="">Reseller Hosting</a>
                    </li>
                    <li><a href="">Cloud Managed VPS</a>
                    </li>
                    <li><a href="">Managed Dedicated Servers</a>
                    </li>
                </ul>
            </div>
            <div class="col-sm-3">
                <h4>Get Support.</h4>
                <ul>
                    <li><a href="">Contact Us</a>
                    </li>
                    <li><a href="">Knowledge Base</a>
                    </li>
                    <li><a href="">Submit a Ticket</a>
                    </li>
                </ul>
            </div>
            <div class="col-sm-3">
                <h4>Start.</h4>
                <ul>
                    <li><a href="">WordPress Hosting</a>
                    </li>
                    <li><a href="">Joomla Hosting</a>
                    </li>
                    <li><a href="">Magento Hosting</a>
                    </li>
                    <li><a href="">Drupal Hosting</a>
                    </li>
                </ul>
            </div>
            <div class="col-sm-3">
                <h4>Ask.</h4>
                <ul class="questions">
                    <li><a href=""><i class="fa fa-comment"></i> LIVE CHAT</a>
                    </li>
                    <li><i class="fa fa-phone"></i> +1.186.704.2263</li>
                    <li><a href=""><i class="fa fa-envelope"></i> E-MAIL US</a>
                    </li>
                </ul>
            </div>
        </div>
    </section>

    <div class="languages">
    <div class="row">
          <div class="col-sm-6">{$LANG.copyright} &copy; {$date_year} {$companyname}. {$LANG.allrightsreserved}.</div>
          <div class="col-sm-6">{if $langchange}<div id="languagechooser">{$setlanguage}</div>{/if}</div>
          </div>
          </div>
              <!--  End of Footer -->

{$footeroutput}

    <script src="templates/{$template}/js/bootstrap.js"></script>
    <script src="templates/{$template}/js/hoverIntent.js"></script>
    <script src="templates/{$template}/js/superfish.min.js"></script>
    <script src="templates/{$template}/js/jquery.slicknav.min.js"></script>
    <script src="templates/{$template}/js/tablesaw.stackonly.js"></script>
    <script src="templates/{$template}/js/jquery.circliful.min.js"></script>
    <script src="templates/{$template}/js/custom.js"></script>

</body>
</html>