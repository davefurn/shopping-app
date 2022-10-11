import 'package:flutter/material.dart';

class Product {
  final String image, title, description, price;
  late String hash;
  final int size, id;
  final Color color;
  Product({
   required this.hash,
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.size,
    required this.color,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "T neck T-Shirts",
      price: "\$39",
      hash: "LNPZZ75B4nMw~qjY-;adVrf5-;s.",
      size: 12,
      description: dummyText,
      image:
          "https://images.unsplash.com/photo-1620799139652-715e4d5b232d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8dCUyMG5lY2slMjB0JTIwc2hpcnRzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=700&q=60",
      color: const Color(0xFF3D82AE)),
  Product(
      id: 2,
      hash: "LHI\$4y-;~qE1_3IUozofDhkC9FnO",
      title: "Agbada",
      price: "\$40",
      size: 8,
      description: dummyText,
      image:
          "https://images.unsplash.com/photo-1648329008114-bce0ec0b5950?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8YWdiYWRhfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=700&q=60",
      color: const Color(0xFFD3A984)),
  Product(
      id: 3,
      hash: "LALD#_^-~U}@.n4TKP?b4T=_KjD%",
      title: "Tear-jeans",
      price: "\$45",
      size: 10,
      description: dummyText,
      image:
          "https://images.unsplash.com/photo-1527628217451-b2414a1ee733?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8dGVhciUyMGplYW5zfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=700&q=60",
      color: const Color(0xFF989493)),
  Product(
      id: 4,
      hash: "L35h76t756-p~CofEL%2M{WVt8ay",
      title: "Black Suites",
      price: "\$40",
      size: 11,
      description: dummyText,
      image:
          "https://images.unsplash.com/photo-1519085360753-af0119f7cbe7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGJsYWNrJTIwc3VpdGVzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=700&q=60",
      color: const Color(0xFFE6B398)),
  Product(
      id: 5,
      hash: "LMJ*hv_NW9w@xUxZxvX99FIURjt6",
      title: "Office Code",
      price: "\$50",
      size: 12,
      description: dummyText,
      image:
          "https://images.unsplash.com/photo-1610765987208-06bbd5d2a1a8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Y2FyZGlnYW5zfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=700&q=60",
      color: const Color(0xFFFB7883)),
  Product(
    id: 6,
    title: "V back cardigans",
    hash: "LDAv%*~BDiD*BCEgWB-pivMxS2%g",
    price: "\$70",
    size: 12,
    description: dummyText,
    image:
        "https://images.unsplash.com/photo-1467664631004-58beab1ece0d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8OHw0Nzk0NDF8fGVufDB8fHx8&auto=format&fit=crop&w=700&q=60",
    color: const Color(0xFFAEAEAE),
  ),
];
String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
