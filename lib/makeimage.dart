import 'package:flutter/material.dart';
class makeimage extends StatelessWidget {
  final String image;
  final String country;

  const makeimage({super.key, required this.image, required this.country});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8,),
      child: Container(
        width: 150,
        height: 150,
        child: Stack(
          children: [
            
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(image,
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,),
            ),
            Positioned(
              bottom: 7,
              left: 10,
              child: Text(country,
              style: TextStyle(
                fontSize: 20,fontWeight: FontWeight.w700,
                color: Colors.white
              ),))
           
          ],
        ),
      ),
    );
  }
}