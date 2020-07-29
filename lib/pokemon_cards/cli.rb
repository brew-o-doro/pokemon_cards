class PokemonCards::CLI
    def call
        puts '-----------------------'.colorize(:green)
        puts 'Welcome Pokémon Master!'.colorize(:blue)
        menu
        # binding.pry
    end

    def menu
        puts '-----------------------'.colorize(:green)
        puts <<-MENU
Choose how you would like to see a card. You can view a card by name or type.
1. See cards by name
2. See cards by elemental type

Or type 'exit' at any time to leave the program. Type 'menu' to see this menu again.
        MENU
    end
end