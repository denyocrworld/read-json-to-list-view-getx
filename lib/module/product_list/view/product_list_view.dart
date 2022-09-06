import 'package:flutter/material.dart';
import '../controller/product_list_controller.dart';

import 'package:get/get.dart';

class ProductListView extends StatelessWidget {
  const ProductListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProductListController>(
      init: ProductListController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("ProductList"),
          ),
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                //body
                Expanded(
                  child: ListView.builder(
                    itemCount: controller.products.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      var item = controller.products[index];
                      return Card(
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.grey[200],
                            backgroundImage: NetworkImage(
                              item["thumbnail"],
                            ),
                          ),
                          title: Text(item["title"]),
                          subtitle: Text("\$${item["price"]}"),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
