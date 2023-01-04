import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:resep_nenek/deskripsi_page.dart';
import 'package:resep_nenek/favorite_page.dart';
import 'package:resep_nenek/resep_list.dart';
import 'package:provider/provider.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  final TextEditingController _controllerKeyword = TextEditingController();
  String _keyword = '';

  @override
  void dispose() {
    _controllerKeyword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
              systemOverlayStyle: SystemUiOverlayStyle.light,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(20),
                ),
              ),
              centerTitle: false,
              elevation: 0,
              backgroundColor: Colors.transparent,
              title: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('Resep Nenek',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 28,
                            fontFamily: "Pacifico")),
                    Text(
                        'Pengin masakan tradisional? Mending masak sendiri aja',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 10,
                        )),
                  ]),
              actions: [
                IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return FaforitePage();
                    }));
                  },
                  icon: Icon(Icons.favorite),
                )
              ],
              flexibleSpace: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(15.0),
                    bottomRight: Radius.circular(15.0),
                  ),
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        const Color.fromARGB(255, 119, 18, 214)
                            .withOpacity(0.7),
                        const Color.fromARGB(255, 59, 62, 255).withOpacity(0.9),
                      ]),
                ),
              ),
              bottom: AppBar(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.elliptical(20, 10),
                  ),
                ),
                elevation: 0,
                backgroundColor: Colors.transparent,
                title: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5)),
                    width: double.infinity,
                    height: 40,
                    child: TextField(
                      controller: _controllerKeyword,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Cari resep di sini',
                          prefixIcon: const Icon(Icons.search),
                          suffixIcon: _keyword.isNotEmpty
                              ? IconButton(
                                  icon: const Icon(Icons.clear),
                                  onPressed: () {
                                    setState(() {
                                      _keyword = '';
                                    });
                                    _controllerKeyword.clear();
                                  },
                                )
                              : const SizedBox(
                                  width: 0,
                                  height: 5,
                                )),
                      onChanged: (String value) {
                        setState(() {
                          _keyword = value;
                        });
                      },
                    )),
              )),
          body: GridView.count(
            crossAxisCount: 2,
            children: [
              CustomCard(
                  title: "Mi Aceh",
                  image:
                      "https://cdn-cas.orami.co.id/parenting/images/Mi_Aceh1.width-1000.jpg"),
              CustomCard(
                  title: "Bika Ambon",
                  image:
                      "https://cdn-cas.orami.co.id/parenting/images/Bika_Ambon1.width-1000.jpg"),
              CustomCard(
                  title: "Rendang",
                  image:
                      "https://cdn-cas.orami.co.id/parenting/images/Rendang.width-1000.jpg"),
              CustomCard(
                  title: "Pendap",
                  image:
                      "https://cdn-cas.orami.co.id/parenting/images/Pendap1.width-1000.jpg"),
              CustomCard(
                  title: "Gulai Belance",
                  image:
                      "https://cdn-cas.orami.co.id/parenting/images/Gulai_Belacan1.width-1000.jpg"),
              CustomCard(
                  title: "Pempek",
                  image:
                      "https://cdn-cas.orami.co.id/parenting/images/Pempek_1KJx1mE.width-1000.jpg"),
              CustomCard(
                  title: "Mi Bangka",
                  image:
                      "https://cdn-cas.orami.co.id/parenting/images/Mi_Bangka1.width-1000.jpg"),
              CustomCard(
                  title: "Seruit",
                  image:
                      "https://cdn-cas.orami.co.id/parenting/images/Seruit1.width-1000.jpg"),
              CustomCard(
                  title: "Sate Bandeng",
                  image:
                      "https://cdn-cas.orami.co.id/parenting/images/Sate_Bandeng.width-1000.jpg"),
              CustomCard(
                  title: "Kerak Telor",
                  image:
                      "https://cdn-cas.orami.co.id/parenting/images/Kerak_Telor1.width-1000.jpg"),
              CustomCard(
                  title: "Karedok",
                  image:
                      "https://cdn-cas.orami.co.id/parenting/images/Karedok1.width-1000.jpg"),
              CustomCard(
                  title: "Garam Asam",
                  image:
                      "https://cdn-cas.orami.co.id/parenting/images/Garang_Asem_LPiBLTY.width-1000.jpg"),
              CustomCard(
                  title: "Gudeng",
                  image:
                      "https://cdn-cas.orami.co.id/parenting/images/Gudeg.width-1000.jpg"),
              CustomCard(
                  title: "Rujak Cingur",
                  image:
                      "https://cdn-cas.orami.co.id/parenting/images/Rujak_Cingur1.width-1000.jpg"),
              CustomCard(
                  title: "Ayam Betutu",
                  image:
                      "https://cdn-cas.orami.co.id/parenting/images/Ayam_Betutu.width-1000.png"),
              CustomCard(
                  title: "Catemak Jagung",
                  image:
                      "https://cdn-cas.orami.co.id/parenting/images/Catemak_Jagung.width-1000.jpg"),
              CustomCard(
                  title: "Ayam Taliwang",
                  image:
                      "https://cdn-cas.orami.co.id/parenting/images/Ayam_Taliwang.width-1000.png"),
              CustomCard(
                  title: "Soto Makassar",
                  image:
                      "https://cdn-cas.orami.co.id/parenting/images/Coto_Makassar.width-1000.jpg"),
              CustomCard(
                  title: "Bau Peapi",
                  image:
                      "https://cdn-cas.orami.co.id/parenting/images/Bau_Peapi1.width-1000.jpg"),
              CustomCard(
                  title: "Uta Dada",
                  image:
                      "https://cdn-cas.orami.co.id/parenting/images/Uta_Dada1.width-1000.jpg"),
            ],
          ),
        ));
  }
}

class CustomCard extends StatelessWidget {
  CustomCard({required this.title, required this.image});

  String title;
  String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Card(
        elevation: 5,
        child: InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Deskripsi();
            }));
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 110,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                          image,
                        ),
                        fit: BoxFit.cover)),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 19,
                          fontFamily: "EBGaramond"),
                    ),
                    IconButton(
                      onPressed: () {
                        // Navigator.push(context,
                        //     MaterialPageRoute(builder: (context) {
                        //   return Deskripsi();
                        // }));
                      },
                      icon: Icon(Icons.favorite_outline),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
