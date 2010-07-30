class BootStrap {

    def init = { servletContext ->
        // Create some test data
        new marketplace.PortfolioMfi(name:"Arohan Microfinance",numberOfClients:130348, grossLoanPortfolio:new BigDecimal("11389294"),par30: new BigDecimal("0.78"), lastQuarterNumberOfClients:118384, lastQuarterGrossLoanPortfolio:new BigDecimal("11234498"), ttmWriteOffs: new BigDecimal("0.28"),oss: new BigDecimal("115.68"),debtEquityRatio: new BigDecimal("3.89"),lastQuarterPar30: new BigDecimal("0.28")).save()
        new marketplace.PortfolioMfi(name:"Asomi Microfinance",numberOfClients:20345, grossLoanPortfolio:new BigDecimal("1920723"),par30: new BigDecimal("2.50"), lastQuarterNumberOfClients:19451, lastQuarterGrossLoanPortfolio:new BigDecimal("1893293"), ttmWriteOffs: new BigDecimal("0.04"),oss: new BigDecimal("130.56"),debtEquityRatio: new BigDecimal("2.32"),lastQuarterPar30: new BigDecimal("0.12")).save()
        new marketplace.PortfolioMfi(name:"Grameen Koota Financial Services",numberOfClients:431299, grossLoanPortfolio:new BigDecimal("76494531"),par30: new BigDecimal("1.76"), lastQuarterNumberOfClients:428342, lastQuarterGrossLoanPortfolio:new BigDecimal("76488321"), ttmWriteOffs: new BigDecimal("0.91"),oss: new BigDecimal("103.61"),debtEquityRatio: new BigDecimal("4.99"),lastQuarterPar30: new BigDecimal("1.78")).save()
        new marketplace.OtherMfi(name:"Fundacion Realidad (FRAC)",numberOfClients:17697, grossLoanPortfolio:new BigDecimal("6955974"),par30: new BigDecimal("0.78"), lastQuarterNumberOfClients:17697, lastQuarterGrossLoanPortfolio:new BigDecimal("6955974"), ttmWriteOffs: new BigDecimal("1.12"),oss: new BigDecimal("104.70"),debtEquityRatio: new BigDecimal("2.45"),lastQuarterPar30: new BigDecimal("1.24")).save()
        new marketplace.OtherMfi(name:"KMBI",numberOfClients:210348, grossLoanPortfolio:new BigDecimal("10485243"),par30: new BigDecimal("2.5"), lastQuarterNumberOfClients:210348, lastQuarterGrossLoanPortfolio:new BigDecimal("10485243"), ttmWriteOffs: new BigDecimal("1.34"),oss: new BigDecimal("102.45"),debtEquityRatio: new BigDecimal("1.06"),lastQuarterPar30: new BigDecimal("4.56")).save()
        new marketplace.OtherMfi(name:"Adhikar",numberOfClients:431299, grossLoanPortfolio:new BigDecimal("76494531"),par30: new BigDecimal("1.76"), lastQuarterNumberOfClients:75294, lastQuarterGrossLoanPortfolio:new BigDecimal("7398349"), ttmWriteOffs: new BigDecimal("112.91"),oss: new BigDecimal("112.91"),debtEquityRatio: new BigDecimal("12.43"),lastQuarterPar30: new BigDecimal("0.29")).save()

        new marketplace.InvestorDashboard(investorName:"Jill Chen",lastLogin:"10:15pm, 7 July 2010").save()
    }
    def destroy = {
    }
}
