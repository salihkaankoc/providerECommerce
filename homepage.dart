import 'package:carousel_slider/carousel_slider.dart';
import 'package:denemeproje/database/db_helper.dart';
import 'package:denemeproje/models/cart.dart';
import 'package:denemeproje/models/item.dart';
import 'package:denemeproje/screens/product_catalog.dart';
import 'package:denemeproje/screens/product_detail.dart';
import 'package:denemeproje/screens/view_cart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  List<Item> catalogItems = [
    Item(
        id: 0,
        name: 'IPhone 13 Pro Max',
        quantity: 1,
        price: 22000,
        category: 'Teknoloji',
        itemImage: AssetImage("assets/iphone13.png"),
        description:
            'Yeniden tasarlanan lensi ve güçlü otomatik netleme sistemi sayesinde yeni Ultra Geniş kamera süjenize 2 cm uzaktan odaklanabiliyor.'),
    Item(
        id: 1,
        name: 'Samsung Tablet',
        description:
            'Yeniden tasarlanan lensi ve güçlü otomatik netleme sistemi sayesinde yeni Ultra Geniş kamera süjenize 2 cm uzaktan odaklanabiliyor.',
        quantity: 1,
        price: 3200,
        category: 'Teknoloji',
        itemImage: AssetImage("assets/samsungtablet.jpeg")),
    Item(
        id: 2,
        name: 'Apple Watch',
        description:
            'Yeniden tasarlanan lensi ve güçlü otomatik netleme sistemi sayesinde yeni Ultra Geniş kamera süjenize 2 cm uzaktan odaklanabiliyor.',
        quantity: 1,
        price: 1300,
        category: 'Teknoloji',
        itemImage: AssetImage("assets/applewatch.jpeg")),
    Item(
        id: 3,
        name: 'MacBook Pro',
        description:
            'Yeniden tasarlanan lensi ve güçlü otomatik netleme sistemi sayesinde yeni Ultra Geniş kamera süjenize 2 cm uzaktan odaklanabiliyor.',
        quantity: 1,
        price: 17750,
        category: 'Teknoloji',
        itemImage: AssetImage('assets/macbookpro.png')),
    Item(
        id: 4,
        name: 'Samsung Charger Type-C',
        quantity: 1,
        description:
            'Yeniden tasarlanan lensi ve güçlü otomatik netleme sistemi sayesinde yeni Ultra Geniş kamera süjenize 2 cm uzaktan odaklanabiliyor.',
        price: 230,
        category: 'Teknoloji',
        itemImage: AssetImage("assets/charger.jpeg")),
    Item(
        id: 5,
        name: 'Razer Mouse',
        description:
            'Yeniden tasarlanan lensi ve güçlü otomatik netleme sistemi sayesinde yeni Ultra Geniş kamera süjenize 2 cm uzaktan odaklanabiliyor.',
        quantity: 1,
        price: 70,
        category: 'Teknoloji',
        itemImage: AssetImage("assets/razermouse.jpeg")),
    Item(
        id: 6,
        name: 'Razer Keyboard',
        description:
            'Yeniden tasarlanan lensi ve güçlü otomatik netleme sistemi sayesinde yeni Ultra Geniş kamera süjenize 2 cm uzaktan odaklanabiliyor.',
        quantity: 1,
        price: 65,
        category: 'Teknoloji',
        itemImage: AssetImage("assets/razerkeyboard.jpeg")),
    Item(
        id: 8,
        name: 'Dell Screen 19"',
        quantity: 1,
        description:
            'Yeniden tasarlanan lensi ve güçlü otomatik netleme sistemi sayesinde yeni Ultra Geniş kamera süjenize 2 cm uzaktan odaklanabiliyor.',
        price: 720,
        category: 'Teknoloji',
        itemImage: AssetImage("assets/dellscreen.jpeg")),
    Item(
        id: 9,
        name: 'Nike Air Force',
        description:
            'Yeniden tasarlanan lensi ve güçlü otomatik netleme sistemi sayesinde yeni Ultra Geniş kamera süjenize 2 cm uzaktan odaklanabiliyor.',
        quantity: 1,
        price: 720,
        category: 'Ayakkabı',
        itemImage: AssetImage("assets/airforce.jpeg")),
    Item(
        id: 10,
        name: 'Adidas Superstar',
        description:
            'Yeniden tasarlanan lensi ve güçlü otomatik netleme sistemi sayesinde yeni Ultra Geniş kamera süjenize 2 cm uzaktan odaklanabiliyor.',
        quantity: 1,
        price: 1650,
        category: 'Ayakkabı',
        itemImage: AssetImage("assets/superstar.jpeg")),
    Item(
        id: 11,
        name: 'Gucci Jacket',
        quantity: 1,
        price: 4450,
        description:
            'Yeniden tasarlanan lensi ve güçlü otomatik netleme sistemi sayesinde yeni Ultra Geniş kamera süjenize 2 cm uzaktan odaklanabiliyor.',
        category: 'Kıyafet',
        itemImage: AssetImage("assets/jacket.jpeg"))
  ];

  String title1 = 'Teknoloji';
  String title2 = 'Ayakkabı';
  String title3 = 'Kıyafet';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => CartScreen()));
            },
            icon: Icon(
              Icons.shopping_cart,
              size: 25,
              color: Color(0xFF3B7197),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Color(0xFF3B7197),
              size: 25,
            ),
          ),
        ],
        backgroundColor: Colors.white,
        title: Text(
          'Shoppy\'s',
          style: GoogleFonts.lato(
              textStyle: TextStyle(
            fontStyle: FontStyle.italic,
            fontSize: 27,
            color: Color(0xFF3B7197),
          )),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 30, right: 20, left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Row(
                  children: [
                    Text('Hos geldin, Kaan!',
                        style: GoogleFonts.lato(
                          textStyle: TextStyle(fontSize: 25),
                        ))
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 40,
                    width: MediaQuery.of(context).size.width / 1.2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        suffixIcon: Icon(
                          Icons.search,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              //Slider
              CarouselSlider(
                  items: [
                    Container(
                      height: 150,
                      width: MediaQuery.of(context).size.width / 1.1,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFF3B7197),
                              Color(0xFF98DAD9),
                            ],
                          )),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 130,
                              width: 120,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white.withOpacity(0.5),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Seçili ürünlerde',
                                    style: GoogleFonts.lato(
                                        textStyle: TextStyle(fontSize: 16)),
                                  ),
                                  Text(
                                    '%60',
                                    style: GoogleFonts.lato(
                                        textStyle: TextStyle(fontSize: 28)),
                                  ),
                                  Text(
                                    'Indirim',
                                    style: GoogleFonts.lato(
                                        textStyle: TextStyle(fontSize: 22)),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              height: 130,
                              width: 130,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      image: catalogItems[3].itemImage)),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    ProductDetail(myItem: catalogItems[0])));
                      },
                      child: Container(
                        height: 150,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(255, 232, 118, 25),
                                Color.fromARGB(255, 187, 20, 131),
                              ],
                            )),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 130,
                                width: 120,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white.withOpacity(0.5),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Ikinci Ürüne',
                                      style: GoogleFonts.lato(
                                          textStyle: TextStyle(fontSize: 13)),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          '%20',
                                          style: GoogleFonts.lato(
                                              textStyle:
                                                  TextStyle(fontSize: 28)),
                                        ),
                                        Text(
                                          '\'ye',
                                          style: GoogleFonts.lato(
                                              textStyle:
                                                  TextStyle(fontSize: 10)),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      'Varan',
                                      style: GoogleFonts.lato(
                                          textStyle: TextStyle(fontSize: 13)),
                                    ),
                                    Text(
                                      'Indirim',
                                      style: GoogleFonts.lato(
                                          textStyle: TextStyle(fontSize: 20)),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                height: 130,
                                width: 130,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                        image: catalogItems[0].itemImage)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                  options: CarouselOptions(
                    height: 150,
                    aspectRatio: 16 / 9,
                    viewportFraction: 0.8,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(milliseconds: 720),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    scrollDirection: Axis.horizontal,
                  )),
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProductCategory(
                                      myTitle: title1,
                                    )));
                      },
                      child: Container(
                        height: 40,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Center(
                          child: Text(
                            title1,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProductCategory(
                                      myTitle: title2,
                                    )));
                      },
                      child: Container(
                        height: 40,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: Center(
                          child: Text(
                            title2,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProductCategory(
                                      myTitle: title3,
                                    )));
                      },
                      child: Container(
                        height: 40,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: Center(
                          child: Text(
                            title3,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text('Tüm Ürünler',
                  style: GoogleFonts.lato(
                    textStyle: TextStyle(
                      fontSize: 28,
                    ),
                  )),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 1900,
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    childAspectRatio: 5 / 7,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                  ),
                  itemCount: catalogItems.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProductDetail(
                                    myItem: catalogItems[index])));
                      },
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              height: 115,
                              width: 200,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: catalogItems[index].itemImage,
                                    fit: BoxFit.contain),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      catalogItems[index].name,
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Row(
                                children: [
                                  Text(
                                    '${catalogItems[index].price.toString()} ₺',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.green,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 12.0, right: 8.0),
                                  child: Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                        color: Color(0xFF3B7197),
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    child: IconButton(
                                      icon: const Icon(
                                        Icons.add_shopping_cart,
                                        color: Colors.white,
                                      ),
                                      onPressed: () {
                                        Scaffold.of(context)
                                            .showSnackBar(SnackBar(
                                          content: Text('Sepete Eklendi!'),
                                          backgroundColor: Color(0xFF3B7197),
                                        ));
                                        if (Provider.of<CartModel>(context,
                                                listen: false)
                                            .items
                                            .contains(catalogItems[index])) {
                                          catalogItems[index].quantity++;
                                        } else {
                                          Provider.of<CartModel>(context,
                                                  listen: false)
                                              .addItem(
                                                  index, catalogItems[index]);
                                        }
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
