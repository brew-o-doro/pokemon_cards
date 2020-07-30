class API

    url = 'https://api.pokemontcg.io/v1/cards'

    def self.fetch_data
        response = RestClient.get(url)
        card_array = JSON.parse(response.body)["response"]
        card_array.each {|card| Card.new(card)}
    end

end