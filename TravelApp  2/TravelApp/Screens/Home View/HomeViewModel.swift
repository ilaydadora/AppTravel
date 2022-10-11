//
//  HomeViewModel.swift
//  TravelApp
//
//  Created by İlayda Metin on 28.09.2022.
//

import Foundation

class HomeViewModel {
    var visitList = [Visits]()
    
  
    let p1 = Visits(visit_id: 1, visit_image_name: "kizkulesi", visit_lbl: "Kız Kulesi", visit_desc_lbl: "Selçuklu Sultanlarından biri, rüyasında çok sevdiği kızının bir yılan tarafından ısırılarak öleceğini görür. Vesveseye kapılan sultan, kızını kuleye yerleştirir. Kendisi dahil kimsenin kuleye girip çıkmasına izin vermez. Hatta su ve süt dahi özel borularla akıtılır adacığa. Derken yıllar sonra hanım sultan hastalanır. O güne dek bilinen en iyi hekim tarafından zar zor iyileştirilir genç kız. Bunun üzerine pek çok farklı yerden hanım sultana hediyeler yollanır, bunların arasında da bir sepet üzüm vardır. Üzüm sepetinin içine gizlenmiş olan yılan, o gece hanım sultanı zehirleyerek ölümüne neden olur.")
    let p2 = Visits(visit_id: 2, visit_image_name: "galatakulesi", visit_lbl: "Galata Kulesi", visit_desc_lbl: "Galata Kulesi ilk olarak Bizans İmparatoru Justinianos tarafından MS 507 - 508 yılında inşa edilmiştir. Dünyanın en eski kuleleri arasında sayılan ve İstanbul’un sembollerinden biri olan Galata Kulesi, 2013 yılında UNESCO Dünya Mirası Geçici Listesi’ne dahil edilmiştir. İstanbul’un siluetini oluşturan en önemli yapılardan biri olan Galata Kulesi, uzun dönem yangın gözetleme kulesi olarak kullanıldı ve Galata Yangın Kulesi olarak adlandırıldı.")
    let p3 = Visits(visit_id: 3, visit_image_name: "cengelkoy", visit_lbl: "Çengelköy", visit_desc_lbl: "Rivayete göre Bizans dönemindeki adı ”Sophianae” dir ve adının İmparator Justinien’in karısı Sophia için yaptırdığı saraydan geldiği söylenir.Osmanlı dönemine bakacak olursak da 17. yy zamanlarında Üsküdar’dan sonra en kalabalık kıyı kasabasıdır. Adı da Osmanlı gemi çapalarının burada yapılmasından gelmektedir.")
    let p4 = Visits(visit_id: 4, visit_image_name: "istiklal", visit_lbl: "İstiklal Caddesi", visit_desc_lbl: "İstiklal Caddesi Bizans dönemi ile beraber şekillenmeye başlamıştır. Bu süreçte ve sonrasında Katolik kiliselerini, manastırları bünyesinde bulundurmuştur. Bu kısımlar ise Pera bölgesi olarak adlandırılmıştır. O zamanlar Galata nüfusunun büyük bir kısmı surlar içinde yaşamıştır. İstanbul'un Osmanlı idaresine geçmesiyle birlikte gelişen ticari yapı Latinlerin Haliç'e ve Boğaz'a bakan yamaçlara taşınmasını sağlamıştır. Bu iki kısım arasındaki kısım değerlenmeye başlayarak İstiklal Caddesi'nin silueti oluşmuştur.")
    let p5 = Visits(visit_id: 5, visit_image_name: "yerebatansarnici", visit_lbl: "Yerebatan Sarnıcı", visit_desc_lbl: "İstanbul'un görkemli tarihsel yapılarından birisi de Ayasofya’nın güneybatısında bulunan Bazilika Sarnıcı’dır. Bizans İmparatoru I. Justinianus (527-565) tarafından yaptırılan bu büyük yeraltı sarnıcı, suyun içinden yükselen ve sayısız gibi görülen mermer sütunlar sebebiyle halk arasında “Yerebatan Sarayı” olarak isimlendirilmiştir.Sarnıcın bulunduğu yerde daha önce bir Bazilika bulunduğundan, Bazilika Sarnıcı olarak da anılır.")
    let p6 = Visits(visit_id: 6, visit_image_name: "ayasofya", visit_lbl: "Ayasofya", visit_desc_lbl: "Ayasofya, eski adıyla Kutsal Bilgelik Kilisesi ve Ayasofya Müzesi veya günümüzdeki resmî adıyla Ayasofya-i Kebîr Câmi-i Şerîfi, İstanbul'da yer alan bir cami ve eski bazilika, katedral ve müzedir. ")
    
    func visit() {
        visitList.append(p1)
        visitList.append(p2)
        visitList.append(p3)
        visitList.append(p4)
        visitList.append(p5)
        visitList.append(p6)
        
    }
    

}
