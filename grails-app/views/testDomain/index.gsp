<!DOCTYPE html>
<html>
    <head>

        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'testDomain.label', default: 'TestDomain')}" />

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
%{--        <a href="#list-testDomain" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%
%{--        <div class="nav" role="navigation">--}%
%{--            <ul>--}%
%{--                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
%{--                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>--}%
%{--            </ul>--}%
%{--        </div>--}%
%{--        <div id="list-testDomain" class="content scaffold-list" role="main">--}%
%{--            <h1><g:message code="default.list.label" args="[entityName]" /></h1>--}%
%{--            <g:if test="${flash.message}">--}%
%{--                <div class="message" role="status">${flash.message}</div>--}%
%{--            </g:if>--}%
%{--            <f:table collection="${testDomainList}" />--}%

%{--            <div class="pagination">--}%
%{--                <g:paginate total="${testDomainCount ?: 0}" />--}%
%{--            </div>--}%
%{--        </div>--}%

%{--    <nav class="navbar navbar-dark bg-primary">--}%
%{--        <!-- Navbar content -->--}%
%{--    </nav>--}%

%{--    <nav class="navbar navbar-light" style="background-color: #e3f2fd;">--}%
%{--        <!-- Navbar content -->--}%
%{--    </nav>--}%
    </body>
</html>