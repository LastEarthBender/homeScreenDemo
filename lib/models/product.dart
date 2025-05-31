import 'package:flutter/material.dart';

import '../utils/constants/asset_paths.dart';

class Product {
  final String name;
  final String image;
  final String discountedPrice;
  final String originalPrice;
  final Widget tag;

  Product(this.name, this.originalPrice, this.image, this.discountedPrice,
      this.tag);

  static List<Product> demoProducts1 = [
    Product("Nokia G20", "80,000", nokiaPhone, "39,780",
        Tag(tagWidget: TagNokiaPhoneWidget())),
    Product("iPhone XS Max 4GB RAM", "315,000", iPhoneXSMAX, "295,000",
        Tag(tagWidget: TagXSMaxWidget())),
    Product("Nokia G20", "80,000", nokiaPhone, "39,720",
        Tag(tagWidget: TagNokiaPhoneWidget())),
    Product("iPhone XS Max 4GB RAM", "315,000", iPhoneXSMAX, "295,000",
        Tag(tagWidget: TagXSMaxWidget())),
  ];

  static List<Product> demoProducts2 = [
    Product("Anker Soundcore product","80,000" , speaker, "39,720", Tag(tagWidget:TagSpeakerWidget())),
    Product("iPhone 12 Pro", "515,000", iPhone12, "490,500",Tag(tagWidget: TagIPhone12Widget())),
    Product("Anker Soundcore product","80,000" , speaker, "39,720", Tag(tagWidget:TagSpeakerWidget())),
    Product("iPhone 12 Pro", "515,000", iPhone12, "490,500",Tag(tagWidget: TagIPhone12Widget())),

   ];
}

class Tag extends StatelessWidget {
  final Widget tagWidget;

  const Tag({super.key, required this.tagWidget,});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 5),
              blurRadius: 12,
              color: Colors.black.withAlpha(50),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: tagWidget,
        ));
  }
}

class TagNokiaPhoneWidget extends StatelessWidget {
  const TagNokiaPhoneWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text("Pay", style: TextStyle(color: Colors.grey, fontSize: 12,
          )),
          Text("40%",
              style: TextStyle(
                  color: Colors.indigo,
                  fontSize: 14,
                  fontWeight: FontWeight.w900)),
        ],
      ),
    );
  }
}

class TagXSMaxWidget extends StatelessWidget {
  const TagXSMaxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Image.asset(ogaBassey),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "oga",
                style: TextStyle(color: Colors.black),
              ),
              TextSpan(
                text: "bassey",
                style: TextStyle(color: Colors.red),
              ),
            ],
            style: TextStyle(fontSize: 8),
          ),
        ),
      ],
    ));
  }
}

class TagSpeakerWidget extends StatelessWidget {
  const TagSpeakerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 30,
        child: Row(
          children: [
            Image(image: AssetImage(okayPhones,),fit: BoxFit.fill,filterQuality: FilterQuality.high,),
            Text("fones",style: TextStyle(color: Colors.grey,fontSize: 10),)
          ],
        ),
      ),
    );
  }
}

class TagIPhone12Widget extends StatelessWidget {
  const TagIPhone12Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 30,
        child: Row(
          children: [
            Text("iMate",style:TextStyle(color: Colors.black,fontSize: 6),),
            Icon(Icons.apple_rounded,color: Colors.black,size: 12,),
            Text("Stores",style: TextStyle(color: Colors.black,fontSize: 6),)
          ],
        ),
      ),
    );
  }
}

class BrandLogo extends StatelessWidget {
  const BrandLogo({super.key,required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Image.asset(image,height: 60,width: 60,fit: BoxFit.contain,),
    );
  }
}
