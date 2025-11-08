import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Gambar Utama
            Image.asset('images/ampera.jpg'),
            // Judul + tombol favoritnya
            Padding(
              padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
              child: Row(
                children: [
                  const Expanded(
                    child: Text(
                      'Kota Palembang',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.favorite, color: Colors.red),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            // Icon dan Text
            Container(
              padding: const EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // Icon pertama
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: const [
                          Icon(Icons.location_on, color: Color(0xFFE74C3C), size: 22),
                          SizedBox(width: 8),
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Lokasi : ',
                                  style: TextStyle(fontWeight: FontWeight.w700),
                                ),
                                TextSpan(text: 'Sumatera Selatan, Indonesia'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: const [
                          Icon(Icons.calendar_month, color: Color(0xFFE74C3C), size: 22),
                          SizedBox(width: 8),
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Dibangun : ',
                                  style: TextStyle(fontWeight: FontWeight.w700),
                                ),
                                TextSpan(text: 'Sejak Abad ke-7'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: const [
                          Icon(Icons.category, color: Color(0xFFE74C3C), size: 22),
                          SizedBox(width: 8),
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Tipe : ',
                                  style: TextStyle(fontWeight: FontWeight.w700),
                                ),
                                TextSpan(text: 'Kota Sejarah dan Budaya'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Deskripsi
            const Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                'Deskripsi',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
              ),
            ),
            Container(
              padding: EdgeInsets.all(8),
              width: double.infinity,
              child: Text(
                "Kota Palembang adalah ibu kota Provinsi Sumatera Selatan, Indonesia, yang dikenal sebagai kota tertua di Indonesia dan memiliki sejarah yang kaya serta budaya yang beragam. Palembang memiliki sejarah yang panjang, pernah menjadi ibu kota Kerajaan Sriwijaya, yang merupakan kerajaan maritim terbesar di Asia Tenggara pada abad ke-9. Kota ini dikenal dengan julukan 'Bumi Sriwijaya' dan merupakan salah satu kota tertua di Indonesia, dengan prasasti Kedukan Bukit yang menunjukkan pembentukan pemukiman pada tahun 683 Masehi.",
                textAlign: TextAlign.justify,
              ),
            ),
            // Gambar Scrollable
            const Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                'Galeri',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
              ),
            ),
            SizedBox(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 16, 0, 8),
                    child:ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        'https://4.bp.blogspot.com/-vnefZvbP2co/VrwmAPOkJqI/AAAAAAAAAFI/eg368ew5Ia4/s1600/bkbb.jpg'
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 16, 0, 8),
                    child:ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        'https://sumateraekspres.bacakoran.co/upload/0284b060728a98ed8edff4e2e3af3f3c.jpg'
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 16, 8, 8),
                    child:ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        'https://asset.kompas.com/crops/XWdEKQ2Ryi8WT9w_93Ert-YSGrw=/0x0:1000x500/750x500/data/photo/2017/03/13/2123468musiii.jpg'
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Nama dan NPM
            const Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                'Nama & NPM',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
              ),
            ),
            Container(
              padding: EdgeInsets.all(8),
              width: double.infinity,
              child: Text(
                "Daniel Mido, 2327240038",
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
