<html>
<head>
<title>Mifos Investor Dashboard</title>
</head>
<body>
Welcome, ${dashboard.investorName}!<br/>
The last time you logged in was ${dashboard.lastLogin}<br/>
<p/>

Portfolio:<br/>
<table>
<tr>
  <th>MFI Name</th>
  <th>Active Borrowers</th>
  <th>Par > 30 Days</th>
</tr>
<g:each in="${portfolio}" status="i" var="mfi">
  <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
    <td>${mfi.name?.encodeAsHTML()}</td>
    <td>${mfi.activeBorrowers?.encodeAsHTML()}</td>
    <td>${mfi.par30?.encodeAsHTML()}</td>
  </tr>
</g:each>
</table>
<p/>
Other Mifos MFIs:<br/>
<table>
<tr>
  <th>MFI Name</th>
  <th>Active Borrowers</th>
  <th>Par > 30 Days</th>
</tr>
<g:each in="${portfolio}" status="i" var="mfi">
  <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
    <td>${mfi.name?.encodeAsHTML()}</td>
    <td>${mfi.activeBorrowers?.encodeAsHTML()}</td>
    <td>${mfi.par30?.encodeAsHTML()}</td>
  </tr>
</g:each>
</table>

</body>
</html>
