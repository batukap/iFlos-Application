import 'package:flutter/material.dart';
import 'package:material_color_gen/material_color_gen.dart';

class IsimArama extends StatefulWidget {
  @override
  _IsimAramaState createState() => _IsimAramaState();
}

class _IsimAramaState extends State<IsimArama> {
  List results = [];
  var rows = [];
  String query = '';
  late TextEditingController tc;
  bool isTapped = false;

  @override
  void initState() {
    super.initState();
    tc = TextEditingController();
    rows = [
      {
        "id": 0,
        "Bitki": "Domates",
        "İdeal Sıcaklık": "16-22°C",
        "Sulama": "4-6 Litre (Haftalık)",
        "Güneş ışığı": "Tam güneş (6-8 saat)",
        "Toprak Türü": "Tınlı",
        "Olgun boyutu": "1-3 metre",
        "Mahsul Zamanı": "70 gün",
        "Yetiştirme Yöntemi":
            "Domates bitkisi ılık mevsim bitkisidir. Domates bitkinizi yetiştirirken 18 derece civarında bir sıcaklığa, hava sirkülasyonuna ve bol güneş ışığına sahip olmalısınız. Domates bitkisi hassas büyüyen bir bitki olduğundan ve dona dayanamayacağından gece ikliminizin soğumadığından emin olun. Bir domates bitkisi yetiştirmek için en iyi toprak, iyi drene edilmiş derin tınlı topraktır. Toprak organik madde ve besin açısından yüksek olmalıdır. Domates bitkileri, fosforlu gübrelere en iyi tepkiyi verir ve çok fazla azotlu gübre, kuvvetli asma büyümesine, ancak çok az meyveye neden olabilir."
      },
      {
        "id": 1,
        "Bitki": "Elma",
        "İdeal Sıcaklık": "21-24°C",
        "Sulama": "40-60 Litre (Mevsimde)",
        "Güneş ışığı": "Tam güneş (6-8 saat)",
        "Toprak Türü": "İyi drene edilmiş, tınlı topraklar",
        "Olgun boyutu": "5-7 metre",
        "Mahsul Zamanı": "Ağustos",
        "Yetiştirme Yöntemi":
            "Böcekleri ve hastalıkları uygun şekilde kontrol ederek, ağaçları gübreleyerek ve düzenli olarak budayarak, bu ağacın güzelliğini ve meyvesini peyzajınızda yıllarca yaşayabilirsiniz. Erken ilkbahar ve yaz aylarında fungisit uygulamaları, hastalıkları önlemek ve sağlıklı, kaliteli meyve üretmek için esastır."
      },
      {
        "id": 2,
        "Bitki": "Arjun",
        "İdeal Sıcaklık": "20-30°C",
        "Sulama": "10 Litre (Haftalık)",
        "Güneş ışığı": "Tam güneş (6-8 saat)",
        "Toprak Türü": "Alüvyonlu, tınlı veya siyah pamuklu topraklar",
        "Olgun boyutu": "35 metre",
        "Mahsul Zamanı": "Mart-Temmuz arası",
        "Yetiştirme Yöntemi":
            "Uygun sulama için öncelikle bitkiye uygun toprak tipini ve toprak drenaj tipini bulun. Arjun Ağacı bakımının en önemli faktörlerinden biri sulamadır."
      },
      {
        "id": 3,
        "Bitki": "Kayısı",
        "İdeal Sıcaklık": "25-37°C",
        "Sulama": "2-4 Litre (Haftalık)",
        "Güneş ışığı": "Tam güneş (6-8 saat)",
        "Toprak Türü": "Ortalama, orta nemli, iyi drene edilmiş",
        "Olgun boyutu": "6-9 metre",
        "Mahsul Zamanı": "Nisan sonu",
        "Yetiştirme Yöntemi":
            "Ağacı daha sıcak bir alana veya tam güneşte bir binaya daha yakın bir yere dikmek, özellikle donlarda çiçeklerin daha uzun süre korunmasına yardımcı olacaktır. Ayrıca, mevcut birçok soğuğa dayanıklı çeşitlerden birini aramak da mümkündür. Fidanlık ticaretinde yüzlerce Prunus armeniaca çeşidi vardır. İster süs ister meyve olarak yetiştirilsin, Prunus armeniaca, telaşlı toprak ve su ihtiyaçları ile biraz yüksek bakım gerektirir. Ancak faydaları, manzaranızdaki muhteşem bir ağaç ve eğer yeterince şanslıysanız, lezzetli taze kayısılardır."
      },
      {
        "id": 4,
        "Bitki": "Fesleğen",
        "İdeal Sıcaklık": "18-24°C",
        "Sulama": "2-4 Litre (Haftalık)",
        "Güneş ışığı": "Tam güneş (6-8 saat)",
        "Toprak Türü": "Nötr pH'lı, iyi drene edilmiş, nemli toprak",
        "Olgun boyutu": "30-60 cm",
        "Mahsul Zamanı": "25 gün",
        "Yetiştirme Yöntemi":
            "Fesleğen nemli kalmayı sever ve her hafta yaklaşık 1 inç su gerektirir. Köklerin derin büyümesini ve toprağı nemli tutmak için en az haftada bir kez derinlemesine sulayın. Kaplarda büyüyen fesleğen daha sık sulamaya ihtiyaç duyacaktır. Bir kapta fesleğen yetiştirirken amacınız toprağın kurumasını önlemektir."
      },
      {
        "id": 5,
        "Bitki": "Yaban mersini",
        "İdeal Sıcaklık": "29-32°C",
        "Sulama": "4-6 Litre (Haftalık)",
        "Güneş ışığı": "Tam güneş (6-8 saat)",
        "Toprak Türü": "Kumlu, iyi drene edilmiş",
        "Olgun boyutu": "2-3.5 metre",
        "Mahsul Zamanı": "Temmuz-Ağustos arası",
        "Yetiştirme Yöntemi":
            "Tam güneş alan ancak kuvvetli rüzgarlardan korunan bir yer seçin. Güneş ışığını engelleyebilecek veya toprak nemi ve besin maddeleri için rekabet edebilecek uzun ağaçlara veya çalılara yakın bir ekim alanından kaçının. Yaban mersini çalıları yaklaşık 1,5 metre aralıklarla sıralanmalıdır; Hasat için bol yer sağlamak için bitişik sıralar 3 metre aralıklarla yerleştirilmelidir."
      },
      {
        "id": 6,
        "Bitki": "Kiraz",
        "İdeal Sıcaklık": "25-32°C",
        "Sulama": "2-4 Litre (Haftalık)",
        "Güneş ışığı": "Tam güneş (6-8 saat)",
        "Toprak Türü": "Verimli, iyi drene edilmiş",
        "Olgun boyutu": "7.5 metre",
        "Mahsul Zamanı": "Nisan-Temmuz arası",
        "Yetiştirme Yöntemi":
            "Kiraz dikerken, kıştan önce kök gelişimi için fırsat sağlamak için Ekim-Mart aylarını (sonbahar en iyisi olsa da) hedeflemek en iyisidir. Bu çalıları daha sıcak aylarda ekmeyi seçerseniz, daha sık sulamaya ihtiyaç duyacaklarını unutmayın. Süs ağaçları için formüle edilmiş gübrelerin yanı sıra yaprak dökmeyen gübreleri kullanarak kirazınızın büyümesini hızlandırabilirsiniz."
      },
      {
        "id": 7,
        "Bitki": "Çınar",
        "İdeal Sıcaklık": "21-23°C",
        "Sulama": "10 Litre (Haftalık)",
        "Güneş ışığı": "Tam güneş (6-8 saat)",
        "Toprak Türü": "Zengin, nemli, verimli ve iyi drene",
        "Olgun boyutu": "10-15 metre",
        "Mahsul Zamanı": "Yok",
        "Yetiştirme Yöntemi":
            "Olgun çınar ağaçları kuraklığa dayanıklıdır, ancak bitkiyi büyüme yıllarında günde bir kez sık sık sulamanız ve toprağın nemini korumanız gerekir. Bitkiyi sonbaharda haftada bir kez sulayın."
      },
      {
        "id": 8,
        "Bitki": "Kızılcık",
        "İdeal Sıcaklık": "15-26°C",
        "Sulama": "2-4 Litre (Haftalık)",
        "Güneş ışığı": "Tam güneş (6-8 saat)",
        "Toprak Türü": "Sıradan asitli toprak",
        "Olgun boyutu": "2-3 metre",
        "Mahsul Zamanı": "Eylül-Kasım arası",
        "Yetiştirme Yöntemi":
            "Kızılcık, büyüme mevsimi boyunca doymuş toprağı sevmez, ancak toprağı eşit derecede nemli tutar. İlkbaharda kızılcık ekin ve yatakları yabani otlardan uzak tutun. Kasım ayı sonlarında toprak donduğunda, kış aylarında kurumaya karşı koruma sağlamak için bitkileri çam iğneleri veya yaprakları ile malçlayın."
      },
      {
        "id": 9,
        "Bitki": "Mısır",
        "İdeal Sıcaklık": "29-32°C",
        "Sulama": "2-4 Litre (Haftalık)",
        "Güneş ışığı": "Tam güneş (6-8 saat)",
        "Toprak Türü": "pH değeri 6.0-6.8 olan iyi drene edilmiş toprak",
        "Olgun boyutu": "2-2.5 metre",
        "Mahsul Zamanı": "80 gün",
        "Yetiştirme Yöntemi":
            "Mısır bitkilerini, korunaklı, biraz gölgeli bir yerdeyse, yaz aylarında dışarıya koyabilirsiniz. Onları kuvvetli rüzgarlardan koruyun. Sıcaklıklar 15 derece altına düşmeye başladığında bitkiyi içeriye getirin."
      },
      {
        "id": 10,
        "Bitki": "Karahindiba",
        "İdeal Sıcaklık": "23-25°C",
        "Sulama": "4-6 Litre (Haftalık)",
        "Güneş ışığı": "Tam güneş (6-8 saat)",
        "Toprak Türü": "Azot ve potasyumca zengin topraklar",
        "Olgun boyutu": "5-15 cm",
        "Mahsul Zamanı": "Mayıs-Temmuz arası",
        "Yetiştirme Yöntemi":
            "Karahindiba iyi drene edilmiş, verimli topraklarda en iyi şekilde büyür, ancak herhangi bir yerde herhangi bir toprakta iyi sonuç verir. Sadece yaprakları için karahindiba yetiştiriyorsanız, daha kötü fiziksel koşullarda toprağı tolere edeceklerdir. Tam güneşi tercih ederler ancak kısmi gölgede iyi olurlar."
      },
      {
        "id": 11,
        "Bitki": "Papatya",
        "İdeal Sıcaklık": "21-23°C",
        "Sulama": "4-6 Litre (Haftalık)",
        "Güneş ışığı": "Tam güneş (6-8 saat)",
        "Toprak Türü": "Nötr ila hafif asidik toprak",
        "Olgun boyutu": "20 cm",
        "Mahsul Zamanı": "Nisan-Haziran arası",
        "Yetiştirme Yöntemi":
            "Papatyalar zengin, hızlı akan toprağı, bol suyu ve bol güneş ışığını tercih eder. Sağlıklı toprak, papatyalarınız için sağlıklı kökler anlamına gelir, bu nedenle ekimden önce bahçenizdeki toprağı değiştirmek için zaman ayırmanız en iyisidir."
      },
      {
        "id": 12,
        "Bitki": "Üzüm",
        "İdeal Sıcaklık": "25-32°C",
        "Sulama": "4-6 Litre (Haftalık)",
        "Güneş ışığı": "Tam güneş (6-8 saat)",
        "Toprak Türü": "Kumlu toprak",
        "Olgun boyutu": "35 metre",
        "Mahsul Zamanı": "Ağustos-Ekim arası",
        "Yetiştirme Yöntemi":
            "Sadece kök bölgesine su uygulayın. Üzüm yapraklarını ıslatmaktan kaçının çünkü bu birçok üzüm hastalığını teşvik edebilir. Bitkiyi kışa hazırlanmak için bastonlarını sertleştirmeye teşvik etmek için sonbaharda genç asmaların sulanmasını azaltın."
      },
      {
        "id": 13,
        "Bitki": "Guava",
        "İdeal Sıcaklık": "23-28°C",
        "Sulama": "4-6 Litre (Haftalık)",
        "Güneş ışığı": "Tam güneş (6-8 saat)",
        "Toprak Türü": "Sığ, orta siyah ve alkali toprak",
        "Olgun boyutu": "6 metre",
        "Mahsul Zamanı": "Ağustos-Aralık-Mart",
        "Yetiştirme Yöntemi":
            "Guava'yı tam güneşte ekin. Kurak bölgelerde, guava'yı kısmi gölgede dikin veya bitkileri öğlen güneşinden koruyun. Guavaları kompost bakımından zengin, iyi drene edilmiş toprakta ekin."
      },
      {
        "id": 14,
        "Bitki": "Limon",
        "İdeal Sıcaklık": "25-30°C",
        "Sulama": "4-6 Litre (Haftalık)",
        "Güneş ışığı": "Tam güneş (6-8 saat)",
        "Toprak Türü":
            "pH değeri 6-7.5 arasında olan iyi drene edilmiş, kumlu toprak",
        "Olgun boyutu": "1,5-3 metre",
        "Mahsul Zamanı": "Aralık-Şubat arası",
        "Yetiştirme Yöntemi":
            "Yaz aylarında bitkileri serbestçe sulayın, ancak tencerenin suda durmasına asla izin vermeyin. Sonbahardan ilkbahara kadar daha ılımlı sulayın, kompost yüzeyinin sulama arasında kısmen kurumasını sağlayın."
      },
      {
        "id": 15,
        "Bitki": "Mango",
        "İdeal Sıcaklık": "27-36°C",
        "Sulama": "10 Litre (Haftalık)",
        "Güneş ışığı": "Tam güneş (6-8 saat)",
        "Toprak Türü": "Lateritik, alüvyal, kumlu balçık ve kumlu",
        "Olgun boyutu": "3-9 metre",
        "Mahsul Zamanı": "Ağustos",
        "Yetiştirme Yöntemi":
            "Mango ağacı bakımı, herhangi bir meyve ağacının bakımına benzer. Uzun sap kökünü doyurmak için ağaçları derinden sulayın. Tekrar sulamadan önce toprağın üst yüzeyinin birkaç inç derinliğe kadar kurumasını bekleyin."
      },
      {
        "id": 16,
        "Bitki": "Şeftali",
        "İdeal Sıcaklık": "20-32°C",
        "Sulama": "4-6 Litre (Haftalık)",
        "Güneş ışığı": "Tam güneş (6-8 saat)",
        "Toprak Türü": "Kumlu, tınlı, verimli üst toprak",
        "Olgun boyutu": "4.5-7.5 metre",
        "Mahsul Zamanı": "Mayıs-Eylül arası",
        "Yetiştirme Yöntemi":
            "Çoğu süs bitkisinin aksine, şeftali ağaçlarının sağlıklı ve üretken kalması için düzenli budama, gübreleme ve ilaçlamaya ihtiyacı vardır. Ağacınızın etrafındaki zemini, su ve besin maddeleri için rekabet edebilecek çim ve yabani otlardan uzak tutun ve cömertçe malçlayın."
      },
      {
        "id": 17,
        "Bitki": "Erik",
        "İdeal Sıcaklık": "24-30°C",
        "Sulama": "20 Litre (Haftalık)",
        "Güneş ışığı": "Tam güneş (6-8 saat)",
        "Toprak Türü": "İyi drene edilmiş, kumlu toprak",
        "Olgun boyutu": "5.5-6 metre",
        "Mahsul Zamanı": "Ağustos-Ekim arası",
        "Yetiştirme Yöntemi":
            "Tam güneşte nemli fakat iyi drene edilmiş toprakta erik ağaçları yetiştirin. Yaz aylarında budama ve sonbaharda ev yapımı kompost veya iyi çürümüş hayvan gübresi ile malçlayın. Erikleri olgun ve sulu olduklarında hasat edin."
      },
      {
        "id": 18,
        "Bitki": "Biber",
        "İdeal Sıcaklık": "18-26°C",
        "Sulama": "4-6 Litre (Haftalık)",
        "Güneş ışığı": "Tam güneş (6-8 saat)",
        "Toprak Türü": "İyi drene, ph-nötr, organik toprak",
        "Olgun boyutu": "1 metre",
        "Mahsul Zamanı": "75 gün",
        "Yetiştirme Yöntemi":
            "Biber bitkileri günde en az 6-8 saat güneş ışığına ihtiyaç duyar. Dikim sırasında kompost veya diğer organik maddeleri toprağa karıştırın. Dikimden hemen sonra, ardından sezon boyunca düzenli olarak sulayın."
      },
      {
        "id": 19,
        "Bitki": "Nar",
        "İdeal Sıcaklık": "15-35°C",
        "Sulama": "2-4 Litre (Haftalık)",
        "Güneş ışığı": "Tam güneş (6-8 saat)",
        "Toprak Türü": "Derin tınlı topraklar",
        "Olgun boyutu": "3.5-6 metre",
        "Mahsul Zamanı": "Eylül-Kasım arası",
        "Yetiştirme Yöntemi":
            "Nar tam güneşe ihtiyaç duyar. Ağacı haftada bir kez, muhtemelen en yoğun yaz aylarında daha sık sulayın."
      },
      {
        "id": 20,
        "Bitki": "Ahududu",
        "İdeal Sıcaklık": "21-24°C",
        "Sulama": "2-4 Litre (Haftalık)",
        "Güneş ışığı": "Tam güneş (6-8 saat)",
        "Toprak Türü": "İyi drene edilmiş, verimli topraklar",
        "Olgun boyutu": "1-1.5 metre",
        "Mahsul Zamanı": "Haziran-Temmuz",
        "Yetiştirme Yöntemi":
            "Düzenli sulama, nadiren derin ıslatmadan daha iyidir. Ahududu çalılarınızı, sıralardan çok uzakta büyüyen \"emicileri\" veya bastonları kazarak düzenli tutun; onları kazmazsanız, besinleri çekerler ve gelecek yıl daha az böğürtleniniz olur."
      },
      {
        "id": 21,
        "Bitki": "Patates",
        "İdeal Sıcaklık": "5-35°C",
        "Sulama": "4-6 Litre (Haftalık)",
        "Güneş ışığı": "Tam güneş (6-8 saat)",
        "Toprak Türü": "Tınlı toprak",
        "Olgun boyutu": "15-90 cm",
        "Mahsul Zamanı": "Sonbahar, kış",
        "Yetiştirme Yöntemi":
            "Geleneksel bir patates dikim yöntemi, sığ bir hendek kazmayı ve tohumluk patatesleri gözler yukarı bakacak şekilde hendeğe yerleştirmeyi içerir. Sonra patatesleri toprakla örtün. Patates bitkisi büyüdükçe, toprak sürekli olarak bitkilerin kenarları boyunca yükselir. Bu, gelişmekte olan yumruların etrafındaki toprağı gevşek tutar ve yüzeydeki yumruların, onları yeşile ve biraz toksik hale getirecek olan güneş ışığına maruz kalmasını engeller. Bitkiler yaklaşık 10 cm yüksekliğe ulaştığında tepeye toprak ekleyin. Bitkiler çiçek açmaya başladığında toprağı yığmayı bırakabilirsiniz."
      },
      {
        "id": 22,
        "Bitki": "Pirinç",
        "İdeal Sıcaklık": "25-35°C",
        "Sulama": "10 Litre (Haftalık)",
        "Güneş ışığı": "Tam güneş (6-8 saat)",
        "Toprak Türü": "Kil veya kil tınlar",
        "Olgun boyutu": "1-1.8 metre",
        "Mahsul Zamanı": "125 gün",
        "Yetiştirme Yöntemi":
            "Su seviyesini topraktan 5 cm kadar yukarıda tutun. Pirinç bitkileri 15 cm boyunda olduğunda, su derinliğini 10 cm'ye çıkarın. Ardından, su seviyesinin belirli bir süre boyunca kendi kendine düşmesine izin verin. İdeal olarak, onları hasat ettiğinizde bitkiler artık durgun suda olmamalıdır."
      },
      {
        "id": 23,
        "Bitki": "Gül",
        "İdeal Sıcaklık": "15-28°C",
        "Sulama": "2-4 Litre (Haftalık)",
        "Güneş ışığı": "Tam güneş (6-8 saat)",
        "Toprak Türü": "Tınlı, iyi drene edilmiş toprak",
        "Olgun boyutu": "15-50 cm",
        "Mahsul Zamanı": "İlkbahar, yaz, sonbahar",
        "Yetiştirme Yöntemi":
            "Drenaj için kısmen bol miktarda değiştirilmiş toprakla doldurulmuş derin deliklere gül dikin ve gül türünüze göre dikim talimatlarını izleyin. Bazıları ekim deliğinin dibinde bir koni oluşturmayı ve kökleri koninin üzerine yaymayı önerir. Bu, köklerin aşağıya doğru büyümesini teşvik eder, çünkü daha derin daha iyidir. Yerleşik bitkilere bakarken, kış koruması için kullanılan malzemeleri çıkararak ilkbahar mevsimine başlayın, ardından bitkileri budayıp yerel iklime uygun zamanda besleyin. Bu aynı zamanda hastalık ve haşere kontrolüne bir adım önde başlamak için sprey uygulamak için de iyi bir zamandır. Çiçekler mevsimde daha sonra solduktan sonra, daha fazla büyüme ve çiçek açma için (tekrar açanlar için) enerjilerini korumak için bitkileri öldürün."
      },
      {
        "id": 24,
        "Bitki": "Soya fasulyesi",
        "İdeal Sıcaklık": "27-30°C",
        "Sulama": "4-6 Litre (Haftalık)",
        "Güneş ışığı": "Tam güneş (6-8 saat)",
        "Toprak Türü": "Gevşek, iyi drene edilmiş balçık",
        "Olgun boyutu": "1-1.5 metre",
        "Mahsul Zamanı": "Ekim-Kasım",
        "Yetiştirme Yöntemi":
            "Soya fasulyesini tam güneşte ekin; soya fasulyesi kısmi gölgeyi tolere edecek ancak verim düşecektir. Soya fasulyesi, organik madde bakımından zengin, gevşek, iyi drene edilmiş topraklarda en iyi şekilde büyür. Soya fasulyesi, 6.0 ila 6.8 arasında bir toprak pH'ını tercih eder. Soya fasulyesi fakir toprağa toleranslıdır."
      },
      {
        "id": 25,
        "Bitki": "Çilek",
        "İdeal Sıcaklık": "22-26°C",
        "Sulama": "4-6 Litre (Haftalık)",
        "Güneş ışığı": "Tam güneş (6-8 saat)",
        "Toprak Türü": "Tınlı, zengin, iyi drene edilmiş toprak",
        "Olgun boyutu": "10-30 cm",
        "Mahsul Zamanı": "Mayıs-Temmuz arası",
        "Yetiştirme Yöntemi":
            "Toprak sıcaklığını serin tutmak, nemi korumak, yabani otları caydırmak ve meyveyi toprağın üzerinde tutmak için ekimden sonra bitkiler arasında malçlayın. Saman, geleneksel çilek malçtır. Toprak sıcaklığını yükselteceğinden siyah plastik kullanmayın ve optimum meyve üretimi için serin toprak gerekir. Çilekleri domates, biber veya patlıcanların yetiştiği yerlere dikmeyin, çünkü bu bitkiler çilekleri etkileyebilecek verticillium solgunluğuna duyarlıdır. ."
      },
      {
        "id": 26,
        "Bitki": "Ayçiçeği",
        "İdeal Sıcaklık": "15-21°C",
        "Sulama": "6-8 Litre (Haftalık)",
        "Güneş ışığı": "Tam güneş (6-8 saat)",
        "Toprak Türü": "iyi drene edilmiş toprak",
        "Olgun boyutu": "1-3 metre",
        "Mahsul Zamanı": "Nisan-Eylül",
        "Yetiştirme Yöntemi":
            "Ayçiçeği yetiştirmek için tek zorunlu gereksinim, güneşli bir yer ve iyi drene edilmiş topraktır. Mümkünse, bu yükselen bitkileri devirebilecek kuvvetli rüzgarlardan korunan bir yer seçin. Ayçiçeklerini rüzgara ve yağmura karşı birbirlerini destekleyebilmeleri için gruplar halinde dikmek faydalı olabilir. Yetiştiriciler genellikle ayçiçeklerini, özellikle de uzun çeşitleri, dik büyümelerini sağlamak için kazıklamak zorundadır. Bitkiler çiçek açtıklarında çok ağır olabilirler. Bir çit boyunca ayçiçeği dikmek, onları kazıklamanın en kolay yoludur. Bambu kazıkları da onları dik tutacak kadar güçlüdür. Bitkinin köklerine zarar vermemek için kazıkları yerleştirirken dikkatli olun. Ayçiçekleri yabani otlarla rekabet etmeyi sevmez, bu yüzden bahçeyi temiz tutun. Ayçiçeklerinizin etrafını malçlamak, hem toprak nemini korumaya hem de yabani otları bastırmaya yardımcı olacaktır."
      },
      {
        "id": 27,
        "Bitki": "Ceviz",
        "İdeal Sıcaklık": "7-35°C",
        "Sulama": "80 Litre (Mevsimde)",
        "Güneş ışığı": "Tam güneş (6-8 saat)",
        "Toprak Türü": "Kumlu killi balçık",
        "Olgun boyutu": "15-22 metre",
        "Mahsul Zamanı": "Eylül-Kasım arası",
        "Yetiştirme Yöntemi":
            "Ceviz ağaçlarının geniş bir kök sistemi vardır ve bu nedenle sık sık sulanmaları gerekmez. Ağaç olgunlaştıkça ölü veya hasarlı uzuvları budayın; aksi takdirde budamaya gerek yoktur. Her baharda gerektiği kadar malç ekleyin."
      },
      {
        "id": 28,
        "Bitki": "Lale",
        "İdeal Sıcaklık": "12-24°C",
        "Sulama": "2-4 Litre (Haftalık)",
        "Güneş ışığı": "Tam güneş (6-8 saat)",
        "Toprak Türü": "Zengin, iyi drene edilmiş toprak",
        "Olgun boyutu": "22-60 cm",
        "Mahsul Zamanı": "Mart-Temmuz arası",
        "Yetiştirme Yöntemi":
            "Laleler, nemli, soğuktan soğuğa kışları ve ılık, kuru yazları olan iklimlerde uzun ömürlü olarak en iyi şekilde büyür. Ampulleri sonbaharda 10-20 cm derinliğe (ampullerin boyutunun yaklaşık üç katı derinlik), iyi drene edilmiş toprakla güneşli bir yere dikin. İlkbaharda çok erken filizlenip çiçek açtıklarından laleler, mevsimin ilerleyen saatlerinde gölgeli koşullar yaratmak için yaprak açacak olan ağaçların ve çalıların altında iyi çalışabilir. Ampulleri sivri ucu yukarı bakacak şekilde (boyutlarına bağlı olarak) 5-10 cm aralıklarla yerleştirin. Laleler, yaklaşık 10 soğanlık gruplar halinde ekildiklerinde en iyi şekilde görünme eğilimindedirler. Laleler bazen yıllık olarak, özellikle de melez çeşitler olarak yetiştirilir. Bu durumda, çiçeklenme tamamlandıktan sonra ampulleri kazabilir ve atabilir, ardından yerlerine yaz çiçekleri dikebilirsiniz. Serin/soğuk-kış bölgelerinde bahçıvanlar için lale yetiştirmek oldukça kolaydır, ancak hibrit türlerin azalmalarını önlemek için birkaç yılda bir bölünmesi gerekir."
      }
    ];
  }

  @override
  Widget build(BuildContext context) {
    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;
    return Scaffold(
      // backgroundColor: Color(0xFFFFD3E4CD).toMaterialColor(),

      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: SizedBox(
                    child: Image.asset("resimler/iFlover01.png")

                ),
              ),
            ),
            //Kullanıcının seçtiği resmin ekrana yerleştirilmesi
            Container(
              color: Colors.white,
              child: query.isEmpty
                  ? Container()
                  : isTapped == true
                      ? ListView.builder(
                          shrinkWrap: true,
                          itemCount: results.length,
                          itemBuilder: (con, ind) {
                            return Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                //Bitki Adı etiketi
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 8.0, right: 8.0, bottom: 20.0),
                                      child: SizedBox(
                                          width: 385,
                                          child: Image.asset(
                                              "resimler/bitkiAd.png")),
                                    ),
                                  ],
                                ),
                                //Yapay Zekadan Çıkan sonucun yazdırılması
                                Container(
                                  child: Text(
                                    results[ind]['Bitki'],
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFFFF454955)
                                            .toMaterialColor(),
                                        fontSize: 16,
                                        fontFamily: "Helvetica"),
                                  ),
                                ),
                                //idel sıcaklık etiketi
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 8.0, right: 8.0, bottom: 20.0,top:10.0),
                                      child: SizedBox(
                                          width: 385,
                                          child: Image.asset(
                                              "resimler/ideal.png")),
                                    ),
                                  ],
                                ),
                                //Yapay Zekadan Çıkan idel sıcaklık yazısı
                                Container(
                                  child: Text(
                                    results[ind]['İdeal Sıcaklık'],
                                    style: TextStyle(
                                        color: Color(0xFFFF454955)
                                            .toMaterialColor(),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        fontFamily: "Helvetica"),
                                  ),
                                ),
                                //Gunes Işığı etiketi
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 8.0, right: 8.0, bottom: 20.0,top:10.0),
                                      child: SizedBox(
                                          width: 385,
                                          child: Image.asset(
                                              "resimler/gunesIsik.png")),
                                    ),
                                  ],
                                ),
                                //Yapay Zekadan Çıkan gunes ışığı yazısı
                                Container(
                                  child: Text(
                                    results[ind]['Güneş ışığı'],
                                    style: TextStyle(
                                        color: Color(0xFFFF454955)
                                            .toMaterialColor(),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        fontFamily: "Helvetica"),
                                  ),
                                ),
                                //sulama etiketi
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 8.0, right: 8.0, bottom: 20.0,top:10.0),
                                      child: SizedBox(
                                          width: 385,
                                          child: Image.asset(
                                              "resimler/sulamaM.png")),
                                    ),
                                  ],
                                ),
                                //Yapay Zekadan Çıkan sulama yazısı
                                Container(
                                  child: Text(
                                    results[ind]['Sulama'],
                                    style: TextStyle(
                                        color: Color(0xFFFF454955)
                                            .toMaterialColor(),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        fontFamily: "Helvetica"),
                                  ),
                                ),
                                //toprak turu etiketi
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 8.0, right: 8.0, bottom: 20.0,top:10.0),
                                      child: SizedBox(
                                          width: 385,
                                          child: Image.asset(
                                              "resimler/toprak.png")),
                                    ),
                                  ],
                                ),
                                //Yapay Zekadan Çıkan toprak turu yazısı
                                Container(
                                  child: Text(
                                    results[ind]['Toprak Türü'],
                                    style: TextStyle(
                                        color: Color(0xFFFF454955)
                                            .toMaterialColor(),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        fontFamily: "Helvetica"),
                                  ),
                                ),
                                //olgun boyutu etiketi
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 8.0, right: 8.0, bottom: 20.0,top:10.0),
                                      child: SizedBox(
                                          width: 385,
                                          child: Image.asset(
                                              "resimler/olgun.png")),
                                    ),
                                  ],
                                ),
                                //Yapay Zekadan Çıkan olgun boyutu yazısı
                                Container(
                                  child: Text(
                                    results[ind]['Olgun boyutu'],
                                    style: TextStyle(
                                        color: Color(0xFFFF454955)
                                            .toMaterialColor(),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        fontFamily: "Helvetica"),
                                  ),
                                ),
                                //çiçek açma zamanı etiketi
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 8.0, right: 8.0, bottom: 20.0,top:10.0),
                                      child: SizedBox(
                                          width: 385,
                                          child: Image.asset(
                                              "resimler/cicek.png")),
                                    ),
                                  ],
                                ),
                                //  //Yapay Zekadan Çıkan çiçek açma zamanı yazısı
                                Container(
                                  child: Text(
                                    results[ind]['Mahsul Zamanı'],
                                    style: TextStyle(
                                        color: Color(0xFFFF454955)
                                            .toMaterialColor(),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        fontFamily: "Helvetica"),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 8.0, right: 8.0, bottom: 20.0,top:12.0),
                                      child: GestureDetector(
                                        onTap:(){
                                        showDialog(context: context,
                                            builder: (BuildContext context){
                                          return AlertDialog(
                                            backgroundColor: Color(0xFFFF3F7D20).toMaterialColor(),
                                            content: Text(results[ind]['Yetiştirme Yöntemi'],
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16,
                                                  fontFamily: "Helvetica"),

                                            ),
                                            actions: [
                                              ElevatedButton(
                                                onPressed:(){
                                                  Navigator.pop(context);
                                                },
                                                child:
                                                Text("Tamam",style: TextStyle(
                                                    color: Color(0xFFFF3F7D20).toMaterialColor(),
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 16,
                                                    fontFamily: "Helvetica"),

                                                ),
                                                style:ElevatedButton.styleFrom(
                                                  primary: Colors.white,
                                                ),
                                              )
                                            ],
                                          );
                                            }

                                        );
                                      },
                                        child: SizedBox(
                                            width: 385,
                                            child: Image.asset(
                                                "resimler/yontem.png")),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            );
                          },
                        )
                      : Container(),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  right: 10.0, left: 10.0, bottom: 40.0, top: 200.0),
              child: TextField(
                onChanged: (v) {
                  setState(() {
                    isTapped = false;
                    query = v;
                    setResults(query);
                  });
                },
                keyboardType: TextInputType.text,
                controller: tc,
                decoration: InputDecoration(
                  labelText: "Arama",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  prefixIcon: Icon(Icons.search),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(ekranYuksekligi / 30),
              child: SizedBox(
                width: ekranGenisligi / 1.2,
                height: ekranYuksekligi / 12,
                child: ElevatedButton(
                  child: Text(
                    "ARA",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: ekranGenisligi / 25,
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      isTapped = true;

                      print("query sonucu: $query");
                      // setResults(query);
                    });

                    print("Giriş Yapıldı.");
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void setResults(String query) {
    results = rows
        .where((elem) => elem['Bitki']
            .toString()
            .toLowerCase()
            .contains(query.toLowerCase()))
        .toList();
  }
}
