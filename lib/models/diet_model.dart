class DietModel {
  String nama;
  String gambar;
  String durasi;
  String kalori;
  String protein;

  DietModel({
    required this.nama,
    required this.gambar,
    required this.durasi,
    required this.kalori,
    required this.protein,
  });

  static List<DietModel> getDiet() {
    List<DietModel> diet = [];

    diet.add(DietModel(
      nama: 'Nasi Merah',
      gambar: 'images/diet/nasimerah.jpg',
      durasi: '30 Menit',
      kalori: '189 kkal',
      protein: '4 g'
    ));

    diet.add(DietModel(
      nama: 'Dada Ayam Bakar',
      gambar: 'images/diet/dadaayambakar.jpeg',
      durasi: '30 Menit',
      kalori: '179 kkal',
      protein: '31 g'
    ));

    diet.add(DietModel(
      nama: 'Tumis Kangkung',
      gambar: 'images/diet/tumiskangkung.jpeg',
      durasi: '10 Menit',
      kalori: '61 kkal',
      protein: '2 g'
    ));

    diet.add(DietModel(
      nama: 'Air Mineral',
      gambar: 'images/diet/airmineral.jpg',
      durasi: '-',
      kalori: '-',
      protein: '-'
    ));

    diet.add(DietModel(
      nama: 'Bakwan Jagung',
      gambar: 'images/diet/bakwanjagung.jpg',
      durasi: '15 Menit',
      kalori: '74 kkal',
      protein: '3 g'
    ));

    diet.add(DietModel(
      nama: 'Kue Cubit',
      gambar: 'images/diet/kuecubit.jpg',
      durasi: '1 Jam',
      kalori: '104 kkal',
      protein: '1 g'
    ));

    return diet;
  }

}