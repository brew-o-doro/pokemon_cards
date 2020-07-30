class PokemonCards::CLI
    def call
        puts '-----------------------'.colorize(:green)
        puts 'Welcome Pokémon Master!'.colorize(:red)
        puts '-----------------------'.colorize(:green)
                #using HEREDOC to create a OL through mulit lines
        puts <<-MENU
        Choose how you would like to see a card. You can view a card by name or type.
        1. See cards by name
        2. See cards by elemental type
        
        Or type 'exit' at any time to leave the program. Type 'menu' to see this menu again.
                MENU
    
        menu
       
        # binding.pry
    end

    def menu
        input = gets.chomp.downcase
        
        if input == "name"
            card_list
            menu
        elsif input == "exit"
            goodbye
        else 
            invalid_entry
        end
    end

    def invalid_entry
        puts "INVALID ENTRY! TRY AGAIN!".colorize(:red)
        menu
    end

    def card_list
        puts "2lkdl"
        puts "lakdjslfj"
        puts ""
        puts ""
        puts "Which card would you like to see in more detail?"
        input = gets.strip.downcase
        card_selector(input)
    end

    def card_selector(card)
       #go over my card array, find || detect to find the selected card 

    end

    def goodbye
        puts "Farewell, may the cards be ever in your favor!"
    end
    
end





# puts '-----------------------'.colorize(:green)
#         #using HEREDOC to create a LS through mulit lines
#         puts <<-MENU
# Choose how you would like to see a card. You can view a card by name or type.
# 1. See cards by name
# 2. See cards by elemental type

# Or type 'exit' at any time to leave the program. Type 'menu' to see this menu again.
#         MENU
    # end
