# Değişkenler

## Değişken İsimlendirme
Ruby'de yerel değişken tanımlarken dikkat etmemiz gereken kurallar şöyledir:
* Yerel değişkenlerin isimleri **küçük harf** veya **_** karakterlerinden biriyle başlayabilir. Rakam veya özel karakterler ile başlayamaz(Bu durumun bazı istisnalarından daha sonra bahsedeceğiz).
* İlk harften sonra BÜYÜK/küçük harf, alt tire ya da rakamla devam edilebilir. 
* Boşluk karakterleri kullanılamaz.
* Anahtar kelimeler değişken ismi olarak kullanılamaz. Anahtar kelimelerin tam listesine https://docs.ruby-lang.org/en/2.7.0/doc/keywords_rdoc.html adresinden erişebilirsiniz.

Aşağıda geçerli değişken isimlerine örnekler verilmiştir:
```
isim
tekerlek_sayisi
_gecici
sayi1
ciRKiN
```

Şimdi de hatalı değişken isimlendirmeye örnek verelim:
```
12adet
tekerlek sayisi
sayi-1
alias
```
**UYARI:** Ruby küçük/BÜYÜK harf ayrımı yapan bir dildir. Dolayısıyla `adet`, `aDet`, `aDET` gibi değişkenlerin hepsi birbirinden farklıdır.

**BİLGİ:** Yerel değişkenleri isimlendirirken; değişkenin ismi birden fazla kelimeden oluşuyorsa arasına boşluk yerine _ (alt tire) karakteri konulması Ruby programcıları tarafından kabul görmektedir. Bu yazım şekline yılana benzediği için `snake_case` adı verilir.

## Değişkenlere Değer Atama
Bir değişkene değer atamak için `=` operatörünü kullanırız. Diğer dillere nazaran Ruby'de bu işlem oldukça basittir. 

```rb
isim = 'Sıtkı'
yas = 41
meslek = 'Öğretmen'
programci = true
```

Daha önce darklı dillerde programlama yaptıysanız; değişkenin tanımlanması sırasında hangi türden değeri saklayacağının da belirtildiğini görmüşsünüzdür. Örneğin değşken tamsayı değer saklayacaksa C dilinde `int yas = 23;` şeklinde tip tanımlamaları yaygındır.

Ruby değişkenin tipini kendi başına belirleyebilir. Buna **dinamik tipleme** denilmektedir. Bu sayede bir değişkenin tipini istediğiniz zaman değiştirebilirsiniz. Aşağıdaki örnek, Ruby için tamamen geçerli bir sözdizimini göstermektedir:

```ruby
yas = 24
puts "Ben #{Time.now.year - yas} yılında doğmuşum."

yas = 'yirmi dört'
puts "Yani #{yas} yaşındayım."
```

Kodun çıktısı:
```
Ben 1996 yılında doğmuşum.
Yani yirmi dört yaşındayım.
```

Ruby'de yerel değişkenler tanımlandığı anda ilk değerlerinin verilmesi gereklidir. Aşağıdaki gibi bir kullanım daha ilk satırdan `NameError` hatasına neden olacaktır:

```rb
dil
dil = 'Ruby'
```

Kodun çıktısı:
```
...
...
NameError (undefined local variable or method `dil' for main:Object)
```

**UZMANLAR İÇİN:** Ruby'de global ve örnek değişkenleri (instance variables) tanımlandıklarında ilk değer ataması yapılmaması durumunda `nil` değer alacaktır. Bu durum yerel değişkenler için geçerli olmasa da; değer ataması bir şarta bağlı olarak yapılırsa dinamik olarak `nil` değeri alabilirler. Aşağıdaki örnek `irb` ekranını inceleyiniz:

```irb
>> $test1
=> nil
>> @test2
=> nil
>> test3 = 1 if false
=> nil
>> test
=> nil
```
