import 'package:denemeproje/models/cart.dart';
import 'package:denemeproje/models/item.dart';
import 'package:denemeproje/screens/product_detail.dart';
import 'package:denemeproje/screens/view_cart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProductCategory extends StatefulWidget {
  final String? myTitle;
  const ProductCategory({Key? key, this.myTitle}) : super(key: key);

  @override
  State<ProductCategory> createState() => _ProductCategoryState();
}

class _ProductCategoryState extends State<ProductCategory> {
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
        price: 1100,
        category: 'Teknoloji',
        itemImage: AssetImage("assets/dellscreen.jpeg")),
    Item(
        id: 9,
        name: 'Nike Air Force',
        description:
            'Yeniden tasarlanan lensi ve güçlü otomatik netleme sistemi sayesinde yeni Ultra Geniş kamera süjenize 2 cm uzaktan odaklanabiliyor.',
        quantity: 1,
        price: 1100,
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
  List<Item> myNewList = [];

  @override
  Widget build(BuildContext context) {
    for (var thisItem in catalogItems) {
      if (thisItem.category == widget.myTitle) {
        myNewList.add(thisItem);
      }
    }
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Color(0xFF3B7197),
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
          padding: EdgeInsets.only(top: 30),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Text(
                      '${widget.myTitle}',
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: MediaQuery.of(context).size.height,
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 250,
                    childAspectRatio: 1 / 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                  ),
                  itemCount: myNewList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    ProductDetail(myItem: myNewList[index])));
                      },
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: myNewList[index].itemImage,
                              fit: BoxFit.contain),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              myNewList[index].name,
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(
                              height: 30,
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
