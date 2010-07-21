package marketplace

class InvestorDashboard {
    static hasMany = [ portfolio : Mfi ]
    String investorName
    String lastLogin
}
