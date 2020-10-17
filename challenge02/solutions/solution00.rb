erkek_tisort = []
kadin_tisort = []

# Dizileri uygun aralıkta rasgele elemanlarla dolduruyoruz
50.times { erkek_tisort << rand(49..57) }
50.times { kadin_tisort << rand(39..50) }

# Senin kodun bu çizgilerin arasına gelecek
# =========================================
erkek_tisort.map! do |tisort|
  case tisort
  when 49..51 then [tisort,  'S']
  when 52..53 then [tisort,  'M']
  when 54..55 then [tisort,  'L']
  when 56..57 then [tisort, 'XL']
  end
end

kadin_tisort.map! do |tisort|
  case tisort
  when 39..41 then [tisort,  'S']
  when 42..44 then [tisort,  'M']
  when 45..47 then [tisort,  'L']
  when 48..50 then [tisort, 'XL']
  end
end

puts 'Erkek Tişörtleri'
p erkek_tisort
puts 'Kadın Tişörtleri'
p kadin_tisort
# =========================================


