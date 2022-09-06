![alt text](https://raw.githubusercontent.com/denyocrworld/read-json-to-list-view-getx/master/ss.png)

### Baca JSON file dari Fluter
```
class ProductListController extends GetxController {
  ProductListView? view;
  List products = [];

  @override
  void onInit() async {
    super.onInit();
    String jsonString = await rootBundle.loadString("assets/json/product.json");
    Map obj = jsonDecode(jsonString);
    products = obj["data"];
    update();
  }
}
```


### Contoh JSON file-nya
```
{
    "data": [
        {
            "id": 1,
            "title": "iPhone 9",
            "description": "An apple mobile which is nothing like apple",
            "price": 549,
            "discountPercentage": 12.96,
            "rating": 4.69,
            "stock": 94,
            "brand": "Apple",
            "category": "smartphones",
            "thumbnail": "https://dummyjson.com/image/i/products/1/thumbnail.jpg",
            "images": [
                "https://dummyjson.com/image/i/products/1/1.jpg",
                "https://dummyjson.com/image/i/products/1/2.jpg",
                "https://dummyjson.com/image/i/products/1/3.jpg",
                "https://dummyjson.com/image/i/products/1/4.jpg",
                "https://dummyjson.com/image/i/products/1/thumbnail.jpg"
            ]
        },
         {
            "id": 2,
            "title": "iPhone X",
            "description": "SIM-Free, Model A19211 6.5-inch Super Retina HD display with OLED technology A12 Bionic chip with ...",
            "price": 899,
            "discountPercentage": 17.94,
            "rating": 4.44,
            "stock": 34,
            "brand": "Apple",
            "category": "smartphones",
            "thumbnail": "https://dummyjson.com/image/i/products/2/thumbnail.jpg",
            "images": [
                "https://dummyjson.com/image/i/products/2/1.jpg",
                "https://dummyjson.com/image/i/products/2/2.jpg",
                "https://dummyjson.com/image/i/products/2/3.jpg",
                "https://dummyjson.com/image/i/products/2/thumbnail.jpg"
            ]
        }
    ]
}
```