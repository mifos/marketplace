package marketplace

class InvestorDashboardController {

   def scaffold = InvestorDashboard

   def dashboard = {
     [ dashboard : InvestorDashboard.get(1), portfolio : Mfi.findAll() ] 
   } 

   def test = {
     render "Hello, World!"
   }

   def investor = {
      render InvestorDashboard.get(1).investorName
   }

}
