class House
    def line(number)
        case number
        when 1
            "This is the house that Jack built.\n"
        when 2
            "This is the malt that lay in the house that Jack built.\n"
        when 3
            "This is the rat that ate the malt that lay in the house that Jack built.\n"
        when 4
            "This is the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
        when 5
            "This is the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
        when 6
            "This is #{difference(number)}#{difference2(number)}#{difference3(number)}#{difference4(number)}#{difference5(number)}the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
        else
            "This is #{difference(number)}#{difference2(number)}#{difference3(number)}#{difference4(number)}#{difference5(number)}#{difference6(number)}the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
        end
    end

    def difference(number)
        if number == 12
            "the horse and the hound and the horn that belonged to "
        else
            ""
        end
    end
    
    def difference2(number)
        if number >= 11
            "the farmer sowing his corn that kept "
        else
            ""
        end
    end

    def difference3(number)
        if number >= 10
            "the rooster that crowed in the morn that woke "
        else
            ""
        end
    end

    def difference4(number)
        if number >= 9
            "the priest all shaven and shorn that married "
        else
            ""
        end
    end

    def difference5(number)
        if number >=8
            "the man all tattered and torn that kissed "
        else
            ""
        end
    end

    def difference6(number)
        if number >= 7
            "the maiden all forlorn that milked "
        else
            ""
        end
    end

    def recite
        1.upto(12).map{ |number| line(number)}.join("\n")
    end
        # result = ""
        # for number in 1..12 do
        #     result += line(number)
        #     if number < 12
        #         result += "\n"
        #     end
        # end
        # return result
end