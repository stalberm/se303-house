class House
    def line(number)
        "This is #{(number-2).downto(0).map {|index| lyrics(number)[index]}.join("")}the house that Jack built.\n"
    end

    def lyrics(number)
        ["the malt that lay in ",
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

    def recite
        1.upto(12).map{ |number| line(number)}.join("\n")
    end
end