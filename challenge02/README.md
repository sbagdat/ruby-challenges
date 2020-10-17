# TİŞÖRTLERİN EFENDİSİ

Bir serbest çalışan olarak, bu hafta işler yolunda gitti; pek çok işi başarıyla tamamladın ve Miami tatiline gitmeden önce ilgilenmen gereken son bir müşteri var. 

Müşterin tekstil işiyle ilgileniyor ve üretimden çıkan tişörtlerin, beden etiketleri takılmadan birbirine karışmasından şikayetçi... Neyse ki bu sorunu halletmek için bir etiketleme makinesi aldı. Etiketleme  makinesi tişörtlerin koltuk altı genişliklerini ölçüp, uygun etiketleri yapıştıracak. Ancak makinenin doğru bir şekilde programlanması gerekiyor. Bu iş için ihtiyacın olan genişlik ölçüleri `erkek_tisort` ve `kadin_tisort` isimli iki dizide saklanmaktadır:

```rb
# Dizilerin tamamını main.rb dosyasında bulabilirsin.
erkek_tisort = [49, 57, 55, ...]
kadin_tisort = [42, 47, 49, ...]
```

Tişörtlerin genişlikleri ve beden etiketi eşleşmeleri şöyledir:
<br>

### ∆ Erkek Tişört Ölçüleri

| **Genişlik(cm)**  | **Beden**    |
| :---------------: | ------------:|
| 49 - 51           | S            |
| 52 - 53           | M            |
| 54 - 55           | L            |
| 56 - 57           | XL           |

<br>

### ∆ Kadın Tişört Ölçüleri

| **Genişlik(cm)**  | **Beden**    |
| :---------------: | ------------:|
| 39 - 41           | S            |
| 42 - 44           | M            |
| 45 - 47           | L            |
| 48 - 50           | XL           |


Yapman gereken bu ölçüleri okuyarak dizileri aşağıdaki gibi güncellemen...
```rb
erkek_tisort = [[49, 'S'], [57, 'XL'], [55,  'L'], ...]
kadin_tisort = [[42, 'M'], [47,  'L'], [49, 'XL'], ...]
```

Eh son bir iş olarak dizileri `p` ile ekrana yazdır da makine bunları okuyup, 
etiketlemeyi tamamlasın.
