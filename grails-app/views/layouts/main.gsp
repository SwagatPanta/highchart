<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>
        <g:layoutTitle default="Grails"/>
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <asset:stylesheet src="application.css"/>

    <g:layoutHead/>
</head>
<body>

%{--    <div class="navbar navbar-default navbar-static-top" role="navigation">--}%
%{--        <div class="container">--}%
%{--            <div class="navbar-header">--}%
%{--                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">--}%
%{--                    <span class="sr-only">Toggle navigation</span>--}%
%{--                    <span class="icon-bar"></span>--}%
%{--                    <span class="icon-bar"></span>--}%
%{--                    <span class="icon-bar"></span>--}%
%{--                    <p>hello</p>--}%
%{--                </button>--}%
%{--                <a class="navbar-brand" href="/#">--}%
%{--                    <i class="fa grails-icon">--}%
%{--                        <asset:image src="grails-cupsonly-logo-white.svg"/>--}%
%{--                    </i> Highchart Demo--}%
%{--                </a>--}%
%{--            </div>--}%
%{--            <div class="navbar-collapse collapse" aria-expanded="false" style="height: 0.8px;">--}%
%{--                <ul class="nav navbar-nav navbar-right">--}%
%{--                    <g:pageProperty name="page.nav" />--}%
%{--                </ul>--}%
%{--            </div>--}%
%{--        </div>--}%
%{--    </div>--}%
<div>
    <nav class="navbar navbar-dark bg-primary">
    <!-- Navbar content -->
        <a class="navbar-brand" href="/#">
            <i class="fa grails-icon">
%{--                <asset:image src="grails-cupsonly-logo-white.svg"/>--}%
            </i> Highchart Demo
        </a>
</nav></div>
    <g:layoutBody/>

%{--    <div class="footer" role="contentinfo"> </div>--}%
<nav class="navbar navbar-dark bg-primary">
    <!-- Navbar content -->

</nav>
    <p style="margin-left: 50%"><a href="https://www.highcharts.com/blog/changelog/">Highchart Changelog</a></p>
    <div id="spinner" class="spinner" style="display:none;">
        <g:message code="spinner.alt" default="Loading&hellip;"/>
    </div>

    <asset:javascript src="application.js"/>

</body>
</html>
