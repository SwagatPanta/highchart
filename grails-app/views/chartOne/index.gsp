<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <script src="https://code.highcharts.com/highcharts.js"></script>
        <script type="text/javascript" src="/js/themes/gray.js"></script>
        <script src="https://code.highcharts.com/modules/exporting.js"></script>
        <script src="https://code.highcharts.com/modules/export-data.js"></script>
        <script>Highcharts.chart('container', {
            chart: {
                plotBackgroundColor: null,
                plotBorderWidth: null,
                plotShadow: false,
                type: 'pie'
            },
            title: {
                text: 'Browser market shares in January, 2020'
            },
            tooltip: {
                pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
            },
            plotOptions: {
                pie: {
                    allowPointSelect: true,
                    cursor: 'pointer',
                    dataLabels: {
                        enabled: true,
                        format: '<b>{point.name}</b>: {point.percentage:.1f} %'
                    }
                }
            },
            series: [{
                name: 'Brands',
                colorByPoint: true,
                data: [{
                    name: 'Chrome',
                    y: 61.41,
                    sliced: true,
                    selected: true
                }, {
                    name: 'Internet Explorer',
                    y: 11.84
                }, {
                    name: 'Firefox',
                    y: 10.85
                }, {
                    name: 'Edge',
                    y: 4.67
                }, {
                    name: 'Safari',
                    y: 4.18
                }, {
                    name: 'Sogou Explorer',
                    y: 1.64
                }, {
                    name: 'Opera',
                    y: 1.6
                }, {
                    name: 'QQ',
                    y: 1.2
                }, {
                    name: 'Other',
                    y: 2.61
                }]
            }]
        });</script>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <style>
        body {
            font-family: Arial;
            color: white;
        }

        .split {
            height: 100%;
            width: 50%;
            position: fixed;
            z-index: 1;
            top: 0;
            overflow-x: hidden;
            padding-top: 20px;
        }

        .left {
            left: 0;
            background-color: #999999;
        }

        .right {
            right: 0;
            background-color: #999999;
        }

        .centered {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            text-align: center;
        }

        .centered img {
            width: 150px;
            border-radius: 50%;
        }
        </style>
        <style>
        html,body
        {
            padding:0;
            margin:0;
            height:100%;
            min-height:100%;
        }
        .part1 {background-color:#b4b4b4; width:50%; height:50%; float:left}
        .part2 {background-color:#787878; width:50%; height:50%; float:left}
        .part3 {background-color:#3c3c3c; width:50%; height:50%; float:left}
        .part4 {background-color:yellow; width:50%; height:50%; float:left}
        </style>
        <g:set var="entityName" value="${message(code: 'chartOne.label', default: 'ChartOne')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>


%{--    <div class="split left">--}%
%{--        --}%
%{--    </div>--}%

%{--    <div class="split right">--}%

    </div>
    <div class="part1"><div id="container"  style="height:600px; background: #999999" >
        <header>Bar Diagram</header>
        <script  style="background: #999999">
            document.addEventListener('DOMContentLoaded', function () {
                var myChart = Highcharts.chart('container', {
                    chart: {
                        type: 'bar'
                    },
                    title: {
                        text: 'Fruit1 Consumption'
                    },
                    xAxis: {
                        categories: ['Apples', 'Bananas', 'Oranges']
                    },
                    yAxis: {
                        title: {
                            text: 'Fruit eaten'
                        }
                    },
                    series: [{
                        name: 'Swagat',
                        data: [1, 0, 4]
                    }, {
                        name: 'Niraj',
                        data: [5, 7, 3]
                    }]
                });
            });
        </script>
    </div></div>
    <div class="part2"><div id="container1"  style="height:600px; background: #999999">
        <header>Bar Diagram</header>
        <script>
            document.addEventListener('DOMContentLoaded', function () {
                var myChart = Highcharts.chart('container1', {
                    chart: {
                        type: 'bar'
                    },
                    title: {
                        text: 'Fruit Consumption'
                    },
                    xAxis: {
                        categories: ['Apples', 'Bananas', 'Oranges']
                    },
                    yAxis: {
                        title: {
                            text: 'Fruit eaten'
                        }
                    },
                    series: [{
                        name: 'Allen',
                        data: [1, 0, 4]
                    }, {
                        name: 'Jeff',
                        data: [7, 7, 3]
                    },
                        {
                            name: 'geff',
                            data: [5, 5, 7]
                        },
                        {
                            name: 'Ed',
                            data: [1, 3, 3]
                        }
                    ]
                });
            });
        </script>
    </div></div>
    <div class="part3"></div>
    <div class="part4">four</div>
    </body>
</html>