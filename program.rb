require_relative('./config/environment.rb')

while true # Keep going until the user quits
 
    puts "What do you want to do?"
    puts "1) Register a dog"
    puts "2) Display all dogs"
    puts "3) Quit"

    user_choice = gets.chomp() # Use google to find what gets.chomp does

    if(user_choice == "1")

        # Register a dog
        puts "What do you want to name the dog?"
        user_input = gets.chomp()
        Dog.create({ name: user_input }) # 1) Look in the app/models folder to see where `Dog` is defined
                                         # 2) Look at ActiveRecord's docs to learn about the create method:
                                         #    https://guides.rubyonrails.org/active_record_basics.html#crud-reading-and-writing-data
                                         #    What SQL does it print in the terminal?
                                         # 3) Look in db/migrations to see where we define that `Dog`'s can have names

    elsif(user_choice == "2")

        # Display all dogs
        puts "All Dogs:"
        Dog.all.each do | dog | 
            puts "\n"
            puts dog.name 
        end

    elsif(user_choice == "3")

        # Quit
        break

    end

end