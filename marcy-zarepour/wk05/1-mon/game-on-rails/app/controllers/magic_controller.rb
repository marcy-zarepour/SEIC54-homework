class MagicController < ApplicationController
   def form
   end
   def result
    @result = ["Yes.",
     "No.", 
     "My sources are pointing toward yes.", 
     "It's possible.",
     "Very unlikely.", 
     "Can you repeat the question?",
     "Absolutely not.", 
     "Sure.",
     "Ask again later."].sample
    @question = params[:question]
  end

  
end