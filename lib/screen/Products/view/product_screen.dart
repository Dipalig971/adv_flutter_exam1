import 'package:adv_flutter_exam1/screen/Products/controller/product_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Beauty Product'),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(Icons.favorite_border),
          ),
        ],
      ),
      body: Consumer<ProductsProvider>(
        builder: (context, provider, child) {
          if (provider.isLoading) {
            return const Center(child: CircularProgressIndicator());
          } else {
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 20, left: 10, right: 10),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search',
                        suffixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 30, left: 10),
                    child: Text(
                      'Best Products',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                  Column(
                    children: [
                      ...List.generate(provider.productModal.products.length, (index) {
                        var product = provider.productModal.products[index];
                        var imageUrl = product.images.isNotEmpty ? product.images[0] : '';

                        return Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.all(10),
                              height: 200,
                              width: 420,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black, width: 2),
                                image: imageUrl.isNotEmpty
                                    ? DecorationImage(
                                  image: NetworkImage(imageUrl),
                                  fit: BoxFit.contain,
                                )
                                    : null,
                              ),
                              // child: imageUrl.isEmpty
                              //     ? const Center(child: Text('No Image'))
                              //     : null,
                            ),
                            Text(provider.productModal.products[index].title,style: const TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
                            Text(provider.productModal.products[index].description,style: const TextStyle(),textAlign: TextAlign.center,)
                          ],
                        );

                      }),

                    ],
                  ),

                ],
              ),
            );
          }
        },
      ),
    );
  }
}
