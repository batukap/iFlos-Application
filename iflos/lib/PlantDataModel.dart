class PlantDataModel {
  late final String? id;
  late final String? bitkiAdi;
  late final String? idealTemp;
  late final String? sulama;
  late final String? gunesIsigi;
  late final String? toprakTuru;
  late final String? olgunBoyutu;
  late final String? mahsulZamani;
  late final String? yetistirmeYontemi;

  PlantDataModel(
      {
        this.id,
        this.bitkiAdi,
        this.idealTemp,
        this.sulama,
        this.gunesIsigi,
        this.toprakTuru,
        this.olgunBoyutu,
        this.mahsulZamani,
        this.yetistirmeYontemi
      });
  PlantDataModel.fromJson(Map<String,dynamic> json){
    id=json['id'];
    bitkiAdi=json['Bitki'];
    idealTemp=json['İdeal Sıcaklık'];
    sulama=json['Sulama'];
    gunesIsigi=json['Güneş ışığı'];
    toprakTuru=json['Toprak Türü'];
    olgunBoyutu=json['Olgun Boyutu'];
    mahsulZamani=json['Mahsul Zamanı'];
    yetistirmeYontemi=json['Yetiştirme Yöntemi'];
  }


}