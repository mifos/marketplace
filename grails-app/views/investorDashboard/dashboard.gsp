<html>
<head>
<title><g:message code="investorDashboard.dashboard.title"/></title>
<link type="text/css" rel="stylesheet" href="/marketplace/css/mifos-main.css"/>
<link type="text/css" rel="stylesheet" href="/marketplace/css/mifos-screen.css"/>
</head>
<body>

<div class="container">
      <div class="logo"/></div>
      <div class="top-tab-bar">
        <ul>
           <li class="top-tablightorange"><g:message code="investorDashboard.nav.home"/></li>
           <li class="top-taborange"><g:message code="investorDashboard.nav.dataAnalysis"/></li>
         </ul>
       </div>
       <div class="top-orangeline">&nbsp;</div>
   <div>

   <div class="header-div">
      <g:message code="investorDashboard.dashboard.welcome" args="${[dashboard.investorName]}"/><br/>
      <g:message code="investorDashboard.dashboard.lastLoginTime" args="${[dashboard.lastLogin]}"/><br/>
   </div>

<div class="portfolio">
<h2><g:message code="investorDashboard.dashboard.yourPortfolio"/></h2>
<table class="dashboard-table">
<tr>
  <th></th>
  <th colspan="3" class="dashboard-table-header-dark"><g:message code="investorDashboard.dashboard.asOfToday"/></th>
  <th>&nbsp;</th>
  <th colspan="6" class="dashboard-table-header-dark"><g:message code="investorDashboard.dashboard.asOfLastQuarter" args="${['30-June-2010']}"/></th>
</tr>
<tr>
  <th></th>
  <th><g:message code="investorDashboard.dashboard.numberOfClients"/></th>
  <th><g:message code="investorDashboard.dashboard.grossLoanPortfolio"/></th>
  <th><g:message code="investorDashboard.dashboard.parGreaterThan30"/></th>
  <th>&nbsp;</th>
  <th><g:message code="investorDashboard.dashboard.numberOfClients"/></th>
  <th><g:message code="investorDashboard.dashboard.grossLoanPortfolio"/></th>
  <th><g:message code="investorDashboard.dashboard.ttmWriteOffs"/></th>
  <th><g:message code="investorDashboard.dashboard.oss"/></th>
  <th><g:message code="investorDashboard.dashboard.debtEquityRatio"/></th>
  <th><g:message code="investorDashboard.dashboard.parGreaterThan30"/></th>
</tr>
<g:each in="${portfolioMfis}" status="i" var="mfi">
  <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
    <td class="dashboard-table-text"><a href="#">${mfi.name?.encodeAsHTML()}</a></td>
    <td><g:formatNumber number="${mfi.numberOfClients}" format="###,###,###" /></td>
    <td><g:formatNumber number="${mfi.grossLoanPortfolio}" format="\$###,###,###" /></td>
    <td>${mfi.par30?.encodeAsHTML()}%</td>
    <td>&nbsp;</td>
    <td><g:formatNumber number="${mfi.lastQuarterNumberOfClients}" format="###,###,###" /></td>
    <td><g:formatNumber number="${mfi.lastQuarterGrossLoanPortfolio}" format="\$###,###,###" /></td>
    <td>${mfi.ttmWriteOffs?.encodeAsHTML()}%</td>
    <td>${mfi.oss?.encodeAsHTML()}%</td>
    <td>${mfi.debtEquityRatio?.encodeAsHTML()}%</td>
    <td>${mfi.lastQuarterPar30?.encodeAsHTML()}%</td>
  </tr>
</g:each>
</table>
</div>

<div class="other-mfis">
<h2><g:message code="investorDashboard.dashboard.otherMifosMfis"/></h2>
<table class="dashboard-table">
<tr>
  <th></th>
  <th colspan="6" class="dashboard-table-header-dark"><g:message code="investorDashboard.dashboard.asOfLastQuarter" args="${['30-June-2010']}"/></th>
</tr>
<tr>
  <th></th>
  <th><g:message code="investorDashboard.dashboard.numberOfClients"/></th>
  <th><g:message code="investorDashboard.dashboard.grossLoanPortfolio"/></th>
  <th><g:message code="investorDashboard.dashboard.ttmWriteOffs"/></th>
  <th><g:message code="investorDashboard.dashboard.oss"/></th>
  <th><g:message code="investorDashboard.dashboard.debtEquityRatio"/></th>
  <th><g:message code="investorDashboard.dashboard.parGreaterThan30"/></th>
</tr>
<g:each in="${otherMfis}" status="i" var="mfi">
  <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
    <td class="dashboard-table-text"><a href="#">${mfi.name?.encodeAsHTML()}</a></td>
    <td><g:formatNumber number="${mfi.lastQuarterNumberOfClients}" format="###,###,###" /></td>
    <td><g:formatNumber number="${mfi.lastQuarterGrossLoanPortfolio}" format="\$###,###,###" /></td>
    <td>${mfi.ttmWriteOffs?.encodeAsHTML()}%</td>
    <td>${mfi.oss?.encodeAsHTML()}%</td>
    <td>${mfi.debtEquityRatio?.encodeAsHTML()}%</td>
    <td>${mfi.lastQuarterPar30?.encodeAsHTML()}%</td>
  </tr>
</g:each>
</table>
</div>

</div>

<!-- commas in dec, 2.51 par, make MFI names links to # -->

</body>
</html>


