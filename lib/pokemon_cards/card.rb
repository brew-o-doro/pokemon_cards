class Card

    # attr_reader :name, :types, :subtypes, :rarity, :attack_name, :attack_damage, :attack_cost, :attack_test, :weaknesses
    attr_accessor :name, :types, :subtype, :rarity, :attack, :contains

    @@all = []
    def initialize(attr_hash)
        attr_hash.each do |k, v|
            self.send("#{k}=", v) if self.respond_to?("#{k}=")
        end
        # @name = card_data["name"]
        # @types = card_data["types"]
        # @rarity = card_data["rarity"]
        # @attack = card_data["attack"]
        save
        # binding.pry
    end



    def save
        @@all << self
    end

    def self.all
        @@all
    end

    def self.find_by_name(name)
        self.all.find{ |card| card.name.downcase == name.downcase}
    end

    def all_uniq
        @@all.all.uniq
    end

end
