class PokemonCards::CLI

    
    def call
        @user_input = nil
        welcome
        menu
        API.fetch_data
        until @user_input == "exit"
            menu
        end
            goodbye
        # menu
       
        # binding.pry
    end

    def welcome
        puts '-----------------------'.colorize(:green)
        puts 'Welcome Pokémon Master!'.colorize(:red)
        puts '-----------------------'.colorize(:green)
        "\n"
    end
    def menu
         #using HEREDOC to create a OL through mulit lines
        puts <<-MENU
Choose how you would like to see a card. You can view a card by name or type.
1. See cards by name
2. See cards by type
        
Or type 'exit' at any time to leave the program. 
         MENU
    
        @user_input = gets.chomp.downcase
        
        if @user_input == "1"
            # gets cards by name
            card_list
        elsif @user_input == "2"
            # gets cards by type
        # elsif @user_input == "3"
        #     # gets cards by sub-types
        # elsif @user_input == "4"
        #     # gets cards by rarity
        elsif @user_input == "exit"
            # goodbye
        else 
            invalid_entry
        end
    end

    def invalid_entry
        puts "INVALID ENTRY! TRY AGAIN!".colorize(:red)
        menu
    end

    def card_list
        Card.all.each_with_index do |card, index|
            puts "#{index + 1}. #{card.name}"
        end
        puts ""
        puts ""
        puts "Which card would you like to see in more detail?"
        @input = gets.strip.downcase

        card_selector(input)
    end

    def card_selector(card)
       #go over my card array, find || detect to find the selected card 
       puts "#{card}"
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
# 2. See cards by type
# 3. See cards by sub-types
# 4. See cards by rarity

# Or type 'exit' at any time to leave the program. Type 'menu' to see this menu again.
#         MENU
    # end
