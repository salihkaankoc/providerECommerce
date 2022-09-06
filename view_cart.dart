import 'package:denemeproje/models/cart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:provider/provider.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            right: 20.0,
            left: 20.0,
            top: 50,
          ),
          child: Provider.of<CartModel>(context).items.isEmpty
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Sepetiniz Boş',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Ürün eklemeye başlayın!',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w300),
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.add_shopping_cart,
                            color: Colors.blue,
                            size: 20,
                          ),
                        ),
                      ],
                    )
                  ],
                )
              : SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Color(0xFF3B7197),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Sepetiniz',
                        style: GoogleFonts.lato(
                          textStyle: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.w600),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SingleChildScrollView(
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: (MediaQuery.of(context).size.height),
                              child: Column(
                                children: [
                                  ListView.builder(
                                    shrinkWrap: true,
                                    physics: NeverScrollableScrollPhysics(),
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return Column(
                                        children: [
                                          Container(
                                            height: 140,
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            child: Consumer<CartModel>(
                                              builder: (context, cart, child) =>
                                                  GestureDetector(
                                                onLongPress: () {
                                                  showDialog(
                                                      context: context,
                                                      builder: (BuildContext
                                                          contetx) {
                                                        return AlertDialog(
                                                          content: Text(
                                                            'Sepetten kaldırmak istediğinize emin misiniz?',
                                                            style: TextStyle(
                                                              fontSize: 18,
                                                            ),
                                                          ),
                                                          actions: [
                                                            Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                ElevatedButton(
                                                                  onPressed:
                                                                      () {
                                                                    Provider.of<CartModel>(
                                                                            context,
                                                                            listen:
                                                                                false)
                                                                        .removeItem(
                                                                            cart.items[index]);
                                                                    Navigator.pop(
                                                                        context);
                                                                  },
                                                                  child: Text(
                                                                      'Evet'),
                                                                  style: ElevatedButton
                                                                      .styleFrom(
                                                                    primary: Colors
                                                                        .green,
                                                                  ),
                                                                ),
                                                                SizedBox(
                                                                  width: 20,
                                                                ),
                                                                ElevatedButton(
                                                                  onPressed:
                                                                      () {
                                                                    Navigator.pop(
                                                                        context);
                                                                  },
                                                                  child: Text(
                                                                      'Geri'),
                                                                  style: ElevatedButton
                                                                      .styleFrom(
                                                                    primary:
                                                                        Colors
                                                                            .red,
                                                                  ),
                                                                )
                                                              ],
                                                            ),
                                                          ],
                                                        );
                                                      });
                                                },
                                                child: Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      2,
                                                  height: 400,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15),
                                                  ),
                                                  child: Column(
                                                    children: [
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceEvenly,
                                                        children: <Widget>[
                                                          SizedBox(
                                                            width: 4,
                                                          ),
                                                          Container(
                                                            alignment: Alignment
                                                                .center,
                                                            width: 90,
                                                            height: 130,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Colors
                                                                  .white
                                                                  .withOpacity(
                                                                      0.11),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10),
                                                              image: DecorationImage(
                                                                  image: cart
                                                                      .items[
                                                                          index]
                                                                      .itemImage,
                                                                  fit: BoxFit
                                                                      .contain),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            width: 3,
                                                          ),
                                                          Column(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Text(
                                                                cart
                                                                    .items[
                                                                        index]
                                                                    .name,
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style:
                                                                    GoogleFonts
                                                                        .lato(),
                                                              ),
                                                              Row(
                                                                children: [
                                                                  IconButton(
                                                                    icon: Icon(Icons
                                                                        .remove),
                                                                    onPressed:
                                                                        () {
                                                                      if (cart.items[index]
                                                                              .quantity ==
                                                                          1) {
                                                                        Provider.of<CartModel>(context,
                                                                                listen: false)
                                                                            .removeItem(cart.items[index]);
                                                                      } else {
                                                                        setState(
                                                                            () {
                                                                          cart.items[index]
                                                                              .quantity--;
                                                                        });
                                                                      }
                                                                    },
                                                                  ),
                                                                  Text(cart
                                                                      .items[
                                                                          index]
                                                                      .quantity
                                                                      .toString()),
                                                                  IconButton(
                                                                    icon: Icon(
                                                                        Icons
                                                                            .add),
                                                                    onPressed:
                                                                        () {
                                                                      setState(
                                                                          () {
                                                                        cart.items[index]
                                                                            .quantity++;
                                                                      });
                                                                    },
                                                                  ),
                                                                ],
                                                              ),
                                                              Text(
                                                                '${cart.items[index].price * cart.items[index].quantity}₺',
                                                                style:
                                                                    TextStyle(
                                                                  fontSize: 18,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          IconButton(
                                                            icon: Icon(
                                                              Icons.delete,
                                                              color: Colors.red,
                                                            ),
                                                            onPressed: () {
                                                              showDialog(
                                                                  context:
                                                                      context,
                                                                  builder:
                                                                      (BuildContext
                                                                          contetx) {
                                                                    return AlertDialog(
                                                                      content:
                                                                          Text(
                                                                        'Ürünü kaldırmak istediginize emin misiniz?',
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style: GoogleFonts
                                                                            .lato(
                                                                          textStyle:
                                                                              TextStyle(
                                                                            fontSize:
                                                                                18,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      actions: [
                                                                        Row(
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
                                                                          children: [
                                                                            ElevatedButton(
                                                                              onPressed: () {
                                                                                Provider.of<CartModel>(context, listen: false).removeItem(cart.items[index]);
                                                                                Navigator.pop(context);
                                                                              },
                                                                              child: Text('Evet'),
                                                                              style: ElevatedButton.styleFrom(
                                                                                primary: Colors.green,
                                                                              ),
                                                                            ),
                                                                            SizedBox(
                                                                              width: 20,
                                                                            ),
                                                                            ElevatedButton(
                                                                              onPressed: () {
                                                                                Navigator.pop(context);
                                                                              },
                                                                              child: Text('Geri'),
                                                                              style: ElevatedButton.styleFrom(
                                                                                primary: Colors.red,
                                                                              ),
                                                                            )
                                                                          ],
                                                                        ),
                                                                      ],
                                                                    );
                                                                  });
                                                            },
                                                          ),
                                                          SizedBox(
                                                            width: 20,
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        height: 10,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                        ],
                                      );
                                    },
                                    itemCount: Provider.of<CartModel>(context)
                                        .items
                                        .length,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Row(
                                        children: [
                                          Text('Toplam Tutar:  ',
                                              style: GoogleFonts.lato(
                                                textStyle: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 18,
                                                ),
                                              )),
                                          Text(
                                            '${Provider.of<CartModel>(context, listen: false).totalPrice} ₺',
                                            style: TextStyle(
                                              fontSize: 18,
                                            ),
                                          ),
                                        ],
                                      ),
                                      IconButton(
                                        icon: Icon(
                                          Icons.delete,
                                          color: Colors.red,
                                        ),
                                        onPressed: () {
                                          showDialog(
                                              context: context,
                                              builder: (BuildContext contetx) {
                                                return AlertDialog(
                                                  content: Text(
                                                    'Sepeti temizlemek istediginize emin misiniz?',
                                                    textAlign: TextAlign.center,
                                                    style: GoogleFonts.lato(
                                                      textStyle: TextStyle(
                                                        fontSize: 18,
                                                      ),
                                                    ),
                                                  ),
                                                  actions: [
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        ElevatedButton(
                                                          onPressed: () {
                                                            Provider.of<CartModel>(
                                                                    context,
                                                                    listen:
                                                                        false)
                                                                .clearItem();
                                                          },
                                                          child: Text('Evet'),
                                                          style: ElevatedButton
                                                              .styleFrom(
                                                            primary:
                                                                Colors.green,
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width: 20,
                                                        ),
                                                        ElevatedButton(
                                                          onPressed: () {
                                                            Navigator.pop(
                                                                context);
                                                          },
                                                          child: Text('Geri'),
                                                          style: ElevatedButton
                                                              .styleFrom(
                                                            primary: Colors.red,
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ],
                                                );
                                              });
                                        },
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Center(
                                    child: SizedBox(
                                      width: MediaQuery.of(context).size.width /
                                          1.5,
                                      height: 50,
                                      child: ElevatedButton(
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all<
                                                    Color>(Color(0xFF3B7197)),
                                            shape: MaterialStateProperty.all<
                                                RoundedRectangleBorder>(
                                              RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                  side: BorderSide(
                                                      color:
                                                          Color(0xFF3B7197))),
                                            )),
                                        onPressed: () {},
                                        child: Text(
                                          'Ödeme Yap',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
        ),
      ),
    );
  }
}
