kod.chop!
kod.insert(7, "Ğ?Ö-")
kod.insert(-12, "QY!BX,")
kod.delete!("?!Q,X-")
kod.downcase!(:turkic)
kod.reverse!
kelimeler = kod.split
kelimeler[0].upcase!(:turkic)
kelimeler[1].capitalize!(:turkic)
kod = kelimeler.join(' ')
kod << '.'

puts kod
