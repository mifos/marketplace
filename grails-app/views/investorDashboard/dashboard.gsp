<html>
<head>
<title>Mifos Investor Dashboard</title>
<link type="text/css" rel="stylesheet" href="/marketplace/css/mifos-main.css"/>
<link type="text/css" rel="stylesheet" href="/marketplace/css/mifos-screen.css"/>
</head>
<body>

<div class="container">
      <div class="logo"/></div>
      <div class="orangeline" style="margin-top: 80px;">&nbsp</div>
   <div>

   <div class="header-div">
      Welcome, ${dashboard.investorName}!<br/>
      The last time you logged in was ${dashboard.lastLogin}<br/>
   </div>

<div class="portfolio">
<h2>Your Portfolio:</h2>
<table>
<tr>
  <th>MFI Name</th>
  <th># Clients</th>
  <th>Gross Loan Portfolio</th>
  <th>TIM Write Offs</th>
  <th>OSS</th>
  <th>D/E</th>
  <th>Par>30</th>
</tr>
<g:each in="${portfolio}" status="i" var="mfi">
  <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
    <td>${mfi.name?.encodeAsHTML()}</td>
    <td>${mfi.numberOfClients?.encodeAsHTML()}</td>
    <td>${mfi.grossLoanPortfolio?.encodeAsHTML()}</td>
    <td>${mfi.timWriteOffs?.encodeAsHTML()}</td>
    <td>${mfi.oss?.encodeAsHTML()}</td>
    <td>${mfi.debtEquityRatio?.encodeAsHTML()}</td>
    <td>${mfi.par30?.encodeAsHTML()}</td>
  </tr>
</g:each>
</table>
</div>

<div class="other-mfis">
<h2>Other Mifos MFIs:</h2>
<table>
<tr>
  <th>MFI Name</th>
  <th># Clients</th>
  <th>Gross Loan Portfolio</th>
  <th>TIM Write Offs</th>
  <th>OSS</th>
  <th>D/E</th>
  <th>Par>30</th>
</tr>
<g:each in="${portfolio}" status="i" var="mfi">
  <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
    <td>${mfi.name?.encodeAsHTML()}</td>
    <td>${mfi.numberOfClients?.encodeAsHTML()}</td>
    <td>${mfi.grossLoanPortfolio?.encodeAsHTML()}</td>
    <td>${mfi.timWriteOffs?.encodeAsHTML()}</td>
    <td>${mfi.oss?.encodeAsHTML()}</td>
    <td>${mfi.debtEquityRatio?.encodeAsHTML()}</td>
    <td>${mfi.par30?.encodeAsHTML()}</td>
  </tr>
</g:each>
</table>
</div>

</div>

</body>
</html>
