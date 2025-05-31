import 'package:credpal/models/product.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  ProductCard({super.key, required this.product});

  Product product;

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.white,
        child: Stack(
          children: [
            Center(child: Image.asset(product.image)),
            Positioned(top: 10, left: 10, child: product.tag),
            Positioned(
                bottom: 30,
                left: 10,
                child: SizedBox(
                    width: 150,
                    child: Text(product.name,
                        style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            overflow: TextOverflow.ellipsis)))),
            Positioned(
              bottom: 10,
              left: 10,
              child: Expanded(
                child: Row(
                  children: [
                    Text("₦ ${product.discountedPrice}",
                        style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w900,
                            color: Colors.indigo,overflow:TextOverflow.ellipsis )),
                    SizedBox(
                      width: 8,
                    ),
                    Text("₦ ${product.originalPrice}",
                        style: const TextStyle(
                          fontSize: 14,
                          decoration: TextDecoration.lineThrough,
                          decorationColor: Colors.grey,
                          color: Colors.grey,overflow:TextOverflow.ellipsis
                        ))
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
