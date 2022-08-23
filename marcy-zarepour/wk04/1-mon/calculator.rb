# # Calculator

# ### Explanation
# - You will be building a calculator.  A calculator can perform multiple arithmetic operations.
#  Your function should allow the user to choose which operation is expected, enter in the values to perform the operation on,
# and ultimately view the result.

# ### Specification:
# - A user should be given a menu of operations
# - A user should be able to choose from the menu
# - A user should be able to enter numbers to perform the operation on
# - A user should be shown the result
# - This process should continue until the user selects a quit option from the menu

# #### Phase 1
# - Calculator functionality
# - Calculator should be able to do basic arithmetic (+,-, *, /)

# #### Phase 2
# - Advanced Calculator functionality
# - Calculator should be able to do basic arithmetic (exponents, square roots)



# # Bonus
# ## Mortgage Calculator
# Calculate the monthly required payment given the other variables as input (look up the necessary variables)

# ## BMI Calculator
# Calculate the body mass index (BMI) for an individual, given their height and weight

# ## Trip Calculator
# Calculate a trip time and cost given inputs for
# - distance
# - miles per gallon
# - price per gallon
# - speed in miles per hour



def show_menue
    puts "Calculator" # Todo: cheeckout .center to make this look nicer
    puts"=-" * 40 #budget horizontal dividing line
    puts"[a] - Addition"
    puts"[s] - subtract"
    puts"[d] - divide"
    puts"[m] - multiply"
    puts"[sq] - square"
    puts"[r] - roots"
    puts"[e] - exponents"
    puts"[q] - Quit"
    print "Enter your choice: "
end

show_menue
menu_choice = gets.chomp.downcase

until menu_choice == 'q'
    case menu_choice
    when 'a'
        puts "you chose addition!"
        puts "which numbers do you like to add" #todo: actually do the actual addition,somehow
        #aad more `when` clauses for subtract,  multipy , ect
        num1 =  gets.chomp.to_f
        num2 =  gets.chomp.to_f
        result = num1 + num2
        puts "The sum is #{result}"
       
    when 's'
            puts "you chose subtrac!"
            puts"which numbers do you like to subtract"
            num1 =  gets.chomp.to_f
            num2 =  gets.chomp.to_f
            result = num1 - num2
            puts "The subtract is #{result}"
    when 'd' 
            puts "you chose divide!"
            puts"which numbers do you like to divide"
            num1 =  gets.chomp.to_f
            num2 =  gets.chomp.to_f
            result = num1 / num2
            puts "The result is #{result}"          
        when 'm' 
            puts "you chose multiply!"
            puts"which numbers do you like to multiply"
            num1 =  gets.chomp.to_f
            num2 =  gets.chomp.to_f
            result = num1 * num2
            puts "The result is #{result}"
        when 's' 
            puts "you chose squers!"
            puts"which number do you like to squers"
            num1 =  gets.chomp.to_f
            num2 =  gets.chomp.to_f
            result = num1 * num1
            puts "The result is #{result}" 
        when 'r' 
            puts "you chose root!"
            puts"which number do you like to root"
            num1 =  gets.chomp.to_f
            num2 =  gets.chomp.to_f
            result = num1 * num1
            puts "The result is #{result}"               
                      
        


              
    else
        puts" invalid selection. you idiot."
    end

    show_menue
    menu_choice = gets.chomp.downcase
end

puts"thanks for using this crappy calculator"

def bmi_calculator
    puts "BMI Calculator"
    puts"what is your wight? "
    wight = gets.chomp.to_f


    end
