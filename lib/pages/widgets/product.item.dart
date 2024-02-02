import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final dynamic product;
  final bool? details;

  const ProductItem({super.key, required this.product, this.details});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 200,
                    width: 150,
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("${product['name']}"),
                            Text("${product['price']} MAD"),
                            if (product["promotion"] == true)
                              const Icon(
                                Icons.heart_broken,
                                color: Colors.red,
                              ),
                            Wrap(
                              direction: Axis.horizontal,
                              children: List.generate(
                                  product["stars"],
                                  (index) => const Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                      )),
                            )
                            /*     Row(
                                    children: [
                                      for (int i = 0;
                                      i < products[index]['stars'];
                                      i++)
                                        const Icon(
                                          Icons.star,
                                          color: Colors.limeAccent,
                                        )
                                    ],
                                  )*/
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      if (details == false) {
                        Navigator.pushNamed(context, "/productDetails",
                                arguments: product["id"])
                            /* Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    ProductDetails(productId: product["id"])))*/
                            ;
                      }
                      ;
                    },
                    child: Image(
                        width: 160, image: AssetImage("${product["image"]}")),
                  )
                ],
              ),
            ),
            if (details == true)
              Card(
                child: Container(
                    padding: const EdgeInsets.all(20),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          const Text(
                            "Description",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                          Text("${product["description"]}"),
                        ],
                      ),
                    )),
              ),
          ],
        ),
      ),
    );
  }
}
