import 'package:credpal/home/widget/ProductCard.dart';
import 'package:credpal/utils/constants/asset_paths.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/product.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF1F3FE),
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Color(0xffD0DAFF),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Pay later",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w900),
            ),
            Row(
              children: [
                Text(
                  "everywhere",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w900),
                ),
                SizedBox(
                  width: 8,
                ),
                Container(
                  height: 23,
                  width: 23,
                  decoration: BoxDecoration(
                      color: Colors.white60, shape: BoxShape.circle),
                  child: Center(
                      child: Text("!",
                          style: TextStyle(
                              color: Color(0xff274FED).withAlpha(127),
                              fontSize: 16,
                              fontWeight: FontWeight.w800))),
                )
              ],
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 16.0, right: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text("Shopping limit: ₦0"),
                FilledButton(
                    onPressed: () {},
                    style: FilledButton.styleFrom(
                      backgroundColor: Color(0xff274FED),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                    ),
                    child: Text(
                      "Activate Credit",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ))
              ],
            ),
          )
        ],
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 80,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 50,
                        child: SearchBar(
                          backgroundColor:
                              WidgetStateProperty.all(Color(0xffF1F3FE)),
                          hintText: "Search for products or stores",
                          hintStyle: WidgetStateProperty.all(
                              TextStyle(color: Color(0xff9494B8), fontSize: 14)),
                          elevation: WidgetStateProperty.all(0),
                          leading: Icon(
                            CupertinoIcons.search,
                            color: Color(0xff9494B8),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color(0xffF1F3FE),
                      ),
                      child: Center(
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              CupertinoIcons.qrcode_viewfinder,
                              size: 30,
                            )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0),
              child: SizedBox(
                height: 180,width: double.infinity,
                child: ListView.builder(
                  itemCount: Product.demoProducts1.length,
                  itemBuilder: (context, index) {
                    return ProductCard(
                      product: Product.demoProducts1[index],
                    );
                  },
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0),
              child: SizedBox(
                height: 180,width: double.infinity,
                child: ListView.builder(
                  itemCount: Product.demoProducts2.length,
                  itemBuilder: (context, index) {
                    return ProductCard(
                      product: Product.demoProducts2[index],
                    );
                  },
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 400,
              width: double.infinity,
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Featured Merchants",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Text(
                          "View all",
                          style: TextStyle(fontSize: 16, color: Colors.indigo),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Expanded(
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                          crossAxisSpacing: 8,
                          mainAxisSpacing: 8,
                          childAspectRatio: 1,
                        ),
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          final brands = [
                            justRite,
                            orile,
                            slot,
                            pointTek,
                            ogaBasseyBrand,
                            casper,
                            dreamWorks,
                            hubMart,
                            justUsed,
                            justFones,
                          ];
                          return BrandLogo(
                              image: brands[index % brands.length]);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
