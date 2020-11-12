require_relative 'menu'

#create a main dish menu
main_dish_menu ={
    message: "Please select one main dish from the list: ",
    options: [{
        dish: ['Meatloaf', 'Chicken', 'Spaghetti', 'Fishsticks', 'Grilled Cheese Sandwich'],
        price: [6.30, 5.45, 4.50, 4.00, 3.00]
    }]
}
mains = Menu.new(main_dish_menu)

#create a side dish menu
side_dish_menu ={
    message: "Please select your side dish from the list: ",
    options: [{
        dish: ['Carrots', 'Salad', 'Beans', 'Macaroni', 'Broccoli'],
        price: [2.00, 3.50, 1.30, 3.00, 2.45]
    }]
}
sides = Menu.new(side_dish_menu)

#call print menu for main dish
mains.print_menu

#user select main dish
mains.get_selection

#call print menu for side dish
sides.print_menu

#user select side dishes
sides.get_selection
sides.get_selection

#computer displays order
puts "You ordered: "
mains.print_order
sides.print_order

#computer totals order
mains_total = mains.total_order 
sides_total = sides.total_order

#computer displays total
puts "Your total is: $#{mains_total + sides_total}"
