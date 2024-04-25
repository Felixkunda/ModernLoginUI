import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final user = FirebaseAuth.instance.currentUser!;

  // Method to handle Nando's location selection
  void selectNandosLocation(BuildContext context, String location, String action) {
    String deliveryLink = '';
    String maintenanceLink = '';

    if (location == "Nandos East Park") {
      deliveryLink = "https://www.i-bze.com/orders/login.html/EastPark";
      maintenanceLink = "https://www.i-bze.com/maintenance/eastpark";
    } else if (location == "Nandos Makeni") {
      deliveryLink = "https://www.i-bze.com/orders/login.html/Makeni";
      maintenanceLink = "https://www.i-bze.com/maintenance/makeni";
    } else if (location == "Nandos Manda Hill") {
      deliveryLink = "https://www.i-bze.com/orders/login.html/MandaHill";
      maintenanceLink = "https://www.i-bze.com/maintenance/mandahill";
    } else if (location == "Nandos Kabulonga") {
      deliveryLink = "https://www.i-bze.com/orders/login.html/Kabulonga";
      maintenanceLink = "https://www.i-bze.com/maintenance/kabulonga";
    } else if (location == "Nandos Ibex") {
      deliveryLink = "https://www.i-bze.com/orders/login.html/Ibex";
      maintenanceLink = "https://www.i-bze.com/maintenance/ibex";
    } else if (location == "Nandos Kabwata") {
      deliveryLink = "https://www.i-bze.com/orders/login.html/Kabwata";
      maintenanceLink = "https://www.i-bze.com/maintenance/kabwata";
    }

    String link = action == "Delivery System" ? deliveryLink : maintenanceLink;

    // Navigate to the link
    // Replace the below line with your navigation logic to open the link
    print("Navigating to $action for $location: $link");
  }

  //SignOut Method
  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("All Nandos Store"),
        centerTitle: true,
        backgroundColor: Colors.orange[900],
        actions: [
          IconButton(
            onPressed: signUserOut,
            icon: Icon(Icons.logout),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Select Nandos Location",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20),
            Image.asset(
              'lib/images/logo1.png',
              width: 70,
              height: 70,
            ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  buildNandosLocationTile(context, "Nandos East Park"),
                  Divider(),
                  buildNandosLocationTile(context, "Nandos Makeni"),
                  Divider(),
                  buildNandosLocationTile(context, "Nandos Manda Hill"),
                  Divider(),
                  buildNandosLocationTile(context, "Nandos Kabulonga"),
                  Divider(),
                  buildNandosLocationTile(context, "Nandos Ibex"),
                  Divider(),
                  buildNandosLocationTile(context, "Nandos Kabwata"),
                  Divider(),
                  buildNandosLocationTile(context, "Nandos Waddington"),
                  Divider(),
                  buildNandosLocationTile(context, "Nandos Lawanika"),
                  Divider(),
                  buildNandosLocationTile(context, "Nandos Kabwe"),
                  Divider(),
                  buildNandosLocationTile(context, "Nandos Kitwe"),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.orange[900],
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "Logged in as: ${user.email}",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  Widget buildNandosLocationTile(BuildContext context, String location) {
    return ListTile(
      title: Text(
        location,
        style: TextStyle(
          color: Colors.orange[900],
          fontWeight: FontWeight.bold,
        ),
      ),
      trailing: DropdownButton<String>(
        items: <String>['Delivery System', 'Maintenance System'].map((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
        onChanged: (String? action) {
          if (action != null) {
            selectNandosLocation(context, location, action);
          }
        },
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}
