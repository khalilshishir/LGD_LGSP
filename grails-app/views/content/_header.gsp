<%--
  Created by IntelliJ IDEA.
  User: mahye
  Date: 8/24/14
  Time: 2:29 PM
  To change this template use File | Settings | File Templates.
--%>


<div class="container">
    <div id="header">

        <div id="flashContent" style="float:right;">
            <object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" width="336" height="106" id="flashes" align="middle">
                <param name="movie" value="${resource(dir: 'flash', file: 'flashes.swf')}" width="336" height="106" />

                %{--<param name="movie" value="flashes.swf" />--}%
                <param name="quality" value="high" />
                <param name="play" value="true" />
                <param name="loop" value="true" />
                <param name="wmode" value="transparent" />
                <param name="scale" value="showall" />
                <param name="menu" value="true" />
                <param name="devicefont" value="false" />
                <param name="salign" value="" />
                <param name="allowScriptAccess" value="sameDomain" />
                <object type="application/x-shockwave-flash" data="${resource(dir: 'flash', file: 'flashes.swf')}" width="336" height="106">

                <!--[if !IE]>-->
                %{--<object type="application/x-shockwave-flash" data="flashes.swf" width="336" height="106">--}%
                    <param name="movie" value="flashes.swf" />
                    <param name="quality" value="high" />
                    <param name="play" value="true" />
                    <param name="loop" value="true" />
                    <param name="wmode" value="transparent" />
                    <param name="scale" value="showall" />
                    <param name="menu" value="true" />
                    <param name="devicefont" value="false" />
                    <param name="salign" value="" />
                    <param name="allowScriptAccess" value="sameDomain" />
                    <!--<![endif]-->
                    <a href="http://www.adobe.com/go/getflash">
                        <img src="http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif" alt="Get Adobe Flash player" />
                    </a>
                    <!--[if !IE]>-->
                </object>
                <!--<![endif]-->
            </object>
        </div>
    </div><!--header-->
    <div id="navigation">
        <div id="smoothmenu1" class="ddsmoothmenu">
            <ul class="top_nav">
                <li><a href="/Lgsp/" id="ctl00_Header1_hylnkHome">Home</a></li>

                %{--<a class="home" href="/Lgsp/" style="color:#666; font-size: 11px;">Home</a>--}%
                |
                <li><a href="#" id="ctl00_Header1_hylnkProjectList">Projects </a>  </li>

                <li><a href="#" id="ctl00_Header1_hylnkDigitalMap">Digital Map </a>   </li>
                <li><a href="#" id="ctl00_Header1_hylnkRoadDB">Road Database  </a> </li>

                <li><a href="#" target="_blank">Webmail</a></li>
                <li>
                    <a href="#" target="_blank">Annual Report</a>
                    <ul>
                        <li><a href="#">Annual Report In English</a></li>
                        <li><a href="#" class=""><span class="bullet"></span>
                            বার্ষিক প্রতিবেদন</a>
                            <ul>
                                <li><a href="#" class=""><span class="bullet"></span>
                                    সংস্থার পরিচিতিমুলক তথ্য</a>
                                    <ul>
                                        <li><a style="font-size: 12px; font-family: vrinda;" href="SongsthaPorichiti.aspx">সংস্থার
                                        পরিচিতি ও পটভূমি</a></li>
                                        <li><a style="font-size: 12px; font-family: vrinda;" href="SongsthaProtistha.aspx">সংস্থার
                                        প্রতিষ্ঠা</a></li>
                                        <li><a style="font-size: 12px; font-family: vrinda;" href="SongstarKormokando.aspx">
                                            সংস্থার কর্মকাণ্ড</a></li>
                                        <li><a style="font-size: 12px; font-family: vrinda;" href="SangothonicKathamo.aspx">
                                            সাংগঠনিক কাঠামো</a></li>
                                        <li><a style="font-size: 12px; font-family: vrinda;" href="JonobolOfLGSP-II.aspx">অনুমোদিত
                                        জনবল</a></li>
                                        <li><a style="font-size: 12px; font-family: vrinda;" href="AR_KormokortaKormochariderDayitto.aspx">কর্মকর্তা/কর্মচারীদের
                                        দায় দায়িত্ব</a></li>
                                    </ul>
                                </li>
                                <li><a style="font-size: 12px; font-family: vrinda;" href="AR_AinOBidhi.aspx"><span class="bullet"></span>সংস্থার আইন ও বিধি</a></li>

                                <li><a style="font-size: 12px; font-family: vrinda;" href="AR_NathiClass.aspx"><span class="bullet"></span>এলজিইডি’র প্রশাসনিক নথি</a></li>

                                <li style="z-index: 98;"><a style="font-size: 12px; font-family: vrinda;" href="#" class=""><span class="bullet"></span>
                                    আর্থিক তথ্য</a>
                                    <ul>
                                        <li><a style="font-size: 12px; font-family: vrinda;" href="AR_KhatVittikBoroddaOByy.aspx">
                                            খাত ভিত্তিক বরাদ্দ ও ব্যয়</a></li>
                                        <li><a style="font-size: 12px; font-family: vrinda;" href="AR_AuditProtibedon.aspx">
                                            অডিট প্রতিবেদন</a></li>
                                    </ul>
                                </li>

                                <li><a style="font-size: 12px; font-family: vrinda;" href="#" class=""><span class="bullet"></span>
                                    এলজিইডি প্রকল্প</a>
                                    <ul>
                                        <li><a style="font-size: 12px; font-family: vrinda;" href="UnnoyonProkolpo.aspx">উন্নয়ন
                                        প্রকল্প</a></li>
                                        <li><a style="font-size: 12px; font-family: vrinda;" href="SamajikUnnoyonProkolpo.aspx">
                                            সামাজিক নিরাপত্তা প্রকল্প</a></li>

                                        <li><a style="font-size: 12px; font-family: vrinda;" href="AR_ProkolperAgragati.aspx">
                                            প্রকল্পের অগ্রগতি</a></li>
                                    </ul>
                                </li>

                                <li style="z-index: 96;"><a style="font-size: 12px; font-family: vrinda;" href=""><span class="bullet"></span>
                                    জনস্বার্থ সংশ্লিষ্ট তথ্য</a>
                                    <ul>
                                        <li><a style="font-size: 12px; font-family: vrinda;" href="News.aspx?newsType=1">এলজিইডি নিউজ </a></li>
                                    </ul>
                                </li>
                                <li><a style="font-size: 12px; font-family: vrinda;" href="BibhagioMamla.aspx"><span class="bullet"></span>বিভাগীয় মামলা</a></li>
                                <li><a style="font-size: 12px; font-family: vrinda;" href="AR_BigotoBarshikProtibedon.aspx">
                                    <span class="bullet"></span>বিগত বার্ষিক প্রতিবেদন</a></li>
                                <li><a style="font-size: 12px; font-family: vrinda;" href="DownloadForms.aspx"><span class="bullet"></span>ই-ডাউনলোড</a></li>
                            </ul>
                        </li>
                    </ul>
                </li>
                <li><a href="http://bangladesh.gov.bd/?q=bn/%E0%A6%9C%E0%A6%BE%E0%A6%A4%E0%A7%80%E0%A7%9F-%E0%A6%AC%E0%A6%BE%E0%A6%A4%E0%A6%BE%E0%A7%9F%E0%A6%A8">জেলা বাতায়ন</a></li>
                <li><a href="#">Training</a></li>
                <li><a href="${g.createLink(controller: 'up_Proc_Master',action: 'upProcurement')}"> ক্রয় (ইউনিয়ন পরিষদ)</a></li>
                %{--<li><a href="${g.createLink(controller: 'Up_Asset_Regi_MasterController',action: 'upAsset')}"> সম্পদ   (ইউনিয়ন পরিষদ)</a></li>--}%
                <li> <a href="${g.createLink(controller: 'up_Asset_Regi_Master', action: 'upAsset')}">সম্পদ   (ইউনিয়ন পরিষদ)</a> </li>
            </ul>
            <div class="clear"></div>
        </div>
    </div><!--navigation-->
</div><!--container-->
