class API
    include HTTParty
    BASE_URI = 'https://api.pokemontcg.io/v1/cards'
    default_params  page_size: 10

    def self.fetch_data
        response = HTTParty.get(BASE_URI)
        card_array = JSON.parse(response.body)["results"]
        card_array.each {|card| Card.new(card)}
        # binding.pry
    end
end

# def fetch_card_by_name(name)
#     uri = URI(BASE_URI + "?name=#{name}")
#     cards = make_request(uri)
#     if cards [0]
#         Card.new(cards[0])
#     else
#         puts ""
#         puts "Couldn't find a card with that name...try again...".colorize(:red)
#         # binding.pry
#     end
# end

# def fetch_card_by_types(types)
#     uri = URI(BASE_URI + "?types=#{types}")
#     cards = make_request(uri)
#     card_instances = types.map do |card_data|
#         Card.new(card_data)
#     end
#     card_instances.each { |c| puts c}
# end

# def make_request(uri)
#     response = Net::HTTP.get_response(uri)
#     JSON.parse(response.body)
# end
