<html>
<head>
<title>Mifos Investor Dashboard</title>
<link type="text/css" rel="stylesheet" href="/marketplace/css/mifos-main.css"/>
<link type="text/css" rel="stylesheet" href="/marketplace/css/mifos-screen.css"/>
</head>
<body>

<div class="container">
      <div class="logo"/></div>
      <div class="top-tab-bar">
        <ul>
           <li class="top-tablightorange">Home</li>
           <li class="top-taborange">Data Analysis</li>
         </ul>
       </div>
       <div class="top-orangeline">&nbsp;</div>
   <div>

   <div class="header-div">
      Welcome, ${dashboard.investorName}!<br/>
      The last time you logged in was ${dashboard.lastLogin}<br/>
   </div>

<div class="portfolio">
<h2>Your Portfolio:</h2>
<table class="dashboard-table">
<tr>
  <th></th>
  <th colspan="3" class="dashboard-table-header-dark">As of today's date</th>
  <th>&nbsp;</th>
  <th colspan="6" class="dashboard-table-header-dark">As of last quarter: 30-June-2010</th>
</tr>
<tr>
  <th></th>
  <th># Clients</th>
  <th>Gross Loan Portfolio</th>
  <th>Par&gt;30</th>
  <th>&nbsp;</th>
  <th># Clients</th>
  <th>Gross Loan Portfolio</th>
  <th>TTM Write Offs</th>
  <th>OSS</th>
  <th>D/E</th>
  <th>Par&gt;30</th>
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
<h2>Other Mifos MFIs:</h2>
<table class="dashboard-table">
<tr>
  <th></th>
  <th colspan="6" class="dashboard-table-header-dark">As of last quarter: 30-June-2010</th>
</tr>
<tr>
  <th></th>
  <th># Clients</th>
  <th>Gross Loan Portfolio</th>
  <th>TTM Write Offs</th>
  <th>OSS</th>
  <th>D/E</th>
  <th>Par&gt;30</th>
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


