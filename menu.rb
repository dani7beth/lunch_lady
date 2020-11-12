#this is a menu class like we did in lecture
class Menu

    #create a menu
    def initialize(menu)
        @menu = menu
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
                puts "#{index+1}. #{item2} #{item[:price][index]}"#the item[:price][index] grabs all the prices associated with each menu item
            end                              
        end
    end

    #user selection 
    # can only select one main dish 

    #print side dish menu

    #user selection
    #can only select 2 side dishes

    #print order

    #total the order cost
    #print the total

end