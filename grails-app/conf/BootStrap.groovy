class BootStrap {

    def init = { servletContext ->
        // Create some test data
        new marketplace.Mfi(name:"Arohan Microfinance",activeBorrowers:41545, par30: new BigDecimal("0.03")).save()
        new marketplace.Mfi(name:"Asomi Microfinance",activeBorrowers:20345, par30: new BigDecimal("0.03")).save()
        new marketplace.Mfi(name:"Grameen Koota Financial Services",activeBorrowers:453123, par30: new BigDecimal("0.03")).save()
        new marketplace.InvestorDashboard(investorName:"Jill Chen",lastLogin:"10:15pm, 7 July 2010").save()
    }
    def destroy = {
    }
}
