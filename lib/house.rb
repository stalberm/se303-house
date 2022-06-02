class House
    def line(number)
        "#{prefix}#{(number-1).downto(0).map {|index| lyrics[index]}.join("")}\n"
    end

    def lyrics
        ["the house that Jack built.",
         "the malt that lay in ",
         "the rat that ate ", 
         "the cat that killed ", 
         "the dog that worried ", 
         "the cow with the crumpled horn that tossed ", 
         "the maiden all forlorn that milked ", 
         "the man all tattered and torn that kissed ", 
         "the priest all shaven and shorn that married ", 
         "the rooster that crowed in the morn that woke ", 
         "the farmer sowing his corn that kept ", "the horse and the hound and the horn that belonged to "]
    end

    def prefix
        "This is "
    end

    def recite
        1.upto(12).map{ |number| line(number)}.join("\n")
    end
end

class HouseVerse
    def line(number)
        "#{prefix}#{(number-1).downto(0).map {|index| lyrics[index]}.join("")}\n"
    end

    def lyrics
        ["the house that Jack built.",
         "the malt that lay in ",
         "the rat that ate ", 
         "the cat that killed ", 
         "the dog that worried ", 
         "the cow with the crumpled horn that tossed ", 
         "the maiden all forlorn that milked ", 
         "the man all tattered and torn that kissed ", 
         "the priest all shaven and shorn that married ", 
         "the rooster that crowed in the morn that woke ", 
         "the farmer sowing his corn that kept ", "the horse and the hound and the horn that belonged to "]
    end

    def prefix
        "This is "
    end
end