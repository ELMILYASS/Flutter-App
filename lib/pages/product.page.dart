import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_app/pages/widgets/product.item.dart';
import "package:http/http.dart" as http;

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  List<dynamic> products = [];

  @override
  void initState() {
    super.initState();
    http.get(Uri.parse("http://192.168.8.104:9000/products")).then((resp) {
      setState(() {
        products = json.decode(resp.body);
      });
    }).catchError((err) {
      print("********** Error ********");
      print(err);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Products"),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Container(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return ProductItem(
              product: products[index],
              details: false,
            );
          },
          itemCount: products.length,
        ),
      ),
    );
  }
}
