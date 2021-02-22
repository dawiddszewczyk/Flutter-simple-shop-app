import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shop_application/Services/Global_Variable/globals.dart' as globals;
import 'package:shop_application/Services/Global_class/product.dart';
import 'package:shop_application/Services/Global_class/category.dart';
class DatabaseService{

  final CollectionReference productsCollection = Firestore.instance.collection('products');
  final Query products_with_category_Collection = Firestore.instance.collection('products').where('category', isEqualTo: '${globals.namechecked_category}');



  Stream<List<product>> get products {
    return products_with_category_Collection.snapshots()
        .map(_productListformSnapShot);
  }

  Stream<List<category>> get categories {
    return productsCollection.snapshots()
        .map(_categoryListformSnapShot);
  }
  // product list form snapshot
  List<product> _productListformSnapShot(QuerySnapshot snapshot){
    return snapshot.documents.map((doc){
      return product(
        name: doc.data['name'] ?? '',
        price: doc.data['price'] ?? '',
        desc: doc.data['desc'] ?? '',
        photo_url: doc.data['photo'] ?? '',
        transparent_photo: doc.data['transparent_photo'] ?? '',
      );
    }).toList();
  }
  List<category> _categoryListformSnapShot(QuerySnapshot snapshot){
    return snapshot.documents.map((doc){
      return category(
        name: doc.data['category'] ?? '',
      );
    }).toList();
  }
}