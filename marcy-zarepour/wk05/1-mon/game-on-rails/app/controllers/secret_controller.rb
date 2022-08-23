class SecretController < ApplicationController
     def form
     end
     def result
          @computer_number =rand(0..9)
          @result = "lose"
          if  @computer_number == params[:@number] 
               
               @result= "win"
     
          end    
   
     end     
end    