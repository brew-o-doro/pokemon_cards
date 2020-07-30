class Card

    attr_reader :name, :types, :subtypes, :rarity, :attack_name, :attack_damage, :attack_cost, :attack_test, :weaknesses

    @@all = []
    def initialize(attr_hash)
        attr_hash.each{|k, v| self.send("#{k}=", v) if self.respond_to?("#{k}=")}
        save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

    def self.find_by_name(name)
        self.all.select{|card| card.name.downcase == name.downcase}
    end


end