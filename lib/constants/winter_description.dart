import 'package:flutter/material.dart';

class ProductWinter {
  final String image, title, circleAvatar, price, description;
  late String hash;
  final int size, id;
  final Color color;
  ProductWinter({
    required this.description,
    required this.hash,
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.circleAvatar,
    required this.size,
    required this.color,
  });
}

List<ProductWinter> productsWinter = [
  ProductWinter(
      id: 1,
      title: "Jacket",
      price: "\$39",
      hash: "LUKx9y00-oWr~q%NM|V@x]ogM{oM",
      size: 12,
      circleAvatar:
          "https://images.unsplash.com/photo-1551488831-00ddcb6c6bd3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8amFja2V0c3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=700&q=60",
      description: "Louis Vultton",
      image:
          "https://images.unsplash.com/photo-1605908502724-9093a79a1b39?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8amFja2V0c3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
      color: const Color(0xFF3D82AE)),
  ProductWinter(
      description: "Sooo colddd!!!",
      id: 2,
      hash: "LJLqkS_N_3-p00xvD%%M_3D%WBRj",
      title: "Coats",
      price: "\$40",
      size: 8,
      circleAvatar:
          "https://images.unsplash.com/photo-1614532188535-2fa164c9ea24?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fGNvYXRzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
      image:
          "https://images.unsplash.com/photo-1530204300372-1eddee84dfb9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
      color: const Color(0xFFD3A984)),
  ProductWinter(
      description: "Get me that necklace!!!, but but but It's for sallleeeeee; i said gimme that necklace",
      id: 3,
      hash: "L8Nm.-9E9axt00.8kZ%KNN_4MyRj",
      title: "Accessories",
      price: "\$45",
      size: 10,
      circleAvatar:
          "https://images.unsplash.com/photo-1606760227091-3dd870d97f1d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YWNjZXNzb3JpZXN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
      image:
          "https://images.unsplash.com/photo-1571974096035-bc3568627608?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
      color: const Color(0xFF989493)),
  ProductWinter(
      description: "Blue jeans, Love it!!!!!!!",
      id: 4,
      hash: "LDFP89D\$00t7TKM{RPxu~qs:IqRi",
      title: "Denim",
      price: "\$40",
      size: 11,
      circleAvatar:
          "https://images.unsplash.com/photo-1604176354204-9268737828e4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8ZGVuaW18ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
      image:
          "https://images.unsplash.com/photo-1542574621-e088a4464f7e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fGRlbmltfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
      color: const Color(0xFFE6B398)),
  ProductWinter(
      description: "Kim kardash....duh!!!",
      id: 5,
      hash: "LfNKFyof?bj[~qj[IUay%MWBM{of",
      title: "HandBag",
      price: "\$50",
      size: 12,
      circleAvatar:
          "https://images.unsplash.com/photo-1566150902887-9679ecc155ba?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8aGFuZGJhZ3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
      image:
          "https://images.unsplash.com/photo-1614179689702-355944cd0918?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80",
      color: const Color(0xFFFB7883)),
];
String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";

 