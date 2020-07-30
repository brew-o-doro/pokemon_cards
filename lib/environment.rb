# Gems / Utilities
require 'pry'
require 'httparty'
require 'colorize'
require 'rest-client'
require 'json'

# classes
require_relative "./pokemon_cards/version"
require_relative "./pokemon_cards/api"
require_relative "./pokemon_cards/cli"
require_relative "./pokemon_cards/card"



module PokemonCards
  class Error < StandardError; end
  # Your code goes here...
end
