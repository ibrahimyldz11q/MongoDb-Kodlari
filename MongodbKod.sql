MongoDb Temel Sql Kodlari

Temel Curd Ýþlemlerini Basit Þekilde Ele Aldým 

Mongodb Detayli Bir Þekilde Kodlarini Görmek Ýstiyorsaniz Altta ki Linkten Ulaþabilirsiniz

https://docs.mongodb.com/manual/core/document/ 
**********************************************************

Show database / show dbs  
	
// Veritabanlarini Listeler

------------------------------------------------------------------------------------------

Use Newdata 

// Yeni Veritabani Oluþturur


--------------------------------------------------------------------------------------------
db


// Hangi Veritabanýnda Olduðunuzu Gösterir

--------------------------------------------------------------------------------------------

db.createCollection('NewTable')

// Tablo Oluþturur

--------------------------------------------------------------------------------------------
db. Tab Tuþu 2 Defa Hizli Sekilde


// Mongodb Tüm Kodlarini Gösterir
--------------------------------------------------------------------------------------------

Show Collections 

// Hangi db içerisindeyseniz o db Tablolarini Listeler

--------------------------------------------------------------------------------------------
db.veritabaniadi.find()

// Veritabani Ýçerisindeki Veriyi Verir

--------------------------------------------------------------------------------------------

db.veritabaniadi.insertOne({name:'ibrahim',Departman:'MIS'})  // Bir Tane Eklemenize Olanak Saðlar
db.veritabaniadi.insert({name:'ibrahim',Departman:'MIS'})     // Ýstediginiz Kadar Ekleyebilirsiniz
db.veritabaniadi.insertMany({name:'ibrahim',Departman:'MIS'}) // Ýstediginiz Kadar Ekleyebilirsiniz

// Veritabanina Veri Ekler
----------------------------------------------------------------------------------------------------

db.veritabaniadi.find().count()

// Veritabani Veri Sayisini Verir

-------------------------------------------------------------------------------------------------------

db.veritabaniadi.find().limit(2)

// Veritabanýnda Ýki Tane Veriyi Getirir

-------------------------------------------------------------------------------------------------------

for(i=1 ; i<=100 ; i++) db.veritabaniadi.insert({id:i, name:'ibrahim'})

// For Döngüsü Ýle Veritabanina Veri Ekleme

--------------------------------------------------------------------------------------------------------

db.craateCollection('TabloAdi' {capped:true, Size:10000 , max: 10 } )

// Oluþturduðumuz Tabloya Ýstedigimiz Özelligi Verebiliriz 
Max = Veri Kayit Sayisi
Size = Tablo Büyüklügü
Capped = Degiþiklik Onayý

--------------------------------------------------------------------------------------------------------

db.veritabaniadi.findOne()
db.veritabaniadi.find().pertty()

// Bir Adet veri Getirir
// Key Value Seklinde Veriyi Gösterir

----------------------------------------------------------------------------------------------------------


db.veritabaniadi.find({name:'ibrahim'})

// Adý Ýbrahim Olanlari Listeleme


------------------------------------------------------------------------------------------------------------

data.veritabaniadi.find({age:{$in:[20,21,22,23]}})

// Veritabaninda Yaþý 20,21,22,23 Olanlari Listeleme Ýn Komutu Ýle


-------------------------------------------------------------------------------------------------------------

data.veritabaniadi.find({age:{$lt:20}})

// Yaþý 20'den Küçük Olanlarý Listeler 
lt Komutu


----------------------------------------------------------------------------------------------------------------

data.veritabaniadi.find({$or:[{name:'ibrahim',{age:10}}]})

// Adý Ýbraim Veya Yaþý 10 Olanlarý Listeler


-------------------------------------------------------------------------------------------------------------------

db.veritabaniadi.update({name:'ibrahim'},
{name:'Selin',Age:'20'} Entere Basýnýz
{upsert:false} Entere Basýnýz
) Ve Parantezi Kapatýnýz 

// Ýbrahim Adlý Kiþiyi Seç Name ve Age Bilgilerini Güncelle

--------------------------------------------------------------------------------------------------------------------
db.veritabaniadi.update({name:'ibrahim'},
{$set:{name:'ibrahim'} Entere Basýnýz
)} Ve Parantezi Kapatýnýz

// Set Ederek de Update Yapabilirsiniz


-----------------------------------------------------------------------------------------------------------------------

db.veritabaniadi.update({name:'ibrahim'},{$inc:{age:4}})

// inc Komutu Ýle Ýbrahim Adlý Kiþinin Yaþýna 4 Ekleme

-----------------------------------------------------------------------------------------------------------------------


db.veritabaniadi.remove({name:'ibrahim'})

// Ýbrahim Adlý Kiþiyi Siler


db.veritabaniadi.deletOne({name:'ibrahim'})


// Bu Þekilde de Silebilirsiniz















-









