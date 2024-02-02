import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_app/pages/widgets/product.item.dart';
import 'package:http/http.dart' as http;

class ProductDetails extends StatefulWidget {
  String productId;

  ProductDetails({super.key, required this.productId});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  dynamic product;

  @override
  void initState() {
    super.initState();
    http
        .get(
            Uri.parse("http://192.168.8.104:9000/products/${widget.productId}"))
        .then((resp) {
      setState(() {
        product = json.decode(resp.body);
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
          backgroundColor: Theme.of(context).primaryColor,
          title: Text("Product Details => ${widget.productId}"),
        ),
        body: product != null
            ? ProductItem(
                product: product,
                details: true,
              )
            : Container());
  }
}
