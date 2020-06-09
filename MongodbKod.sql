MongoDb Temel Sql Kodlari

Temel Curd ��lemlerini Basit �ekilde Ele Ald�m 

Mongodb Detayli Bir �ekilde Kodlarini G�rmek �stiyorsaniz Altta ki Linkten Ula�abilirsiniz

https://docs.mongodb.com/manual/core/document/ 
**********************************************************

Show database / show dbs  
	
// Veritabanlarini Listeler

------------------------------------------------------------------------------------------

Use Newdata 

// Yeni Veritabani Olu�turur


--------------------------------------------------------------------------------------------
db


// Hangi Veritaban�nda Oldu�unuzu G�sterir

--------------------------------------------------------------------------------------------

db.createCollection('NewTable')

// Tablo Olu�turur

--------------------------------------------------------------------------------------------
db. Tab Tu�u 2 Defa Hizli Sekilde


// Mongodb T�m Kodlarini G�sterir
--------------------------------------------------------------------------------------------

Show Collections 

// Hangi db i�erisindeyseniz o db Tablolarini Listeler

--------------------------------------------------------------------------------------------
db.veritabaniadi.find()

// Veritabani ��erisindeki Veriyi Verir

--------------------------------------------------------------------------------------------

db.veritabaniadi.insertOne({name:'ibrahim',Departman:'MIS'})  // Bir Tane Eklemenize Olanak Sa�lar
db.veritabaniadi.insert({name:'ibrahim',Departman:'MIS'})     // �stediginiz Kadar Ekleyebilirsiniz
db.veritabaniadi.insertMany({name:'ibrahim',Departman:'MIS'}) // �stediginiz Kadar Ekleyebilirsiniz

// Veritabanina Veri Ekler
----------------------------------------------------------------------------------------------------

db.veritabaniadi.find().count()

// Veritabani Veri Sayisini Verir

-------------------------------------------------------------------------------------------------------

db.veritabaniadi.find().limit(2)

// Veritaban�nda �ki Tane Veriyi Getirir

-------------------------------------------------------------------------------------------------------

for(i=1 ; i<=100 ; i++) db.veritabaniadi.insert({id:i, name:'ibrahim'})

// For D�ng�s� �le Veritabanina Veri Ekleme

--------------------------------------------------------------------------------------------------------

db.craateCollection('TabloAdi' {capped:true, Size:10000 , max: 10 } )

// Olu�turdu�umuz Tabloya �stedigimiz �zelligi Verebiliriz 
Max = Veri Kayit Sayisi
Size = Tablo B�y�kl�g�
Capped = Degi�iklik Onay�

--------------------------------------------------------------------------------------------------------

db.veritabaniadi.findOne()
db.veritabaniadi.find().pertty()

// Bir Adet veri Getirir
// Key Value Seklinde Veriyi G�sterir

----------------------------------------------------------------------------------------------------------


db.veritabaniadi.find({name:'ibrahim'})

// Ad� �brahim Olanlari Listeleme


------------------------------------------------------------------------------------------------------------

data.veritabaniadi.find({age:{$in:[20,21,22,23]}})

// Veritabaninda Ya�� 20,21,22,23 Olanlari Listeleme �n Komutu �le


-------------------------------------------------------------------------------------------------------------

data.veritabaniadi.find({age:{$lt:20}})

// Ya�� 20'den K���k Olanlar� Listeler 
lt Komutu


----------------------------------------------------------------------------------------------------------------

data.veritabaniadi.find({$or:[{name:'ibrahim',{age:10}}]})

// Ad� �braim Veya Ya�� 10 Olanlar� Listeler


-------------------------------------------------------------------------------------------------------------------

db.veritabaniadi.update({name:'ibrahim'},
{name:'Selin',Age:'20'} Entere Bas�n�z
{upsert:false} Entere Bas�n�z
) Ve Parantezi Kapat�n�z 

// �brahim Adl� Ki�iyi Se� Name ve Age Bilgilerini G�ncelle

--------------------------------------------------------------------------------------------------------------------
db.veritabaniadi.update({name:'ibrahim'},
{$set:{name:'ibrahim'} Entere Bas�n�z
)} Ve Parantezi Kapat�n�z

// Set Ederek de Update Yapabilirsiniz


-----------------------------------------------------------------------------------------------------------------------

db.veritabaniadi.update({name:'ibrahim'},{$inc:{age:4}})

// inc Komutu �le �brahim Adl� Ki�inin Ya��na 4 Ekleme

-----------------------------------------------------------------------------------------------------------------------


db.veritabaniadi.remove({name:'ibrahim'})

// �brahim Adl� Ki�iyi Siler


db.veritabaniadi.deletOne({name:'ibrahim'})


// Bu �ekilde de Silebilirsiniz















-









