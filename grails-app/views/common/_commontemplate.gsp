<head>
    <nav:resources/>
</head>

<g:if test="${!session.user}">
    <!-- Start, Created using Button Shop, www.kristanixsoftware.com -->

<!-- PLACE THIS LINK LINE IN HEAD TAG -->
    <link rel="stylesheet" href="${resource(dir: 'anonimousmenu-files', file: 'style.css')}" type="text/css">

    <div id="multi-level">
        <ul id="menu">
            <li title="" class="top b1"><a href="#" id="b1"><span>training</span></a></li>
            <li title="" class="top b2"><a href="#" id="b2"><span>Berita</span></a></li>
            <li title="" class="top b3"><a href="#" id="b3"><span>Hubungi Kami</span><!--[if IE 7]><!-->
            </a><!--<![endif]-->
            <!--[if lte IE 6]><table><tr><td><![endif]-->
                <ul class="sub">
                    <li><a title="" href="#">Kontak Kami</a></li>
                    <li><a title="" href="#">Tentang Aplikasi Ini</a></li>
                </ul>
                <!--[if lte IE 6]></td></tr></table></a><![endif]-->
            </li>
            <li title="" class="top b4"><a href="#" id="b4"><span>Afiliasi</span><!--[if IE 7]><!--></a><!--<![endif]-->
            <!--[if lte IE 6]><table><tr><td><![endif]-->
                <ul class="sub">
                    <li><a title="" href="#">Situs Kemkominfo</a></li>
                    <li><a title="" href="#">Situs UIN Jakarta</a></li>
                </ul>
                <!--[if lte IE 6]></td></tr></table></a><![endif]-->
            </li>
        </ul>
    </div>
    <br/>
    <br/>
    <!-- End, Created using Button Shop, www.kristanixsoftware.com -->
</g:if>

<g:elseif test="${session.user.getType() == 'Admin'}">
    <!-- PLACE THIS LINK LINE IN HEAD TAG -->
    <link rel="stylesheet" href="${resource(dir: 'adminmenu-files', file: 'style.css')}" type="text/css">

    <div id="multi-level">
        <ul id="menu">
            <li title="" class="top b1"><a href="#" id="b1"><span>User</span><!--[if IE 7]><!--></a><!--<![endif]-->
            <!--[if lte IE 6]><table><tr><td><![endif]-->
                <ul class="sub">
                    <li><a title="" href="#">Daftar Peserta</a></li>
                    <li><a title="" href="#">Daftar Pengajar</a></li>
                    <li style="font-size: 0px; border:1px solid #808080; border-style: solid none none none; height: 0px; padding: 0px; margin: 0px;"></li>
                    <li><a title="" href="#">Buat User Baru</a></li>
                </ul>
                <!--[if lte IE 6]></td></tr></table></a><![endif]-->
            </li>
            <li title="" class="top b2"><a href="#" id="b2"><span>training</span><!--[if IE 7]><!-->
            </a><!--<![endif]-->
            <!--[if lte IE 6]><table><tr><td><![endif]-->
                <ul class="sub">
                    <li><a title="" href="#">Daftar training</a></li>
                    <li><a title="" href="#">Buat training Baru</a></li>
                    <li style="font-size: 0px; border:1px solid #808080; border-style: solid none none none; height: 0px; padding: 0px; margin: 0px;"></li>
                    <li><a title="" href="#">Daftar Paket</a></li>
                    <li><a title="" href="#">Buat Paket Baru</a></li>
                </ul>
                <!--[if lte IE 6]></td></tr></table></a><![endif]-->
            </li>
            <li title="" class="top b3"><a href="#" id="b3"><span>Berita</span><!--[if IE 7]><!--></a><!--<![endif]-->
            <!--[if lte IE 6]><table><tr><td><![endif]-->
                <ul class="sub">
                    <li><a title="" href="#">Buat Berita Baru</a></li>
                </ul>
                <!--[if lte IE 6]></td></tr></table></a><![endif]-->
            </li>
            <li title="" class="top b4"><a href="#" id="b4"><span>Hubungi Kami</span><!--[if IE 7]><!-->
            </a><!--<![endif]-->
            <!--[if lte IE 6]><table><tr><td><![endif]-->
                <ul class="sub">
                    <li><a title="" href="#">Kontak Kami</a></li>
                    <li><a title="" href="#">Tentang Aplikasi Ini</a></li>
                </ul>
                <!--[if lte IE 6]></td></tr></table></a><![endif]-->
            </li>
            <li title="" class="top b5"><a href="#" id="b5"><span>Afiliasi</span><!--[if IE 7]><!--></a><!--<![endif]-->
            <!--[if lte IE 6]><table><tr><td><![endif]-->
                <ul class="sub">
                    <li><a title="" href="#">Situs Kemkominfo</a></li>
                    <li><a title="" href="#">Situs UIN Jakarta</a></li>
                </ul>
                <!--[if lte IE 6]></td></tr></table></a><![endif]-->
            </li>
        </ul>
    </div>
    <br/>
    <br/>
    <!-- End, Created using Button Shop, www.kristanixsoftware.com -->
</g:elseif>

<g:elseif test="${session.user.getType() == 'Student'}">
    <link rel="stylesheet" href="${resource(dir: 'studmenu-files', file: 'style.css')}" type="text/css">

    <div id="multi-level">
        <ul id="menu">
            <li title="" class="top b1"><a href="#" id="b1"><span>training</span><!--[if IE 7]><!-->
            </a><!--<![endif]-->
            <!--[if lte IE 6]><table><tr><td><![endif]-->
                <ul class="sub">
                    <li><a title="" href="#">yang Saya Ikuti</a></li>
                </ul>
                <!--[if lte IE 6]></td></tr></table></a><![endif]-->
            </li>
            <li title="" class="top b2"><a href="#" id="b2"><span>Penilaian</span></a></li>
            <li title="" class="top b3"><a href="#" id="b3"><span>Berita</span></a></li>
            <li title="" class="top b4"><a href="#" id="b4"><span>Hubungi Kami</span><!--[if IE 7]><!-->
            </a><!--<![endif]-->
            <!--[if lte IE 6]><table><tr><td><![endif]-->
                <ul class="sub">
                    <li><a title="" href="#">Hubungi Kami</a></li>
                    <li><a title="" href="#">Tentang Aplikasi Ini</a></li>
                </ul>
                <!--[if lte IE 6]></td></tr></table></a><![endif]-->
            </li>
            <li title="" class="top b5"><a href="#" id="b5"><span>Afiliasi</span><!--[if IE 7]><!--></a><!--<![endif]-->
            <!--[if lte IE 6]><table><tr><td><![endif]-->
                <ul class="sub">
                    <li><a title="" href="#">Situs Kemkominfo</a></li>
                    <li><a title="" href="#">Situs UIN Jakarta</a></li>
                </ul>
                <!--[if lte IE 6]></td></tr></table></a><![endif]-->
            </li>
        </ul>
    </div>
    <br/>
    <br/>
    <!-- End, Created using Button Shop, www.kristanixsoftware.com -->
</g:elseif>

<g:elseif test="${session.user.getType() == 'Trainer'}">
    <!-- PLACE THIS LINK LINE IN HEAD TAG -->
    <link rel="stylesheet" href="${resource(dir: 'trainermenu-files', file: 'style.css')}" type="text/css">

    <div id="multi-level">
        <ul id="menu">
            <li title="" class="top b1"><a href="#" id="b1"><span>training</span><!--[if IE 7]><!--></a><!--<![endif]-->
            <!--[if lte IE 6]><table><tr><td><![endif]-->
                <ul class="sub">
                    <li><a title="" href="#">yang Saya Ikuti</a></li>
                    <li><a title="" href="#">yang Saya Ajar</a></li>
                </ul>
                <!--[if lte IE 6]></td></tr></table></a><![endif]-->
            </li>
            <li title="" class="top b2"><a href="#" id="b2"><span>Penilaian</span><!--[if IE 7]><!--></a><!--<![endif]-->
            <!--[if lte IE 6]><table><tr><td><![endif]-->
                <ul class="sub">
                    <li><a title="" href="#">Nilai Saya</a></li>
                    <li><a title="" href="#">yang Saya Berikan</a></li>
                </ul>
                <!--[if lte IE 6]></td></tr></table></a><![endif]-->
            </li>
            <li title="" class="top b3"><a href="#" id="b3"><span>Berita</span></a></li>
            <li title="" class="top b4"><a href="#" id="b4"><span>Hubungi Kami</span><!--[if IE 7]><!--></a><!--<![endif]-->
            <!--[if lte IE 6]><table><tr><td><![endif]-->
                <ul class="sub">
                    <li><a title="" href="#">Hubungi Kami</a></li>
                    <li><a title="" href="#">Tentang Aplikasi Ini</a></li>
                </ul>
                <!--[if lte IE 6]></td></tr></table></a><![endif]-->
            </li>
            <li title="" class="top b5"><a href="#" id="b5"><span>Afiliasi</span><!--[if IE 7]><!--></a><!--<![endif]-->
            <!--[if lte IE 6]><table><tr><td><![endif]-->
                <ul class="sub">
                    <li><a title="" href="#">Situs Kemkominfo</a></li>
                    <li><a title="" href="#">Situs UIN Jakarta</a></li>
                </ul>
                <!--[if lte IE 6]></td></tr></table></a><![endif]-->
            </li>
        </ul>
    </div>
    <br/>
    <br/>
    <!-- End, Created using Button Shop, www.kristanixsoftware.com -->
</g:elseif>

<g:form action="index" controller="searchable" style="font-size: small;">
    <div class="search" style="margin-left: 10px">
        <input type="text" name="q" value="${params.q}"/>
        <input type="submit" value="Pencarian Internal"/>
    </div>
</g:form>