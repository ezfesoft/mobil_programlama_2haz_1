// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Şebinkarahisar MYO',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

List<String> _bolumlerListe = <String>[
  "Bilişim Güvenliği Teknolojisi",
  "Elektrik",
  "Elektronik Teknolojisi",
  "Kontrol ve Otomasyon Teknolojisi",
  "Biyomedikal Cihaz Teknolojisi",
  "Gıda Teknolojisi",
  "Radyo ve Televizyon Programcılığı",
  "Laboratuvar Teknolojisi",
  "Makine",
  "Otomotiv Teknolojisi",
  "Ormancılık ve Orman Ürünleri",
  "Mimari Restorasyon",
  "İç Mekan Tasarımı",
  "Moda Tasarım",
  "Endüstri Ürünleri Tasarımı",
  "Tekstil Teknolojisi"
];

List<Color> _bolumlerRenkler = <Color>[
  Colors.black,
  Colors.red,
  Colors.pink,
  Colors.purple,
  Colors.blue,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.black,
  Colors.red,
  Colors.pink,
  Colors.purple,
  Colors.blue,
  Colors.green,
  Colors.yellow,
  Colors.orange
];

List<String> _seciliBolumDersleri = <String>[];

List<String> _BGT = <String>[
  "Bilgisayar Ağları ve Donanımları",
  "Nesne Tabanlı Programlama II",
  "Siber Saldırı ve Savunma Yöntemleri",
  "Mesleki Yabancı Dil",
  "İnternet Programcılığı",
  "Sistem Analizi ve Tasarımı",
  "Seçmeli",
];

List<String> _Elektrik = <String>[
  "Nesne Tabanlı Programlama II",
  "Siber Saldırı ve Savunma Yöntemleri",
  "Mesleki Yabancı Dil",
  "İnternet Programcılığı",
  "Sistem Analizi ve Tasarımı",
  "Seçmeli",
];

List<String> _Moda = <String>[
  "Siber Saldırı ve Savunma Yöntemleri",
  "Mesleki Yabancı Dil",
  "İnternet Programcılığı",
  "Sistem Analizi ve Tasarımı",
  "Seçmeli",
];

List<String> _MimariRestorasyon = <String>[
  "Mesleki Yabancı Dil",
  "İnternet Programcılığı",
  "Sistem Analizi ve Tasarımı",
  "Seçmeli",
];

class _MyHomePageState extends State<MyHomePage> {
  String _bolum = "Seçilen Bölüm";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Şebinkarahisar MYO"),
        ),
        body: Container(
            color: Colors.grey.shade300,
            child: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Spacer(),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  height: MediaQuery.of(context).size.height * .15,
                  width: MediaQuery.of(context).size.width * .95,
                  child: ListView.separated(
                    padding: EdgeInsets.all(5),
                    itemCount: _bolumlerListe.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    separatorBuilder: (context, index) => Divider(
                      height: 10,
                    ),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                          onTap: () {
                            setState(() {
                              _bolum = _bolumlerListe[index];
                            });
                            switch (index) {
                              case 0:
                                setState(() {
                                  _seciliBolumDersleri = _BGT;
                                });
                                break;
                              case 1:
                                setState(() {
                                  _seciliBolumDersleri = _Elektrik;
                                });
                                break;

                              case 2:
                                setState(() {
                                  _seciliBolumDersleri = _Moda;
                                });
                                break;

                              case 3:
                                setState(() {
                                  _seciliBolumDersleri = _MimariRestorasyon;
                                });
                                break;

                              default:
                                break;
                            }
                          },
                          child: Row(
                            children: [
                              Icon(
                                Icons.school,
                                color: _bolumlerRenkler[index],
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Text(_bolumlerListe[index])
                            ],
                          ));
                    },
                  ),
                ),
                Spacer(),
                Text(
                  _bolum,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                Spacer(),
                Container(
                  height: MediaQuery.of(context).size.height * .60,
                  width: MediaQuery.of(context).size.width * .95,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: ListView.separated(
                      itemBuilder: (context, index) {
                        return Container(
                            padding: EdgeInsets.only(left: 20, top: 10),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.book,
                                  color: _bolumlerRenkler[index],
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Text(_seciliBolumDersleri[index]),
                                Spacer(),
                                Container(
                                    width: 100,
                                    height: 20,
                                    decoration: BoxDecoration(
                                        color: Colors.grey.shade300,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.person,
                                            color: _bolumlerRenkler[index % 2],
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text("S. Ezd."),
                                        ])),
                                SizedBox(
                                  width: 10,
                                )
                              ],
                            ));
                      },
                      separatorBuilder: (context, index) => Divider(
                            indent: 20,
                            endIndent: 20,
                          ),
                      itemCount: _seciliBolumDersleri.length),
                ),
                Spacer(),
              ],
            ))));
  }
}
