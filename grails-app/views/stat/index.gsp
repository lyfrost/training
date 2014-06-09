<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main">
    <title>Hubungi Kami</title>
    <gvisualization:apiImport/>
</head>

<body>
<h1>Statistik Operasional Sistem</h1>

<gvisualization:barCoreChart title="Jumlah registrasi yang ikut training per bulan" elementId="bar1" width="${700}" height="${800}" hAxis="${new Expando(title: 'Jumlah', titleColor: 'purple')}" vAxis="${new Expando(title: 'Bulan', titleColor: 'blue')}" columns="${columns}" data="${regisPerTime}" />
<div id="bar1"></div>

<br/>

<gvisualization:barCoreChart title="Jumlah registrasi per 30 training terakhir" elementId="bar2" width="${700}" height="${1100}" hAxis="${new Expando(title: 'Jumlah', titleColor: 'purple')}" vAxis="${new Expando(title: 'Training', titleColor: 'blue')}" columns="${columns2}" data="${userPerTraining}" />
<div id="bar2"></div>

<br/>

<gvisualization:barCoreChart title="Statistik Pendapatan per bulan" elementId="bar3" width="${700}" height="${800}" hAxis="${new Expando(title: 'Pendapatan', titleColor: 'purple')}" vAxis="${new Expando(title: 'Bulan', titleColor: 'blue')}" columns="${columns3}" data="${incomePerMonth}" />
<div id="bar3"></div>

<br/>

<gvisualization:barCoreChart title="Pendapatan per 30 training terakhir" elementId="bar4" width="${700}" height="${1100}" hAxis="${new Expando(title: 'Jumlah', titleColor: 'purple')}" vAxis="${new Expando(title: 'Training', titleColor: 'blue')}" columns="${columns4}" data="${incomePerTraining}" />
<div id="bar4"></div>

<br/>

<gvisualization:barCoreChart title="Statistik nilai 30 training terakhir" elementId="bar5" width="${700}" height="${2000}" hAxis="${new Expando(title: 'Nilai', titleColor: 'purple')}" vAxis="${new Expando(title: 'Training', titleColor: 'blue')}" columns="${columns5}" data="${gradeStat}" />
<div id="bar5"></div>

<br/>

chart menggunakan Google Visualization&trade; 

</body>
</html>