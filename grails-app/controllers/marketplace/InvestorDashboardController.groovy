package marketplace

class InvestorDashboardController {

   def scaffold = InvestorDashboard

   def dashboard = {
     // bazMfi = new Mfi(name:"Baz Mfi", activeBorrowers:1)
     //[ foo: "bar", dashboard : ["foo bar"], portfolio : [bazMfi] ] 
     [ dashboard : InvestorDashboard.get(1), portfolio : Mfi.findAll() ] 
   } 

   def test = {
     render "Hello, World!"
   }

   def investor = {
      render InvestorDashboard.get(1).investorName
   }

}
