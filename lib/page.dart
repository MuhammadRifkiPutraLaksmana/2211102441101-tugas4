import 'package:flutter/material.dart';
import 'package:tugas_3/next_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  void navigateToNextPage(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => NextPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: [
            Stack(
              children: [
                AspectRatio(
                  aspectRatio: 16 / 9, // Contoh rasio aspek 16:9
                  child: Image.network(
                    "https://picsum.photos/seed/picsum/200/300",
                    fit: BoxFit.cover, // Menambahkan fit: BoxFit.cover untuk menghindari zoom
                  ),
                ),
                Positioned.fill(
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(8),
                      color: Colors.black.withOpacity(0.5),
                      child: Text(
                        "Welcome",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            WidgetBaru(
              text: "Gambar 1",
              imgCode: 1,
              onPressed: () => navigateToNextPage(context),
            ),
            SizedBox(height: 16),
            WidgetBaru(
              text: "Gambar 2",
              imgCode: 2,
              onPressed: () => navigateToNextPage(context),
            ),
            SizedBox(height: 16),
            WidgetBaru(
              text: "Gambar 3",
              imgCode: 3,
              onPressed: () => navigateToNextPage(context),
            ),
          ],
        ),
      ),
    );
  }
}

class WidgetBaru extends StatelessWidget {
  final int imgCode;
  final String text;
  final VoidCallback onPressed;

  const WidgetBaru({
    Key? key,
    required this.text,
    required this.imgCode,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Image.network(
              "https://picsum.photos/200?random=$imgCode",
              width: 100,
              height: 100,
              fit: BoxFit.cover, // Menambahkan fit: BoxFit.cover untuk menghindari zoom
            ),
            SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: 8),
                ElevatedButton(
                  onPressed: onPressed,
                  child: const Text("Klik Saya"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
