import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [widget_baru(
            text: "Random 1",
            imgCode: 1,
          ), widget_baru(
            text: "Random 2",
            imgCode: 2,
          ), widget_baru(
            text: "Random 3",
            imgCode: 3,
          )],
        ),
      ),
    );
  }
}

class widget_baru extends StatelessWidget {
  final imgCode;
  final text; 
  const widget_baru({
    super.key, this.text="Red Banteng", this.imgCode= "1"
  });

  void handleButton(){
    print("Klik saya");
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.green,
        border: Border.all(),
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        )
      ),
    
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          children: [
            Image(image: NetworkImage("https://picsum.photos/200?random=$imgCode"), 
            width: 200,
            height: 100,
            fit: BoxFit.cover),
            const SizedBox(
              width: 10,
            ),
            Icon(Icons.attach_file),
            Text(
              text, 
              style: const TextStyle(color: Colors.yellow, fontWeight: FontWeight.bold),   
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: handleButton, child: const Text("Klik Saya")),
            )
          ],
        ),
      ),
    );
  }
}