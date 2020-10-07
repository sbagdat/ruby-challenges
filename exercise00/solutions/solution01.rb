puts kod.chop!.
        insert(7, 'Ğ?Ö-').
        insert(-12, 'QY!BX,').
        delete!('?!QX,-').
        downcase!(:turkic).
        reverse!.
        split.
        each_with_index { |kelime, sira_no|
        kelime.upcase!(:turkic) if sira_no.zero?
        kelime.capitalize!(:turkic) if sira_no == 1
        kelime << '.' if sira_no == 2
        }.
        join(' ')
