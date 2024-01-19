import 'package:cek_porsi/models/diet_model.dart';
import 'package:cek_porsi/models/kategori_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<KategoriModel> kategori = [];
  List<DietModel> diet = [];

  void _getInit() {
    kategori = KategoriModel.getKategori();
    diet = DietModel.getDiet();
  }

  @override
  Widget build(BuildContext context) {
    _getInit();
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 240, 240, 240),
        appBar: appBar(),
        body: ListView(padding: const EdgeInsets.all(16.0), children: [
          searchBar(),
          kategoriItem(),
          dietItem(),
        ]));
  }

  Column dietItem() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Container(
          margin: const EdgeInsets.only(top: 20, bottom: 16.0),
          child: const Text('Rekomendasi Diet',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ))),
      SizedBox(
          height: 180,
          child: ListView.separated(
              itemCount: diet.length,
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) => const SizedBox(width: 15),
              itemBuilder: (context, index) {
                return SizedBox(
                    width: 220,
                    child: Column(children: [
                      Container(
                          height: 180,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Stack(children: [
                            Positioned(
                                top: 0,
                                left: 0,
                                right: 0,
                                child: Container(
                                    height: 100,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(diet[index].gambar),
                                        fit: BoxFit.cover,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ))),
                            Positioned(
                                bottom: 0,
                                left: 0,
                                right: 0,
                                child: Container(
                                    height: 80,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    child: Center(
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                          Container(
                                              margin: const EdgeInsets.only(
                                                  bottom: 10.0),
                                              child: Text(diet[index].nama,
                                                  textAlign: TextAlign.center,
                                                  style: const TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.bold,
                                                  ))),
                                          Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Container(
                                                    margin:
                                                        const EdgeInsets.only(
                                                            right: 10.0),
                                                    child: Row(children: [
                                                      Container(
                                                          margin:
                                                              const EdgeInsets
                                                                  .only(
                                                                  right: 5.0),
                                                          child: const Icon(
                                                            Icons
                                                                .access_time_rounded,
                                                            size: 14,
                                                          )),
                                                      Text(diet[index].durasi,
                                                          style:
                                                              const TextStyle(
                                                            fontSize: 12,
                                                          ))
                                                    ])),
                                                Container(
                                                    margin:
                                                        const EdgeInsets.only(
                                                            right: 10.0),
                                                    child: Row(children: [
                                                      Container(
                                                          margin:
                                                              const EdgeInsets
                                                                  .only(
                                                                  right: 5.0),
                                                          child: const Icon(
                                                            Icons
                                                                .local_fire_department_rounded,
                                                            size: 14,
                                                          )),
                                                      Text(diet[index].kalori,
                                                          style:
                                                              const TextStyle(
                                                            fontSize: 12,
                                                          ))
                                                    ])),
                                                Container(
                                                    margin:
                                                        const EdgeInsets.only(
                                                            right: 10.0),
                                                    child: Row(children: [
                                                      Container(
                                                          margin:
                                                              const EdgeInsets
                                                                  .only(
                                                                  right: 5.0),
                                                          child: const Icon(
                                                            Icons
                                                                .emoji_food_beverage_rounded,
                                                            size: 14,
                                                          )),
                                                      Text(diet[index].protein,
                                                          style:
                                                              const TextStyle(
                                                            fontSize: 12,
                                                          ))
                                                    ]))
                                              ])
                                        ]))))
                          ]))
                    ]));
              }))
    ]);
  }

  Column kategoriItem() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Container(
          margin: const EdgeInsets.only(top: 20, bottom: 16.0),
          child: const Text('Kategori',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ))),
      SizedBox(
          height: 150,
          child: ListView.separated(
              itemCount: kategori.length,
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) => const SizedBox(width: 15),
              itemBuilder: (context, index) {
                return SizedBox(
                    width: 100,
                    child: Column(children: [
                      Container(
                          height: 135,
                          decoration: BoxDecoration(
                            color: kategori[index].warna.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Center(
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                Container(
                                    width: 80,
                                    height: 80,
                                    decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(0.5),
                                      shape: BoxShape.circle,
                                    ),
                                    child: Center(
                                        child: Image.asset(
                                      kategori[index].gambar,
                                      width: 70,
                                      height: 70,
                                    ))),
                                Container(
                                    margin: const EdgeInsets.only(top: 10.0),
                                    child: Text(kategori[index].nama,
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        )))
                              ])))
                    ]));
              }))
    ]);
  }

  Container searchBar() {
    return Container(
        margin: const EdgeInsets.only(top: 20, bottom: 16.0),
        child: TextField(
            decoration: InputDecoration(
                hintText: 'Cari makanan atau minuman...',
                filled: true,
                fillColor: Colors.white,
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                suffixIcon: IconButton(
                  icon: const Icon(Icons.tune),
                  onPressed: () {},
                ))));
  }

  AppBar appBar() {
    return AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: SvgPicture.asset(
          'images/logo.svg',
          width: 60,
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.scatter_plot),
            onPressed: () {},
          )
        ]);
  }
}
