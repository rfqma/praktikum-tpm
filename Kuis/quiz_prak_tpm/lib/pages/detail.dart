import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:quiz_prak_tpm/models/coffee_menu.dart';

class Detail extends StatelessWidget {
  const Detail({super.key, required this.coffeeMenu});
  final CoffeeMenu coffeeMenu;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(coffeeMenu.name),
        backgroundColor: Colors.green.shade700,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            CircleAvatar(
              radius: 150,
              backgroundImage: NetworkImage(
                coffeeMenu.imageUrls[1],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              coffeeMenu.name,
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              coffeeMenu.price,
              style: TextStyle(fontSize: 17),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              coffeeMenu.description,
              style: TextStyle(fontStyle: FontStyle.italic),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Ingredients",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: coffeeMenu.ingredients.length,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Text(coffeeMenu.ingredients[index]),
                    ],
                  );
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                _launchURL(coffeeMenu.linkStore.toString());
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              child: Text("Order"),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text(
                      "Nutrition",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(coffeeMenu.nutrition),
                  ],
                ),
                SizedBox(
                  width: 50,
                ),
                Column(
                  children: [
                    Text(
                      "Review Avg.",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(coffeeMenu.reviewAverage),
                  ],
                ),
                SizedBox(
                  width: 50,
                ),
                Column(
                  children: [
                    Text(
                      "Review Count",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(coffeeMenu.reviewCount),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}

Future<void> _launchURL(String url) async {
  final Uri finalUrl = Uri.parse(url);
  if (!await launchUrl(finalUrl)) {
    throw Exception('Could not launch $finalUrl');
  }
}
