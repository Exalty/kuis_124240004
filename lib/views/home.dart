import 'package:flutter/material.dart';
import '../models/car.dart';
import '../data/car_data.dart';
import '/views/detail.dart';
import 'detail.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override 
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: cars.length,
      itemBuilder: (context, index) {
        return ListTile(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CarDetailPage(car: cars[index]),
              ),
            );
          },
          title: Text(cars[index].name),
          subtitle: Text("Rp ${cars[index].price}"),
          leading: Image.network(cars[index].imageUrl, width: 50, height: 50),
          // trailing: Icon(Icons.arrow_forward_ios, color: Colors.black54),
        );
      },
    );
  }
}
