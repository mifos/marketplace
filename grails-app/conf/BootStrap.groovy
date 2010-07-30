class BootStrap {

    def init = { servletContext ->
        // Create some test data
        new marketplace.Mfi(name:"Arohan Microfinance",numberOfClients:130348, grossLoanPortfolio:new BigDecimal("11389294"),par30: new BigDecimal("0.78"), timWriteOffs: new BigDecimal("0.28"),oss: new BigDecimal("115.68"),debtEquityRatio: new BigDecimal("3.89")).save()
        new marketplace.Mfi(name:"Asomi Microfinance",numberOfClients:20345, grossLoanPortfolio:new BigDecimal("1920723"),par30: new BigDecimal("2.5"), timWriteOffs: new BigDecimal("0.04"),oss: new BigDecimal("130.56"),debtEquityRatio: new BigDecimal("2.32")).save()
        new marketplace.Mfi(name:"Grameen Koota Financial Services",numberOfClients:431299, grossLoanPortfolio:new BigDecimal("76494531"),par30: new BigDecimal("1.76"), timWriteOffs: new BigDecimal("0.91"),oss: new BigDecimal("103.61"),debtEquityRatio: new BigDecimal("4.99")).save()

        new marketplace.InvestorDashboard(investorName:"Jill Chen",lastLogin:"10:15pm, 7 July 2010").save()
    }
    def destroy = {
    }
}
