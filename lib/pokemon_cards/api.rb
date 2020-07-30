class API
    # include HTTParty
    BASE_URI = 'https://api.pokemontcg.io/v1/cards'

    # def self.fetch_data
    #     response = HTTParty.get(BASE_URI)
    #     card_array = JSON.parse(response.body)["results"]
    #     card_array.each {|card| Card.new(card)}
    #     # binding.pry
    # end

    def self.fetch_character_by_name(name)
        uri = URI(BASE_URI + "?name=#{name}")
        cards = make_request(uri)
        if cards [0]
            Card.new(cards[0])
        else
            "Couldn't find a card with that name...try again..."
            # binding.pry
        end
    end

    def self.fetch_character_by_types(types)
        uri = URI(BASE_URI + "?types=#{types}")
        cards = make_request(uri)
        if cards [0]
            Card.new(cards[0])
        else
            "Couldn't find a card with that type...try again..."
            # binding.pry
        end
    end

    def make_request(uri)
        response = Net::HTTP.get_response(uri)
        JSON.parse(response.body)
    end


end