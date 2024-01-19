import 'package:flutter/material.dart';

class KategoriModel {
  String nama;
  String gambar;
  Color warna;

  KategoriModel({
    required this.nama,
    required this.gambar,
    required this.warna,
  });

  static List<KategoriModel> getKategori() {
    List<KategoriModel> kategori = [];

    kategori.add(KategoriModel(
      nama: 'Nasi',
      gambar: 'images/kategori/nasi.png',
      warna: const Color.fromARGB(255, 255, 204, 0),
    ));

    kategori.add(KategoriModel(
      nama: 'Lauk',
      gambar: 'images/kategori/ayam.png',
      warna: const Color.fromARGB(255, 255, 102, 0),
    ));

    kategori.add(KategoriModel(
      nama: 'Sayur',
      gambar: 'images/kategori/sayur.png',
      warna: const Color.fromARGB(255, 51, 204, 51),
    ));

    kategori.add(KategoriModel(
      nama: 'Minuman',
      gambar: 'images/kategori/minuman.png',
      warna: const Color.fromARGB(255, 0, 153, 204),
    ));

    kategori.add(KategoriModel(
      nama: 'Gorengan',
      gambar: 'images/kategori/gorengan.png',
      warna: const Color.fromARGB(255, 255, 153, 51),
    ));

    kategori.add(KategoriModel(
      nama: 'Jajanan',
      gambar: 'images/kategori/jajanan.png',
      warna: const Color.fromARGB(255, 255, 51, 51),
    ));

    return kategori;
  }
}
