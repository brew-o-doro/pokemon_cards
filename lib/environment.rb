require_relative "./pokemon_cards/version"
require_relative "./pokemon_cards/api"
require_relative "./pokemon_cards/cli"
require_relative "./pokemon_cards/card"

require 'pry'
require 'httparty'
require 'colorize'

module PokemonCards
  class Error < StandardError; end
  # Your code goes here...
end
