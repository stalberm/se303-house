class House
    def line(number)
        "This is #{difference(number)}#{difference2(number)}#{difference3(number)}#{difference4(number)}#{lyrics(number)[6]}#{lyrics(number)[5]}#{lyrics(number)[4]}#{lyrics(number)[3]}#{lyrics(number)[2]}#{lyrics(number)[1]}#{lyrics(number)[0]}the house that Jack built.\n"
    end

    def lyrics(number)
        [difference11(number), difference10(number), difference9(number), difference8(number), difference7(number), difference6(number), difference5(number)]
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

    def difference7(number)
        if number >= 6
            "the cow with the crumpled horn that tossed "
        else
            ""
        end
    end

    def difference8(number)
        if number >= 5
            "the dog that worried "
        else
            ""
        end
    end

    def difference9(number)
        if number >= 4
            "the cat that killed "
        else
            ""
        end
    end
    
    def difference10(number)
        if number >= 3
            "the rat that ate "
        else
            ""
        end
    end

    def difference11(number)
        if number >= 2
            "the malt that lay in "
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