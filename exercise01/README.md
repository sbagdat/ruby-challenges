# Über Süper Muhteşem Takma Ad

Yeni internet siten tıkır tıkır çalışıyor. Ancak kullanıcı kaydı sırasında kolaylık ve esneklik sağlamak için doldurulmasını isteğe bağlı bıraktığın takma ad alanı ile başın dertte! Sitene yeni eklediğin forum bölümünde kullanıcıların gerçek isimlerinin kullanılması pek doğru görünmüyor; ayrıca bütün kullanıcıları yeniden takma isim belirlemeleri için zorlamak da çok aklına yatmıyor. Tüm bunların yanında yeni kullanıcılar için kayıt sırasında takma ad seçeneğini zorunlu hale getirmeyi de istemiyorsun.

Bu konuda biraz kafa yordun ve takma adı olmayan kullanıcılara bu ismi kendin atamaya karar verdin. Bunun için de anonymous1, anonymous2 gibi sıradan isimler kullanmak yerine daha şahane bir fikrin var. Fikrini harekete geçirmek için dört tane metin dosyası oluşturdun: `renkler.txt`, `nesneler.txt`, `sifatlar.txt` ve `meslekler.txt`. Dahiyane fikrini harekete geçirmek ve muhteşem takma adlar oluşturmak için ise yapman gerekenler şunlar:

0. İlk iş olarak metin dosyasındaki verileri dizilere aktarmalısın:
0.0. `renkler.txt` dosyasındaki satırları `renkler` adında bir diziye aktar.
0.1. `nesneler.txt` dosyasındaki satırları `nesneler` adında bir diziye aktar.
0.2. `sifatlar.txt` dosyasındaki satırları `sifatlar` adında bir diziye aktar.
0.3. `meslekler.txt` dosyasındaki satırları `meslekler` adında bir diziye aktar.
1. Muhteşem takma ad oluşturmak için kullanma gereken formülü şöyle not ettin:
1.0. `renkler` dizisinden rasgele bir eleman seç ve sonuna `rengi` kelimesini ekle.
1.1. `nesneler` dizisinden rasgele bir eleman seç.
1.2. `sifatlar` dizisinden rasgele bir eleman seç.
1.3. `meslekler` dizisinden rasgele bir eleman seç.
1.4. İlk dört adımda seçmiş olduğun metinleri birbirine ekle.
1.5. Her kelimenin ilk harfini büyüt.
```
Yapılacakları kısaca şöyle özetleyelim: renk + ' rengi ' + nesne + ' ' + sıfat + ' ' + meslek
```
2. Über süper muhteşem takma adı ekrana yazdır.

Bunlar da yazacağın kodun örnek çıktıları:
```
>> ruby main.rb
Horozibiği Rengi Pelerinli Uzman Öğrenci
>> ruby main.rb
Enternasyonal Turuncu Pançolu Başarılı Programcı
>> ruby main.rb
Eski İplik Şapkalı Uzun Yazılımcı
>> ruby main.rb
Malakit Rengi Tişörtlü Sempatik Format Mühendisi
>> ruby main.rb
Alizarin Rengi Gecelikli Eski Kodcu
>> ruby main.rb
Turuncumsu Sarı Rengi Pijamalı Hoş Bilgisayarcı
```

**NOT:** Tüm kodunu `main.rb` dosyasına yazmalısın.

## İpuçları
* Dosyadaki metni diziye aktarma işlemi için [IO](https://ruby-doc.org/core-2.7.2/IO.html) veya [File](https://ruby-doc.org/core-2.7.2/File.html) sınıfını inceleyebilirsin.
* Bir diziden rasgele eleman seçmek için kullanabileceğin çok sayıda yol var: `Array` sınıfı veya `Kernel`modülündeki metotlar ilk akla gelenlerden...
* Elde ettiğin verilerin doğruluğunu onaylamak ve beklenmeyen karakter süprizlerinden (\n gibi) korunmak için `p` ve `pp` metotlarının yanıbaşında olduklarını unutma!