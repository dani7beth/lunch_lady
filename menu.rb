#this is a menu class like we did in lecture
class Menu
   

    #create a menu
    def initialize(menu)
        @menu = menu
        @selections = []
    end

    #print main dish menu
    def print_menu
        #print greeting
        border = @menu[:message].gsub(/\s|\S/, '*')
        puts border
        puts @menu[:message]
        puts border

        #print dishes very complicated but using nested loops i can 
        #print the menu and keep it organized the way i want it
        @menu[:options].each do |item| #this grabs all the items in the options hash
            item[:dish].each_with_index do |item2, index| #this grabs the dish array within the option hash
                puts "#{index+1}. #{item2} - $#{item[:price][index]}"#the item[:price][index] grabs all the prices associated with each menu item
            end                              
        end
    end

    #user selection 
    # can only select one main dish 
    #can only select 2 side dishes
    def get_selection
        puts "Select a dish: "

        #get user input ad covert to int
        input = gets.strip

        #if input is not a valid integer it will go to rescue
        selection = Integer(input)

        #check if input is a valid int and one of our options
        option_size = @menu[:options][0][:dish].size
        if selection >= 1 && selection <= option_size
            puts "You selected: #{@menu[:options][0][:dish][selection-1]}"
            @selections.push(@menu[:options][0][:dish][selection-1])
        else
            puts "#{selection} needs to be between 1 and #{option_size}, please try again"
            self.get_selection
        end
        
    rescue ArgumentError
        #if argument error occurs above the Ruby will come here instead of throwing the error
        puts "#{input} is not an integer please select an integer"
        self.get_selection
    end


    #print order
    def print_order
        puts @selections.join(' and ')

    end

    #total the order cost
    #print the total

end