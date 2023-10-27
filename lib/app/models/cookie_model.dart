// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:money_formatter/money_formatter.dart';

class CookieModel {
  final String name;
  final String price;
  final String image;

  CookieModel({
    required this.name,
    required this.price,
    required this.image,
  });

  CookieModel copyWith({
    String? name,
    String? price,
    String? image,
  }) {
    return CookieModel(
      name: name ?? this.name,
      price: price ?? this.price,
      image: image ?? this.image,
    );
  }
}

String p1 = MoneyFormatter(amount: 23.9012).output.symbolOnLeft;
String p2 = MoneyFormatter(amount: 17.3412).output.symbolOnLeft;

final cookies = [
  CookieModel(
    name: "Chocholate chips",
    price: p1,
    image: 'assets/images/cookie-001.png',
  ),
  CookieModel(
    name: "Oatmeal with raisins",
    price: p2,
    image: 'assets/images/cookie-002.png',
  )
];
