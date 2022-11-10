import 'package:dart_odev_2/dart_odev_2.dart' as dart_odev_2;
import 'dart:io';

void main(List<String> arguments) {
  var y = new Canlilar(cnlAd: "Yiğit", cnlYas: 20, cnlCinsiyet: true);
  var x = new Insan(
      insSoyad: "Avaz",
      insGozlukluMu: false,
      insAylikGelir: "25000TL",
      insVize: 80,
      insFinal: 75);

  print(y.CanliEkle(y));
  print(y.CinsiyetUpdate(y));
  print(x.UpdateYurumek(y));
  print(x.UpdateKosma(x));
  print(x.UpdateAylikGelir(x));
  print(x.UpdateGozluk(x));
  print(x.Puan(x));
}

// CANLILAR ADINDA CLASS OLUŞTURDUM İSTEDİĞİNİZ GİBİ ADI STRING, YAŞI INT, CİNSİYETİ DE BOOL YAPTIM.
class Canlilar {
  String? cnlAd;
  int? cnlYas;
  bool? cnlCinsiyet;

  Canlilar({String cnlAd = "Yiğit", int cnlYas = 20, bool cnlCinsiyet = true}) {
    this.cnlAd = cnlAd;
    this.cnlYas = cnlYas;
    this.cnlCinsiyet = cnlCinsiyet;
  }

  String CanliEkle(Canlilar c) {
    return '${cnlAd} isimli canlı eklendi!';
  }

  String UpdateYurumek(Canlilar c) {
    return '${cnlAd} isimli canlı yürüyor!';
  }

  String CinsiyetUpdate(Canlilar c) {
    return 'Canlının Cinsiyeti Erkek Mi? ${cnlCinsiyet}';
  }
}

//BURADA INSAN ADINDA CLASS OLUŞTURUP CANLILARDAN MİRAS ALDIRDIM.
class Insan extends Canlilar {
  var insSoyad;
  var insGozlukluMu;
  var insAylikGelir;
  double? insVize = 80;
  double? insFinal = 75;
  double? insOrtalama = (30 * 80 / 100) + (70 * 75 / 100);

// Hocam burada istediğim şeyi yapamadım. İstediğim şey aslında (insVize*30/100)+(insFinal*70/100)'dü ama hata aldım yapamadım derste size soracağım nedenini.

  Insan(
      {var insSoyad = "Avaz",
      bool insGozlukluMu = false,
      var insAylikGelir = "Bilinmiyor",
      double insVize = 80,
      double insFinal = 75}) {
    this.insSoyad = insSoyad;
    this.insAylikGelir = insAylikGelir;
    this.insGozlukluMu = insGozlukluMu;
    this.insVize = insVize;
    this.insFinal = insFinal;
    this.insOrtalama = insOrtalama;
  }

  String UpdateKosma(Insan c) {
    return '${cnlAd} ${insSoyad} koşuyor!';
  }

  String UpdateAylikGelir(Insan c) {
    return 'Yiğit Avazın Aylık Geliri ${insAylikGelir} Olarak Güncellendi';
  }

  String UpdateGozluk(Insan c) {
    return 'Yiğit Avaz Gözlüklü mü? ${insGozlukluMu}.';
  }

  String Puan(Insan c) {
    return "Vize ve Final Puan Ortalaması ${insOrtalama}";
  }
}
