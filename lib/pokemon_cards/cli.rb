class PokemonCards::CLI

    def call
        system("clear")
        @user_input = nil
        @api = API.new
        welcome
        menu
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
        puts ""
        puts "Choose how you would like to see a card. You can view a card by name or type."
        puts "1. Search card by name"
        puts ""
        puts "2. Search by card types"
        puts "Or type 'exit' at any time to leave the program."
    
        @user_input = gets.chomp.downcase
        
        if @user_input == "1"
            # gets cards by name
            # card_list_sorted_by_name
            # search_for_card
        elsif @user_input == "2"
            card_by_type
        elsif @user_input == "exit"
            # goodbye
        else 
            invalid_entry
        end
    end



    #   def card_list_sorted_by_name
    #     card_sorted = Card.all_uniq.take(10).sort_by {card.name}
    #     card_sorted.each.with_index(1) do |card, index|
    #         puts "#{index + 1}. #{card.name}"
    #     end
    #     puts ""
    #     puts ""
    #     puts "Which card would you like to see in more detail?"
    #     @input = gets.strip.downcase

    #     card_selector(input)
    # end

    def card_selector(card)
       #go over my card array, find || detect to find the selected card 
       puts "#{card}"
    end

    # def search_for_card
    #     print "What Pokémon would you like to search for? "
    #     input = gets.chomp
    #     card = @api.fetch_card_by_name(input)
    #     card
    # end

    # def card_by_type
    #   cards = @api.fetch_card_by_types(@types)
    #   cards.each {|card| card}
    # end

    def invalid_entry
        puts "INVALID ENTRY! TRY AGAIN!".colorize(:red)
        menu
    end

    def goodbye
        puts "Farewell, may the cards be ever in your favor!"
    end
    
end


 # elsif @user_input == "2"
            # gets cards by type
        # elsif @user_input == "3"
        #     # gets cards by sub-types
        # elsif @user_input == "4"
        #     # gets cards by rarity


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

    