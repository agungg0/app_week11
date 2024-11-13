import 'package:flutter/material.dart';

class FunFactPage extends StatelessWidget {
  final List<String> funFacts = [
    "Suka kopi, tapi gampang mules.",
    "Suka futsal, tapi ga jago-jago.",
    "Suka masak, tapi gabisa masak.",
    "Suka, tapi.",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF212529),
      appBar: AppBar(
        title: Text("Fun Facts",
        style: TextStyle(
          color: Color(0xFFF8F9FA)
        ),),
        backgroundColor: Color(0xFF343A40),
      ),
      body: Center(  // Menempatkan ListView di tengah halaman
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: ListView.builder(
            shrinkWrap: true,  // Membatasi tinggi ListView sesuai isinya
            itemCount: funFacts.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  funFacts[index],
                  textAlign: TextAlign.center,  // Menyelaraskan teks ke tengah
                  style: TextStyle(
                    color: Color(0xFFCED4DA),
                    fontSize: 16.0,
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
