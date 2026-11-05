import 'package:flutter/material.dart';
import 'package:beginner/Custom_Widgets/top_record_card.dart';

class Dashboard extends StatelessWidget {
  Dashboard({super.key});

  // Top Cards Data

  final List<String> accounts = [
    "Bank Maser",
    "Bank Elahly",
    "Bank QNB",
    "Bank CIB",
  ];

  final List<double> balances = [4000.00, 3500.00, 1200.00, 800.00];

  final List<Color> accountColors = [
    Colors.purple,
    Colors.red,
    Colors.teal,
    Colors.blue,
  ];

  // Bottom Cards Data

  final List<String> titles = [
    "Shopping",
    "Salary",
    "Restaurant",
    "Club",
    "Travel",
    "Home",
    "Car",
  ];

  final List<String> subtitles = [
    "Supermarket",
    "Monthly income",
    "Dinner with friends",
    "Night out",
    "Flight tickets",
    "Home renovation",
    "Car maintenance",
  ];

  final List<String> amounts = [
    "\$400.00",
    "\$3500.00",
    "\$120.00",
    "\$80.00",
    "\$500.00",
    "\$2000.00",
    "\$300.00",
  ];

  final List<IconData> icons = [
    Icons.shopping_cart,
    Icons.work,
    Icons.restaurant,
    Icons.local_bar,
    Icons.flight,
    Icons.home,
    Icons.directions_car,
  ];

  final List<Color> recordColors = [
    Colors.red,
    Colors.blue,
    Colors.orange,
    Colors.purple,
    Colors.teal,
    Colors.brown,
    Colors.green,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text("Dashboard"),
        leading: Icon(Icons.menu),
        actions: [Icon(Icons.notifications_none), SizedBox(width: 10)],
      ),

      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              // Top Section

              Text(
                "List of Account",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),

              SizedBox(height: 10),

              SizedBox(
                height: 115,

                child: ListView.builder(
                  scrollDirection: Axis.horizontal,

                  itemCount: accounts.length,

                  itemBuilder: (context, index) {
                    return TopRecordCard(
                      account: accounts[index],
                      balance: balances[index],
                      color: accountColors[index],
                    );
                  },
                ),
              ),

              SizedBox(height: 20),

              // Bottom Section
              Text(
                "Last Records Overview",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),

              SizedBox(height: 15),

              Expanded(
                child: ListView.builder(
                  itemCount: titles.length,

                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(bottom: 10),

                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10),
                      ),

                      child: ListTile(
                        leading: Icon(icons[index], color: recordColors[index]),

                        title: Text(
                          titles[index],
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        subtitle: Text(
                          subtitles[index],
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        trailing: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,

                          children: [
                            Text(
                              "Total",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            Text(
                              amounts[index],
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: recordColors[index],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
