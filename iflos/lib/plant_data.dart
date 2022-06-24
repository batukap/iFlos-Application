import 'dart:core';
import './PlantDataModel.dart';

List<PlantDataModel> _plantData = [

  PlantDataModel(
      id: "0",
      bitkiAdi: "Elma",
      idealTemp: "21-24°C",
      sulama: "40-60 Litre (Mevsimde)",
      gunesIsigi: "Tam güneş (6-8 saat)",
      toprakTuru: "İyi drene edilmiş, tınlı topraklar",
      olgunBoyutu: "5-7 metre",
      mahsulZamani: "Ağustos",
      yetistirmeYontemi: "Böcekleri ve hastalıkları uygun şekilde kontrol ederek, ağaçları gübreleyerek ve düzenli olarak budayarak, bu ağacın güzelliğini ve meyvesini peyzajınızda yıllarca yaşayabilirsiniz. Erken ilkbahar ve yaz aylarında fungisit uygulamaları, hastalıkları önlemek ve sağlıklı, kaliteli meyve üretmek için esastır."
  ),
  PlantDataModel(
      id: "1",
      bitkiAdi: "Kayısı",
      idealTemp: "25-37°C",
      sulama: "2-4 Litre (Haftalık)",
      gunesIsigi: "Tam güneş (6-8 saat)",
      toprakTuru: "Ortalama, orta nemli, iyi drene edilmiş",
      olgunBoyutu: "6-9 metre",
      mahsulZamani: "Nisan sonu",
      yetistirmeYontemi: "Ağacı daha sıcak bir alana veya tam güneşte bir binaya daha yakın bir yere dikmek, özellikle donlarda çiçeklerin daha uzun süre korunmasına yardımcı olacaktır. Ayrıca, mevcut birçok soğuğa dayanıklı çeşitlerden birini aramak da mümkündür. Fidanlık ticaretinde yüzlerce Prunus armeniaca çeşidi vardır. İster süs ister meyve olarak yetiştirilsin, Prunus armeniaca, telaşlı toprak ve su ihtiyaçları ile biraz yüksek bakım gerektirir. Ancak faydaları, manzaranızdaki muhteşem bir ağaç ve eğer yeterince şanslıysanız, lezzetli taze kayısılardır."
  ),
  PlantDataModel(
      id: "2",
      bitkiAdi: "Arjun",
      idealTemp: "20-30°C",
      sulama: "10 Litre (Haftalık)",
      gunesIsigi: "Tam güneş (6-8 saat)",
      toprakTuru: "Alüvyonlu, tınlı veya siyah pamuklu topraklar",
      olgunBoyutu: "35 metre",
      mahsulZamani: "Mart-Temmuz arası",
      yetistirmeYontemi: "Uygun sulama için öncelikle bitkiye uygun toprak tipini ve toprak drenaj tipini bulun. Arjun Ağacı bakımının en önemli faktörlerinden biri sulamadır."
  ),
  PlantDataModel(
      id: "3",
      bitkiAdi: "Fesleğen",
      idealTemp: "18-24°C",
      sulama: "2-4 Litre (Haftalık)",
      gunesIsigi: "Tam güneş (6-8 saat)",
      toprakTuru: "Nötr pH'lı, iyi drene edilmiş, nemli toprak",
      olgunBoyutu: "30-60 cm",
      mahsulZamani: "25 gün",
      yetistirmeYontemi: "Fesleğen nemli kalmayı sever ve her hafta yaklaşık 1 inç su gerektirir. Köklerin derin büyümesini ve toprağı nemli tutmak için en az haftada bir kez derinlemesine sulayın. Kaplarda büyüyen fesleğen daha sık sulamaya ihtiyaç duyacaktır. Bir kapta fesleğen yetiştirirken amacınız toprağın kurumasını önlemektir."
  ),
  PlantDataModel(
      id: "4",
      bitkiAdi: "Yaban mersini",
      idealTemp: "29-32°C",
      sulama: "4-6 Litre (Haftalık)",
      gunesIsigi: "Tam güneş (6-8 saat)",
      toprakTuru: "Kumlu, iyi drene edilmiş",
      olgunBoyutu: "2-3.5 metre",
      mahsulZamani: "Temmuz-Ağustos arası",
      yetistirmeYontemi: "Tam güneş alan ancak kuvvetli rüzgarlardan korunan bir yer seçin. gunesIsiginı engelleyebilecek veya toprak nemi ve besin maddeleri için rekabet edebilecek uzun ağaçlara veya çalılara yakın bir ekim alanından kaçının. Yaban mersini çalıları yaklaşık 1,5 metre aralıklarla sıralanmalıdır; Hasat için bol yer sağlamak için bitişik sıralar 3 metre aralıklarla yerleştirilmelidir."
  ),
  PlantDataModel(
      id: "5",
      bitkiAdi: "Kiraz",
      idealTemp: "25-32°C",
      sulama: "2-4 Litre (Haftalık)",
      gunesIsigi: "Tam güneş (6-8 saat)",
      toprakTuru: "Verimli, iyi drene edilmiş",
      olgunBoyutu: "7.5 metre",
      mahsulZamani: "Nisan-Temmuz arası",
      yetistirmeYontemi: "Kiraz dikerken, kıştan önce kök gelişimi için fırsat sağlamak için Ekim-Mart aylarını (sonbahar en iyisi olsa da) hedeflemek en iyisidir. Bu çalıları daha sıcak aylarda ekmeyi seçerseniz, daha sık sulamaya ihtiyaç duyacaklarını unutmayın. Süs ağaçları için formüle edilmiş gübrelerin yanı sıra yaprak dökmeyen gübreleri kullanarak kirazınızın büyümesini hızlandırabilirsiniz."
  ),
  PlantDataModel(
      id: "6",
      bitkiAdi: "Çınar",
      idealTemp: "21-23°C",
      sulama: "10 Litre (Haftalık)",
      gunesIsigi: "Tam güneş (6-8 saat)",
      toprakTuru: "Zengin, nemli, verimli ve iyi drene",
      olgunBoyutu: "10-15 metre",
      mahsulZamani: "Yok",
      yetistirmeYontemi: "Olgun çınar ağaçları kuraklığa dayanıklıdır, ancak bitkiyi büyüme yıllarında günde bir kez sık sık sulamanız ve toprağın nemini korumanız gerekir. bitkiAdiyi sonbaharda haftada bir kez sulayın."
  ),
  PlantDataModel(
      id: "7",
      bitkiAdi: "Mısır",
      idealTemp: "29-32°C",
      sulama: "2-4 Litre (Haftalık)",
      gunesIsigi: "Tam güneş (6-8 saat)",
      toprakTuru: "pH değeri 6.0-6.8 olan iyi drene edilmiş toprak",
      olgunBoyutu: "2-2.5 metre",
      mahsulZamani: "80 gün",
      yetistirmeYontemi: "Mısır bitkilerini, korunaklı, biraz gölgeli bir yerdeyse, yaz aylarında dışarıya koyabilirsiniz. Onları kuvvetli rüzgarlardan koruyun. Sıcaklıklar 15 derece altına düşmeye başladığında bitkiyi içeriye getirin."
  ),
  PlantDataModel(
      id: "8",
      bitkiAdi: "Kızılcık",
      idealTemp: "15-26°C",
      sulama: "2-4 Litre (Haftalık)",
      gunesIsigi: "Tam güneş (6-8 saat)",
      toprakTuru: "Sıradan asitli toprak",
      olgunBoyutu: "2-3 metre",
      mahsulZamani: "Eylül-Kasım arası",
      yetistirmeYontemi: "Kızılcık, büyüme mevsimi boyunca doymuş toprağı sevmez, ancak toprağı eşit derecede nemli tutar. İlkbaharda kızılcık ekin ve yatakları yabani otlardan uzak tutun. Kasım ayı sonlarında toprak donduğunda, kış aylarında kurumaya karşı koruma sağlamak için bitkileri çam iğneleri veya yaprakları ile malçlayın."
  ),
  PlantDataModel(
      id: "9",
      bitkiAdi: "Papatya",
      idealTemp: "21-23°C",
      sulama: "4-6 Litre (Haftalık)",
      gunesIsigi: "Tam güneş (6-8 saat)",
      toprakTuru: "Nötr ila hafif asidik toprak",
      olgunBoyutu: "20 cm",
      mahsulZamani: "Nisan-Haziran arası",
      yetistirmeYontemi: "Papatyalar zengin, hızlı akan toprağı, bol suyu ve bol güneş ışığını tercih eder. Sağlıklı toprak, papatyalarınız için sağlıklı kökler anlamına gelir, bu nedenle ekimden önce bahçenizdeki toprağı değiştirmek için zaman ayırmanız en iyisidir."
  ),
  PlantDataModel(
      id: "10",
      bitkiAdi: "Karahindiba",
      idealTemp: "23-25°C",
      sulama: "4-6 Litre (Haftalık)",
      gunesIsigi: "Tam güneş (6-8 saat)",
      toprakTuru: "Azot ve potasyumca zengin topraklar",
      olgunBoyutu: "5-15 cm",
      mahsulZamani: "Mayıs-Temmuz arası",
      yetistirmeYontemi: "Karahindiba iyi drene edilmiş, verimli topraklarda en iyi şekilde büyür, ancak herhangi bir yerde herhangi bir toprakta iyi sonuç verir. Sadece yaprakları için karahindiba yetiştiriyorsanız, daha kötü fiziksel koşullarda toprağı tolere edeceklerdir. Tam güneşi tercih ederler ancak kısmi gölgede iyi olurlar."
  ),
  PlantDataModel(
      id: "11",
      bitkiAdi: "Guava",
      idealTemp: "23-28°C",
      sulama: "4-6 Litre (Haftalık)",
      gunesIsigi: "Tam güneş (6-8 saat)",
      toprakTuru: "Sığ, orta siyah ve alkali toprak",
      olgunBoyutu: "6 metre",
      mahsulZamani: "Ağustos-Aralık-Mart",
      yetistirmeYontemi: "Guava'yı tam güneşte ekin. Kurak bölgelerde, guava'yı kısmi gölgede dikin veya bitkileri öğlen güneşinden koruyun. Guavaları kompost bakımından zengin, iyi drene edilmiş toprakta ekin."
  ),
  PlantDataModel(
      id: "12",
      bitkiAdi: "Üzüm",
      idealTemp: "25-32°C",
      sulama: "4-6 Litre (Haftalık)",
      gunesIsigi: "Tam güneş (6-8 saat)",
      toprakTuru: "Kumlu toprak",
      olgunBoyutu: "35 metre",
      mahsulZamani: "Ağustos-Ekim arası",
      yetistirmeYontemi: "Sadece kök bölgesine su uygulayın. Üzüm yapraklarını ıslatmaktan kaçının çünkü bu birçok üzüm hastalığını teşvik edebilir. bitkiAdiyi kışa hazırlanmak için bastonlarını sertleştirmeye teşvik etmek için sonbaharda genç asmaların sulanmasını azaltın."
  ),
  PlantDataModel(
      id: "13",
      bitkiAdi: "Limon",
      idealTemp: "25-30°C",
      sulama: "4-6 Litre (Haftalık)",
      gunesIsigi: "Tam güneş (6-8 saat)",
      toprakTuru: "pH değeri 6-7.5 arasında olan iyi drene edilmiş, kumlu toprak",
      olgunBoyutu: "1,5-3 metre",
      mahsulZamani: "Aralık-Şubat arası",
      yetistirmeYontemi: "Yaz aylarında bitkileri serbestçe sulayın, ancak tencerenin suda durmasına asla izin vermeyin. Sonbahardan ilkbahara kadar daha ılımlı sulayın, kompost yüzeyinin sulama arasında kısmen kurumasını sağlayın."
  ),
  PlantDataModel(
      id: "14",
      bitkiAdi: "Mango",
      idealTemp: "27-36°C",
      sulama: "10 Litre (Haftalık)",
      gunesIsigi: "Tam güneş (6-8 saat)",
      toprakTuru: "Lateritik, alüvyal, kumlu balçık ve kumlu",
      olgunBoyutu: "3-9 metre",
      mahsulZamani: "Ağustos",
      yetistirmeYontemi: "Mango ağacı bakımı, herhangi bir meyve ağacının bakımına benzer. Uzun sap kökünü doyurmak için ağaçları derinden sulayın. Tekrar sulamadan önce toprağın üst yüzeyinin birkaç inç derinliğe kadar kurumasını bekleyin."
  ),
  PlantDataModel(
      id: "15",
      bitkiAdi: "Şeftali",
      idealTemp: "20-32°C",
      sulama: "4-6 Litre (Haftalık)",
      gunesIsigi: "Tam güneş (6-8 saat)",
      toprakTuru: "Kumlu, tınlı, verimli üst toprak",
      olgunBoyutu: "4.5-7.5 metre",
      mahsulZamani: "Mayıs-Eylül arası",
      yetistirmeYontemi: "Çoğu süs bitkisinin aksine, şeftali ağaçlarının sağlıklı ve üretken kalması için düzenli budama, gübreleme ve ilaçlamaya ihtiyacı vardır. Ağacınızın etrafındaki zemini, su ve besin maddeleri için rekabet edebilecek çim ve yabani otlardan uzak tutun ve cömertçe malçlayın."
  ),
  PlantDataModel(
      id: "16",
      bitkiAdi: "Armut",
      idealTemp: "24-30°C",
      sulama: "20 Litre (Haftalık)",
      gunesIsigi: "Tam güneş (6-8 saat)",
      toprakTuru: "İyi drene edilmiş, kumlu toprak",
      olgunBoyutu: "5.5-6 metre",
      mahsulZamani: "Ağustos-Ekim arası",
      yetistirmeYontemi: "Tam güneşte nemli fakat iyi drene edilmiş toprakta armut ağaçları yetiştirin."
  ),
  PlantDataModel(
      id: "17",
      bitkiAdi: "Biber",
      idealTemp: "18-26°C",
      sulama: "4-6 Litre (Haftalık)",
      gunesIsigi: "Tam güneş (6-8 saat)",
      toprakTuru: "İyi drene, ph-nötr, organik toprak",
      olgunBoyutu: "1 metre",
      mahsulZamani: "75 gün",
      yetistirmeYontemi: "Biber bitkileri günde en az 6-8 saat güneş ışığına ihtiyaç duyar. Dikim sırasında kompost veya diğer organik maddeleri toprağa karıştırın. Dikimden hemen sonra, ardından sezon boyunca düzenli olarak sulayın."
  ),
  PlantDataModel(
      id: "18",
      bitkiAdi: "Nar",
      idealTemp: "15-35°C",
      sulama: "2-4 Litre (Haftalık)",
      gunesIsigi: "Tam güneş (6-8 saat)",
      toprakTuru: "Derin tınlı topraklar",
      olgunBoyutu: "3.5-6 metre",
      mahsulZamani: "Eylül-Kasım arası",
      yetistirmeYontemi: "Nar tam güneşe ihtiyaç duyar. Ağacı haftada bir kez, muhtemelen en yoğun yaz aylarında daha sık sulayın."
  ),
  PlantDataModel(
      id: "19",
      bitkiAdi: "Patates",
      idealTemp: "5-35°C",
      sulama: "4-6 Litre (Haftalık)",
      gunesIsigi: "Tam güneş (6-8 saat)",
      toprakTuru: "Tınlı toprak",
      olgunBoyutu: "15-90 cm",
      mahsulZamani: "Sonbahar, kış",
      yetistirmeYontemi: "Geleneksel bir patates dikim yöntemi, sığ bir hendek kazmayı ve tohumluk patatesleri gözler yukarı bakacak şekilde hendeğe yerleştirmeyi içerir. Sonra patatesleri toprakla örtün. Patates bitkisi büyüdükçe, toprak sürekli olarak bitkilerin kenarları boyunca yükselir. Bu, gelişmekte olan yumruların etrafındaki toprağı gevşek tutar ve yüzeydeki yumruların, onları yeşile ve biraz toksik hale getirecek olan güneş ışığına maruz kalmasını engeller. bitkiAdiler yaklaşık 10 cm yüksekliğe ulaştığında tepeye toprak ekleyin. bitkiAdiler çiçek açmaya başladığında toprağı yığmayı bırakabilirsiniz."
  ),
  PlantDataModel(
      id: "20",
      bitkiAdi: "Ahududu",
      idealTemp: "21-24°C",
      sulama: "2-4 Litre (Haftalık)",
      gunesIsigi: "Tam güneş (6-8 saat)",
      toprakTuru: "İyi drene edilmiş, verimli topraklar",
      olgunBoyutu: "1-1.5 metre",
      mahsulZamani: "Haziran-Temmuz",
      yetistirmeYontemi: "Düzenli sulama, nadiren derin ıslatmadan daha iyidir. Ahududu çalılarınızı, sıralardan çok uzakta büyüyen \"emicileri\" veya bastonları kazarak düzenli tutun; onları kazmazsanız, besinleri çekerler ve gelecek yıl daha az böğürtleniniz olur."
  ),
  PlantDataModel(
      id: "21",
      bitkiAdi: "Pirinç",
      idealTemp: "25-35°C",
      sulama: "10 Litre (Haftalık)",
      gunesIsigi: "Tam güneş (6-8 saat)",
      toprakTuru: "Kil veya kil tınlar",
      olgunBoyutu: "1-1.8 metre",
      mahsulZamani: "125 gün",
      yetistirmeYontemi: "Su seviyesini topraktan 5 cm kadar yukarıda tutun. Pirinç bitkileri 15 cm boyunda olduğunda, su derinliğini 10 cm'ye çıkarın. Ardından, su seviyesinin belirli bir süre boyunca kendi kendine düşmesine izin verin. İdeal olarak, onları hasat ettiğinizde bitkiler artık durgun suda olmamalıdır."
  ),
  PlantDataModel(
      id: "22",
      bitkiAdi: "Gül",
      idealTemp: "15-28°C",
      sulama: "2-4 Litre (Haftalık)",
      gunesIsigi: "Tam güneş (6-8 saat)",
      toprakTuru: "Tınlı, iyi drene edilmiş toprak",
      olgunBoyutu: "15-50 cm",
      mahsulZamani: "İlkbahar, yaz, sonbahar",
      yetistirmeYontemi: "Drenaj için kısmen bol miktarda değiştirilmiş toprakla doldurulmuş derin deliklere gül dikin ve gül türünüze göre dikim talimatlarını izleyin. Bazıları ekim deliğinin dibinde bir koni oluşturmayı ve kökleri koninin üzerine yaymayı önerir. Bu, köklerin aşağıya doğru büyümesini teşvik eder, çünkü daha derin daha iyidir. Yerleşik bitkilere bakarken, kış koruması için kullanılan malzemeleri çıkararak ilkbahar mevsimine başlayın, ardından bitkileri budayıp yerel iklime uygun zamanda besleyin. Bu aynı zamanda hastalık ve haşere kontrolüne bir adım önde başlamak için sprey uygulamak için de iyi bir zamandır. Çiçekler mevsimde daha sonra solduktan sonra, daha fazla büyüme ve çiçek açma için (tekrar açanlar için) enerjilerini korumak için bitkileri öldürün."
  ),
  PlantDataModel(
      id: "23",
      bitkiAdi: "Soya fasulyesi",
      idealTemp: "27-30°C",
      sulama: "4-6 Litre (Haftalık)",
      gunesIsigi: "Tam güneş (6-8 saat)",
      toprakTuru: "Gevşek, iyi drene edilmiş balçık",
      olgunBoyutu: "1-1.5 metre",
      mahsulZamani: "Ekim-Kasım",
      yetistirmeYontemi: "Soya fasulyesini tam güneşte ekin; soya fasulyesi kısmi gölgeyi tolere edecek ancak verim düşecektir. Soya fasulyesi, organik madde bakımından zengin, gevşek, iyi drene edilmiş topraklarda en iyi şekilde büyür. Soya fasulyesi, 6.0 ila 6.8 arasında bir toprak pH'ını tercih eder. Soya fasulyesi fakir toprağa toleranslıdır."
  ),
  PlantDataModel(
      id: "24",
      bitkiAdi: "Çilek",
      idealTemp: "22-26°C",
      sulama: "4-6 Litre (Haftalık)",
      gunesIsigi: "Tam güneş (6-8 saat)",
      toprakTuru: "Tınlı, zengin, iyi drene edilmiş toprak",
      olgunBoyutu: "10-30 cm",
      mahsulZamani: "Mayıs-Temmuz arası",
      yetistirmeYontemi: "Toprak sıcaklığını serin tutmak, nemi korumak, yabani otları caydırmak ve meyveyi toprağın üzerinde tutmak için ekimden sonra bitkiler arasında malçlayın. Saman, geleneksel çilek malçtır. Toprak sıcaklığını yükselteceğinden siyah plastik kullanmayın ve optimum meyve üretimi için serin toprak gerekir. Çilekleri domates, biber veya patlıcanların yetiştiği yerlere dikmeyin, çünkü bu bitkiler çilekleri etkileyebilecek verticillium solgunluğuna duyarlıdır. ."
  ),
  PlantDataModel(
      id: "25",
      bitkiAdi: "Ayçiçeği",
      idealTemp: "15-21°C",
      sulama: "6-8 Litre (Haftalık)",
      gunesIsigi: "Tam güneş (6-8 saat)",
      toprakTuru: "iyi drene edilmiş toprak",
      olgunBoyutu: "1-3 metre",
      mahsulZamani: "Nisan-Eylül",
      yetistirmeYontemi: "Ayçiçeği yetiştirmek için tek zorunlu gereksinim, güneşli bir yer ve iyi drene edilmiş topraktır. Mümkünse, bu yükselen bitkileri devirebilecek kuvvetli rüzgarlardan korunan bir yer seçin. Ayçiçeklerini rüzgara ve yağmura karşı birbirlerini destekleyebilmeleri için gruplar halinde dikmek faydalı olabilir. Yetiştiriciler genellikle ayçiçeklerini, özellikle de uzun çeşitleri, dik büyümelerini sağlamak için kazıklamak zorundadır. bitkiAdiler çiçek açtıklarında çok ağır olabilirler. Bir çit boyunca ayçiçeği dikmek, onları kazıklamanın en kolay yoludur. Bambu kazıkları da onları dik tutacak kadar güçlüdür. bitkiAdinin köklerine zarar vermemek için kazıkları yerleştirirken dikkatli olun. Ayçiçekleri yabani otlarla rekabet etmeyi sevmez, bu yüzden bahçeyi temiz tutun. Ayçiçeklerinizin etrafını malçlamak, hem toprak nemini korumaya hem de yabani otları bastırmaya yardımcı olacaktır."
  ),
  PlantDataModel(
      id: "26",
      bitkiAdi: "Domates",
      idealTemp: "16-22°C",
      sulama: "4-6 Litre (Haftalık)",
      gunesIsigi: "Tam güneş (6-8 saat)",
      toprakTuru: "Tınlı",
      olgunBoyutu: "1-3 metre",
      mahsulZamani: "70 gün",
      yetistirmeYontemi: "Domates bitkisi ılık mevsim bitkisidir. Domates bitkinizi yetiştirirken 18 derece civarında bir sıcaklığa, hava sirkülasyonuna ve bol güneş ışığına sahip olmalısınız. Domates bitkisi hassas büyüyen bir bitki olduğundan ve dona dayanamayacağından gece ikliminizin soğumadığından emin olun. Bir domates bitkisi yetiştirmek için en iyi toprak, iyi drene edilmiş derin tınlı topraktır. Toprak organik madde ve besin açısından yüksek olmalıdır. Domates bitkileri, fosforlu gübrelere en iyi tepkiyi verir ve çok fazla azotlu gübre, kuvvetli asma büyümesine, ancak çok az meyveye neden olabilir."
  ),
  PlantDataModel(
      id: "27",
      bitkiAdi: "Lale",
      idealTemp: "12-24°C",
      sulama: "2-4 Litre (Haftalık)",
      gunesIsigi: "Tam güneş (6-8 saat)",
      toprakTuru: "Zengin, iyi drene edilmiş toprak",
      olgunBoyutu: "22-60 cm",
      mahsulZamani: "Mart-Temmuz arası",
      yetistirmeYontemi: "Laleler, nemli, soğuktan soğuğa kışları ve ılık, kuru yazları olan iklimlerde uzun ömürlü olarak en iyi şekilde büyür. Ampulleri sonbaharda 10-20 cm derinliğe (ampullerin boyutunun yaklaşık üç katı derinlik), iyi drene edilmiş toprakla güneşli bir yere dikin. İlkbaharda çok erken filizlenip çiçek açtıklarından laleler, mevsimin ilerleyen saatlerinde gölgeli koşullar yaratmak için yaprak açacak olan ağaçların ve çalıların altında iyi çalışabilir. Ampulleri sivri ucu yukarı bakacak şekilde (boyutlarına bağlı olarak) 5-10 cm aralıklarla yerleştirin. Laleler, yaklaşık 10 soğanlık gruplar halinde ekildiklerinde en iyi şekilde görünme eğilimindedirler. Laleler bazen yıllık olarak, özellikle de melez çeşitler olarak yetiştirilir. Bu durumda, çiçeklenme tamamlandıktan sonra ampulleri kazabilir ve atabilir, ardından yerlerine yaz çiçekleri dikebilirsiniz. Serin/soğuk-kış bölgelerinde bahçıvanlar için lale yetiştirmek oldukça kolaydır, ancak hibrit türlerin azalmalarını önlemek için birkaç yılda bir bölünmesi gerekir."
  ),
  PlantDataModel(
      id: "28",
      bitkiAdi: "Ceviz",
      idealTemp: "7-35°C",
      sulama: "80 Litre (Mevsimde)",
      gunesIsigi: "Tam güneş (6-8 saat)",
      toprakTuru: "Kumlu killi balçık",
      olgunBoyutu: "15-22 metre",
      mahsulZamani: "Eylül-Kasım arası",
      yetistirmeYontemi: "Ceviz ağaçlarının geniş bir kök sistemi vardır ve bu nedenle sık sık sulanmaları gerekmez. Ağaç olgunlaştıkça ölü veya hasarlı uzuvları budayın; aksi takdirde budamaya gerek yoktur. Her baharda gerektiği kadar malç ekleyin."
  ),

];

List<PlantDataModel> get plantData {
  return [..._plantData];
}

List<PlantDataModel> get recentData {
  return _plantData.where((element) => element.id == 1).toList();
}
