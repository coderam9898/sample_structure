import 'package:cloud_firestore/cloud_firestore.dart';

class Message {
  final String Product_name;
  final String Product_catogory;
  final String Product_price;
  final String Product_stock;
  final String Product_Description;
  final String Product_imagelink;
  final DateTime date;

  DocumentReference? reference;
  Message(
      {required this.Product_name,
      required this.Product_catogory,
      required this.Product_price,
      required this.Product_stock,
      required this.Product_Description,
      required this.Product_imagelink,
      required this.date,
      this.reference});
  // TODO: Add JSON converters
  factory Message.fromJson(Map<dynamic, dynamic> json) => Message(
        Product_name: json['text'] as String,
        Product_catogory: json['text'] as String,
        Product_price: json['text'] as String,
        Product_stock: json['text'] as String,
        Product_Description: json['text'] as String,
        Product_imagelink: json['text'] as String,
        date: DateTime.parse(json['date'] as String),
      );
  Map<String, dynamic> toJson() => <String, dynamic>{
        'date': date.toString(),
        'Product_name': Product_name,
        'Product_catogory': Product_catogory,
        'Product_price': Product_price,
        'Product_stock': Product_stock,
        'Product_description': Product_Description,
        'Product_imagelink': Product_imagelink,
      };
// TODO: Add fromSnapshot
  factory Message.fromSnapshot(DocumentSnapshot snapshot) {
    final message = Message.fromJson(snapshot.data() as Map<String, dynamic>);
    message.reference = snapshot.reference;
    return message;
  }
}
