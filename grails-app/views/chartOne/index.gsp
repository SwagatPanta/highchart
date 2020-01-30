<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <script src="https://code.highcharts.com/highcharts.js"></script>
        <script type="text/javascript" src="/js/themes/gray.js"></script>
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
        <g:set var="entityName" value="${message(code: 'chartOne.label', default: 'ChartOne')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>


    <div class="split left">
        <div id="container"  style="height:600px; background: #999999" >
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
        </div>
    </div>

    <div class="split right">
        <div id="container1"  style="height:600px; background: #999999">
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
        </div>
    </div>
    </body>
</html>