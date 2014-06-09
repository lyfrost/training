<%@ page import="resokaskus.training.TrainingUnit; resokaskus.training.Training; resokaskus.training.News; resokaskus.training.Training; resokaskus.training.TrainingUnit" %>
<!doctype html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>Sisdiklat BPRTIK</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
    <link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
    <link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'mobile.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'templatedkampret', file: 'style.css')}" type="text/css">
    <script type="text/javascript" src="${resource(dir: 'templatedkampret', file: 'jquery.js')}"></script>
    <script type="text/javascript" src="${resource(dir: 'templatedkampret', file: 'script.js')}"></script>
    <g:layoutHead/>
    <r:layoutResources/>
</head>

<body>

<div id="art-page-background-glare">
    <div id="art-page-background-glare-image"></div>
</div>

<div id="art-main">
<div class="cleared reset-box"></div>

<div class="art-header">
    <div class="art-header-clip">
        <div class="art-header-png"></div>

        <div class="art-header-jpeg"></div>
    </div>

    <div class="art-header-wrapper">
        <div class="art-header-inner">
            <div class="art-headerobject"></div>
            <script type="text/javascript" src="${resource(dir: 'templatedkampret', file: 'swfobject.js')}"></script>

            <div id="art-flash-area">
                <div id="art-flash-container">
                    <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" width="992" height="200"
                            id="art-flash-object">
                        <param name="movie" value="container.swf"/>
                        <param name="quality" value="high"/>
                        <param name="scale" value="default"/>
                        <param name="wmode" value="transparent"/>
                        <param name="flashvars"
                               value="color1=0xFFFFFF&amp;alpha1=.58&amp;framerate1=24&amp;loop=true&amp;wmode=transparent&amp;clip=${resource(dir: 'templatedkampret', file: 'images/flash.swf')}&amp;radius=20&amp;clipx=0&amp;clipy=-24&amp;initalclipw=900&amp;initalcliph=225&amp;clipw=992&amp;cliph=248&amp;width=992&amp;height=200&amp;textblock_width=0&amp;textblock_align=no&amp;hasTopCorners=true&amp;hasBottomCorners=true"/>
                        <param name="swfliveconnect" value="true"/>
                        <!--[if !IE]>-->
                        <object type="application/x-shockwave-flash"
                                data="${resource(dir: 'templatedkampret', file: 'container.swf')}" width="992"
                                height="200">
                            <param name="quality" value="high"/>
                            <param name="scale" value="default"/>
                            <param name="wmode" value="transparent"/>
                            <param name="flashvars"
                                   value="color1=0xFFFFFF&amp;alpha1=.58&amp;framerate1=24&amp;loop=true&amp;wmode=transparent&amp;clip=${resource(dir: 'templatedkampret', file: 'images/flash.swf')}&amp;radius=20&amp;clipx=0&amp;clipy=-24&amp;initalclipw=900&amp;initalcliph=225&amp;clipw=992&amp;cliph=248&amp;width=992&amp;height=200&amp;textblock_width=0&amp;textblock_align=no&amp;hasTopCorners=true&amp;hasBottomCorners=true"/>
                            <param name="swfliveconnect" value="true"/>
                            <!--<![endif]-->
                            <div class="art-flash-alt"><a href="http://www.adobe.com/go/getflashplayer"><img
                                    src="http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif"
                                    alt="Get Adobe Flash player"/></a></div>
                            <!--[if !IE]>-->
                        </object>
                        <!--<![endif]-->
                    </object>
                </div>
            </div>
            <script type="text/javascript">    swfobject.switchOffAutoHideShow();
            swfobject.registerObject("art-flash-object", "9.0.0", "${resource(dir: 'templatedkampret', file: 'expressInstall.swf')}");</script>

            <div class="art-logo">
                <h1 class="art-logo-name"><a
                        href="http://${request.serverName}:${request.serverPort}${request.contextPath}">Sistem Pendidikan dan Pelatihan BPRTIK</a>
                </h1>

                <h2 class="art-logo-text">SISDIKLAT BPRTIK</h2>
            </div>
        </div>
    </div>
</div>

<div class="cleared reset-box"></div>

<div class="art-sheet">
<div class="art-sheet-tl"></div>

<div class="art-sheet-tr"></div>

<div class="art-sheet-bl"></div>

<div class="art-sheet-br"></div>

<div class="art-sheet-tc"></div>

<div class="art-sheet-bc"></div>

<div class="art-sheet-cl"></div>

<div class="art-sheet-cr"></div>

<div class="art-sheet-cc"></div>

<div class="art-sheet-body">
<div class="art-nav">
    <div class="art-nav-l"></div>

    <div class="art-nav-r"></div>

    <div class="art-nav-outer">
        <div class="art-nav-center">
            <ul class="art-hmenu">
                <li>
                    <a href="http://${request.serverName}:${request.serverPort}${request.contextPath}"><span
                            class="l"></span><span class="r"></span><span
                            class="t">Beranda</span></a>
                </li>

                <li>
                    <g:link controller="news" action="list"><span class="l"></span><span class="r"></span><span
                            class="t">Berita</span></g:link>

                    <g:if test="${session.user?.getType() == 'Admin'}">
                        <ul>
                            <li>
                                <g:link controller="news" action="create"><span class="l"></span><span
                                        class="r"></span><span
                                        class="t">Buat Berita Baru</span></g:link>
                            </li>
                        </ul>
                    </g:if>
                </li>

                <li>
                    <g:link controller="training" action="list"><span class="l"></span><span class="r"></span><span
                            class="t">Training</span></g:link>

                    <g:if test="${session.user?.getType() == 'Admin'}">
                        <ul>
                            <li>
                                <g:link controller="training" action="create"><span class="l"></span><span
                                        class="r"></span><span
                                        class="t">Buat Training Baru</span></g:link>
                            </li>
                        </ul>
                    </g:if>

                    <g:if test="${session.user?.getType() == 'Trainer'}">
                        <ul>
                            <li>
                                <g:link controller="training" action="relatedToTrainer"><span class="l"></span><span
                                        class="r"></span><span
                                        class="t">Training yang Saya Ajar</span></g:link>
                            </li>
                        </ul>
                    </g:if>

                    <g:elseif test="${session.user?.getType() == 'Student' || session.user?.getType() == 'Trainer'}">
                        <ul>
                            <li>
                                <g:link controller="grade" action="relatedToStudent"><span class="l"></span><span
                                        class="r"></span><span
                                        class="t">Nilai Training yang Saya Ikuti</span></g:link>
                            </li>
                        </ul>
                    </g:elseif>
                </li>

                <li>
                    <g:link controller="packet" action="list"><span class="l"></span><span class="r"></span><span
                            class="t">Paket</span></g:link>

                    <g:if test="${session.user?.getType() == 'Admin'}">
                        <ul>
                            <li>
                                <g:link controller="packet" action="create"><span class="l"></span><span
                                        class="r"></span><span
                                        class="t">Buat Paket Baru</span></g:link>
                            </li>
                        </ul>
                    </g:if>
                </li>

                <g:if test="${session.user?.getType() == 'Admin'}">

                    <li>
                        <g:link controller="registration" action="create"><span class="l"></span><span
                                class="r"></span><span
                                class="t">Registrasi Baru</span></g:link>
                    </li>

                    <li>
                        <g:link controller="user" action="list"><span class="l"></span><span class="r"></span><span
                                class="t">Pengguna</span></g:link>
                        <ul>
                            <li>
                                <g:link controller="user" action="create"><span class="l"></span><span
                                        class="r"></span><span
                                        class="t">Buat User Baru</span></g:link>
                            </li>
                        </ul>
                    </li>

                    <li>
                        <g:link controller="room" action="list"><span class="l"></span><span class="r"></span><span
                                class="t">Ruangan</span></g:link>

                        <ul>
                            <li>
                                <g:link controller="room" action="create"><span class="l"></span><span
                                        class="r"></span><span
                                        class="t">Daftarkan Ruangan Baru</span></g:link>
                            </li>
                        </ul>
                    </li>
                </g:if>

                <g:elseif test="${session.user?.getType() == 'Trainer'}">
                    <li>
                        <g:link controller="grade" action="list"><span class="l"></span><span class="r"></span><span
                                class="t">Penilaian</span></g:link>

                        <ul>
                            <li>
                                <g:link controller="grade" action="create"><span class="l"></span><span
                                        class="r"></span><span
                                        class="t">Buat Nilai Baru</span></g:link>
                            </li>
                        </ul>
                    </li>
                </g:elseif>
                
                <g:if test="${session.user?.getType() != 'Admin'}">
                  <li>
                      <g:link controller="contact" action="index"><span class="l"></span><span class="r"></span><span
                              class="t">Hubungi Kami</span></g:link>
                  </li>
                </g:if>
                
                <g:else>                    
                    <li>
                        <g:link controller="stat" action="index"><span class="l"></span><span
                                class="r"></span><span
                                class="t">Statistik</span></g:link>
                    </li>                       
                </g:else>
				
				<g:if test="${!session.user}">
					<li>
						<g:link controller="user" action="login"><span class="l"></span><span
								class="r"></span><span
								class="t">Login</span></g:link>
					</li>
				</g:if>
				
				<g:else>
					<li>
						<g:link controller="user" action="logout"><span class="l"></span><span
								class="r"></span><span
								class="t">Logout</span></g:link>
					</li>
				</g:else>
            </ul>
        </div>
    </div>
</div>

<div class="cleared reset-box"></div>

<div class="art-content-layout">
<div class="art-content-layout-row">
<div class="art-layout-cell art-sidebar1">
    <marquee style="color:white">Selamat Datang di Sistem Pendidikan dan Pelatihan BPRTIK</marquee>
    <div class="art-block">
        <div class="art-block-tl"></div>

        <div class="art-block-tr"></div>

        <div class="art-block-bl"></div>

        <div class="art-block-br"></div>

        <div class="art-block-tc"></div>

        <div class="art-block-bc"></div>

        <div class="art-block-cl"></div>

        <div class="art-block-cr"></div>

        <div class="art-block-cc"></div>
        
        <div class="art-block-body">
            <g:if test="${session.user}">
                Anda Login Sebagai: ${session.user?.userId}
            </g:if>
            <div class="art-blockheader">
                <div class="l"></div>

                <div class="r"></div>

                <h3 class="t">Cari</h3>
            </div>

            <div class="art-blockcontent">
                <div class="art-blockcontent-body">
                    <div>

                        <g:form action="index" controller="searchable" style="font-size: small;">
                            <div class="search" style="margin-left: 10px">
                                <input type="text" name="q" value="${params.q}"/>
                                <input class="art-button" type="submit" value="Cari"/>
                            </div>
                        </g:form>
                    </div>

                    <div class="cleared"></div>
                </div>
            </div>

            <div class="cleared"></div>
        </div>
    </div>

    <div class="art-block">
        <div class="art-block-tl"></div>

        <div class="art-block-tr"></div>

        <div class="art-block-bl"></div>

        <div class="art-block-br"></div>

        <div class="art-block-tc"></div>

        <div class="art-block-bc"></div>

        <div class="art-block-cl"></div>

        <div class="art-block-cr"></div>

        <div class="art-block-cc"></div>

        <div class="art-block-body">
            <div class="art-blockheader">
                <div class="l"></div>

                <div class="r"></div>

                <h3 class="t">Kelas Berikutnya</h3>
            </div>

            <div class="art-blockcontent">
                <div class="art-blockcontent-body">

                    <ul>
                        <g:each var='eu'
                                in="${TrainingUnit.findAllByStartGreaterThan(new Date(), [sort: "start", order: "desc"])}">
                            <li>
                                <g:link controller="trainingUnit" action="show" id="${eu.id}">
                                    ${eu.toString()}
                                </g:link>
                            </li>
                        </g:each>
                    </ul>
                    <div class="cleared"></div>
                </div>
            </div>

            <div class="cleared"></div>
        </div>
    </div>

    <div class="art-block">
        <div class="art-block-tl"></div>

        <div class="art-block-tr"></div>

        <div class="art-block-bl"></div>

        <div class="art-block-br"></div>

        <div class="art-block-tc"></div>

        <div class="art-block-bc"></div>

        <div class="art-block-cl"></div>

        <div class="art-block-cr"></div>

        <div class="art-block-cc"></div>

        <div class="art-block-body">
            <div class="art-blockheader">
                <div class="l"></div>

                <div class="r"></div>

                <h3 class="t">Training Berikutnya</h3>
            </div>

            <div class="art-blockcontent">
                <div class="art-blockcontent-body">

                    <ul>
                        <g:each var='eu'
                                in="${Training.findAllByDeadlineGreaterThan(new Date(), [sort: "deadline", order: "desc"])}">
                            <li>
                                <g:link controller="training" action="show" id="${eu.id}">
                                    ${eu.toString()}
                                </g:link>
                            </li>
                        </g:each>
                    </ul>

                    <div class="cleared"></div>
                </div>
            </div>

            <div class="cleared"></div>
        </div>
    </div>

    <div class="art-block">
        <div class="art-block-tl"></div>

        <div class="art-block-tr"></div>

        <div class="art-block-bl"></div>

        <div class="art-block-br"></div>

        <div class="art-block-tc"></div>

        <div class="art-block-bc"></div>

        <div class="art-block-cl"></div>

        <div class="art-block-cr"></div>

        <div class="art-block-cc"></div>

        <div class="art-block-body">
            <div class="art-blockheader">
                <div class="l"></div>

                <div class="r"></div>

                <h3 class="t">Daftar Berita</h3>
            </div>

            <div class="art-blockcontent">
                <div class="art-blockcontent-body">

                    <ul>
                        <g:each var='n' in="${News.list(max: 10, sort: "date", order: "desc")}">
                            <li>
                                <g:link controller="news" action="show" id="${n.id}">
                                    ${n.toString()}
                                </g:link>
                            </li>
                        </g:each>
                    </ul>

                    <div class="cleared"></div>
                </div>
            </div>

            <div class="cleared"></div>
        </div>
    </div>

    <div class="cleared"></div>
</div>

<div class="art-layout-cell art-content">
    <div class="art-post">
        <div class="art-post-tl"></div>

        <div class="art-post-tr"></div>

        <div class="art-post-bl"></div>

        <div class="art-post-br"></div>

        <div class="art-post-tc"></div>

        <div class="art-post-bc"></div>

        <div class="art-post-cl"></div>

        <div class="art-post-cr"></div>

        <div class="art-post-cc"></div>

        <div class="art-post-body">
            <g:layoutBody/>
            <div class="cleared"></div>
        </div>
    </div>

    <div class="cleared"></div>
</div>
</div>
</div>

<div class="cleared"></div>

<div class="art-footer">
    <div class="art-footer-t"></div>

    <div class="art-footer-l"></div>

    <div class="art-footer-b"></div>

    <div class="art-footer-r"></div>

    <div class="art-footer-body">
        <a href="#" class="art-rss-tag-icon" title="RSS"></a>

        <div class="art-footer-text">

            <p><a href="http://www.kemkominfo.go.id">Situs Kemkominfo</a> | <a
                    href="http://www.uinjkt.ac.id">Situs UIN Jakarta</a> | <a href="http://www.kaskus.us">Developer</a>
            </p>

            <p>Copyright © 2012, A. Bambang Suprianto, TI UIN Jakarta</p>

            <p>Powered by Grails, MySQL and Artisteer</p>

        </div>

        <div class="cleared"></div>
    </div>
</div>

<div class="cleared"></div>
</div>
</div>


<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
<g:javascript library="application"/>
<r:layoutResources/>
</body>
</html>