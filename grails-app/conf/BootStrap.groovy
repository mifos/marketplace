class BootStrap {

    def init = { servletContext ->
        // Create some test data
        new marketplace.Mfi(name:"Arohan Microfinance",numberOfClients:41545, grossLoanPortfolio:new BigDecimal("10000"),timWriteOffs: new BigDecimal("0.03"),oss: new BigDecimal("0.03"),debtEquityRatio: new BigDecimal("0.03"),par30: new BigDecimal("0.03")).save()
        new marketplace.Mfi(name:"Asomi Microfinance",numberOfClients:20345, grossLoanPortfolio:new BigDecimal("10000"),timWriteOffs: new BigDecimal("0.03"),oss: new BigDecimal("0.03"),debtEquityRatio: new BigDecimal("0.03"),par30: new BigDecimal("0.03")).save()
        new marketplace.Mfi(name:"Grameen Koota Financial Services",numberOfClients:453123, grossLoanPortfolio:new BigDecimal("10000"),timWriteOffs: new BigDecimal("0.03"),oss: new BigDecimal("0.03"),debtEquityRatio: new BigDecimal("0.03"),par30: new BigDecimal("0.03")).save()
        new marketplace.InvestorDashboard(investorName:"Jill Chen",lastLogin:"10:15pm, 7 July 2010").save()
    }
    def destroy = {
    }
}
