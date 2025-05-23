import 'package:bazario/features/common/data/product_model.dart';

class WishListModel {
  final String id;
  final ProductModel productModel;
  int quantity;
  final String? color;
  final String? size;

  WishListModel({
    required this.productModel,
    required this.id,
    required this.quantity,
    required this.color,
    required this.size,
  });

  factory WishListModel.fromJson(Map<String, dynamic> jsonData) {
    return WishListModel(
      id: jsonData['_id'].toString(),
      productModel: ProductModel.fromJson(jsonData['product']),
      quantity: jsonData['quantity'] ?? 1,
      color: jsonData['color']?.toString(),
      size: jsonData['size']?.toString(),
    );
  }
}
