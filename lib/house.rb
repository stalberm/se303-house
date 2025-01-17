class House

    attr_reader :verse_template

    def initialize(verse_template = HouseVerse)
        @verse_template = verse_template
    end

    def line(number)
        verse_template.new.line(number)
    end

    def recite
        1.upto(12).map{ |number| line(number)}.join("\n")
    end
end

class HouseVerse
    def line(number)
        "#{prefix}#{(number-2).downto(0).map {|index| lyrics[index]}.join("")}the house that Jack built.\n"
    end

    def lyrics
        ["the malt that lay in ",
         "the rat that ate ", 
         "the cat that killed ", 
         "the dog that worried ", 
         "the cow with the crumpled horn that tossed ", 
         "the maiden all forlorn that milked ", 
         "the man all tattered and torn that kissed ", 
         "the priest all shaven and shorn that married ", 
         "the rooster that crowed in the morn that woke ", 
         "the farmer sowing his corn that kept ",
         "the horse and the hound and the horn that belonged to "]
    end

    def prefix
        "This is "
    end
end

class PirateVerse < HouseVerse
    def prefix
        "Thar be "
    end
end

class RandomVerse < HouseVerse
    def lyrics
        super.shuffle(random: Random.new(31415))
    end
end

class RandomPirate < PirateVerse
    def lyrics
        RandomVerse.new.lyrics
    end
end

class RandomNounVerb < RandomVerse
    attr_reader :nouns, :verbs
    def lyrics 
        nouns = 
        ["the malt that ",
        "the rat that ", 
        "the cat that ", 
        "the dog that ", 
        "the cow with the crumpled horn that ", 
        "the maiden all forlorn that ", 
        "the man all tattered and torn that ", 
        "the priest all shaven and shorn that ", 
        "the rooster that crowed in the morn that ", 
        "the farmer sowing his corn that ",
        "the horse and the hound and the horn that "].shuffle(random: Random.new(31415))
        verbs =
        ["lay in ",
         "ate ", 
         "killed ", 
         "worried ", 
         "tossed ", 
         "milked ", 
         "kissed ", 
         "married ", 
         "woke ", 
         "kept ",
         "belonged to "].shuffle(random: Random.new(12345))
        nouns.zip(verbs).map { |a| a.join }
    end
end