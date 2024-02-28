import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  String _selectedInterval = "Today"; // Initial selection is "Today"

  @override
  Widget build(BuildContext context) {
    Widget tranItems(image, String text1, String text2) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Row(children: [
            Image.asset(
              image,
              height: 60,
              width: 60,
            ),
            SizedBox(
              width: 13,
            ),
            Column(
              children: [
                Text(
                  text1,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
                ),
                Text(text2)
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 55),
              child: Column(
                children: [
                  Text(
                    "-Rs.50",
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 19,
                        fontWeight: FontWeight.bold),
                  ),
                  Text("03:30 PM")
                ],
              ),
            ),
          ]),
        ),
      );
    }

    Widget samebox(IconData icon, Color color, String text1, String? text2) {
      return Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          height: 80,
          width: double.infinity,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(33.0),
          ),
          child: Center(
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 62),
                  height: 52,
                  width: 75,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    children: [
                      Icon(
                        icon,
                        color: color,
                      ),
                      Icon(Icons.camera_front, color: color),
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      text1,
                      style: const TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    Text(
                      text2!,
                      style: const TextStyle(color: Colors.white, fontSize: 22),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      );
    }

    var dropdownitems = [
      "January",
      "February",
      "March",
      "April",
      "May",
      "June",
      "July",
      "September",
      "October",
      "November",
      "December"
    ];
    String dropdownvalue = "October";
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [Color(0xffBCFA8C), Color(0xffF8EDD8)],
            ),
          ),
        ),
        leading: CircleAvatar(
          radius: 10.0,
          backgroundImage: const AssetImage("assets/images/user.png"),
        ),
        title: Center(
          child: DropdownButton(
            icon: const Icon(Icons.keyboard_arrow_down),
            value: dropdownvalue,
            items: dropdownitems.map((String dropdownItem) {
              return DropdownMenuItem(
                value: dropdownItem,
                child: Text(dropdownItem),
              );
            }).toList(),
            onChanged: (String? newValue) {
              setState(() {
                dropdownvalue = newValue!;
              });
            },
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications))
        ],
      ),
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                _selectedInterval = "Today";
              });
            },
            child: Container(
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Color.fromARGB(255, 204, 240, 176),
                    Color.fromARGB(255, 237, 235, 234)
                  ],
                ),
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 13,
                  ),
                  samebox(
                      Icons.arrow_downward, Colors.red, "Income", "Rs.5000"),
                  samebox(
                      Icons.arrow_upward, Colors.green, "Expenses", "Rs.1200"),
                  samebox(
                      Icons.arrow_upward, Colors.blue, "Predict expenses", ""),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedInterval = "Today";
                  });
                },
                child: Container(
                  height: 31,
                  width: 51,
                  decoration: BoxDecoration(
                      color: _selectedInterval == "Today"
                          ? Color.fromARGB(255, 227, 211, 165)
                          : Colors.white,
                      borderRadius: BorderRadius.circular(12)),
                  child: Center(
                    child: Text(
                      "Today",
                      style: TextStyle(
                        color: _selectedInterval == "Today"
                            ? Colors.orange
                            : Color.fromARGB(179, 137, 131, 131),
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedInterval = "Week";
                  });
                },
                child: Container(
                  height: 31,
                  width: 51,
                  decoration: BoxDecoration(
                      color: _selectedInterval == "Week"
                          ? Color.fromARGB(255, 227, 211, 165)
                          : Colors.white,
                      borderRadius: BorderRadius.circular(12)),
                  child: Center(
                    child: Center(
                      child: Text(
                        "Week",
                        style: TextStyle(
                          color: _selectedInterval == "Week"
                              ? Colors.orange
                              : Color.fromARGB(179, 137, 131, 131),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedInterval = "Month";
                  });
                },
                child: Container(
                  height: 31,
                  width: 51,
                  decoration: BoxDecoration(
                      color: _selectedInterval == "Month"
                          ? Color.fromARGB(255, 227, 211, 165)
                          : Colors.white,
                      borderRadius: BorderRadius.circular(12)),
                  child: Center(
                    child: Text(
                      "Month",
                      style: TextStyle(
                        color: _selectedInterval == "Month"
                            ? Colors.orange
                            : Color.fromARGB(179, 137, 131, 131),
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedInterval = "Year";
                  });
                },
                child: Container(
                  height: 31,
                  width: 51,
                  decoration: BoxDecoration(
                      color: _selectedInterval == "Year"
                          ? Color.fromARGB(255, 227, 211, 165)
                          : Colors.white,
                      borderRadius: BorderRadius.circular(12)),
                  child: Center(
                    child: Text(
                      "Year",
                      style: TextStyle(
                        color: _selectedInterval == "Year"
                            ? Colors.orange
                            : Color.fromARGB(179, 137, 131, 131),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 11),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Recent Transactions",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              ElevatedButton(onPressed: () {}, child: Text("See All"))
            ],
          ),
          tranItems(
              "assets/images/shopping.jpg", "Shopping", "Buy some Grocery"),
          tranItems("assets/images/subscription.jpg", "Subscription",
              "Disney+Annual"),
          tranItems("assets/images/food.png", "Food", "Buy a ramen"),
          SizedBox(height: 66),
          NavigationBar(height: 81, elevation: 0.2, destinations: const [
            NavigationDestination(
                icon: Icon(
                  Icons.home,
                  color: Color.fromARGB(255, 120, 116, 116),
                ),
                label: "Home"),
            NavigationDestination(
                icon: Icon(
                  Iconsax.transaction_minus,
                  color: Color.fromARGB(255, 120, 116, 116),
                ),
                label: "Transaction"),
            NavigationDestination(
                icon: Icon(
                  Icons.pie_chart,
                  color: Color.fromARGB(255, 120, 116, 116),
                ),
                label: "Budget"),
            NavigationDestination(
                icon: Icon(
                  Iconsax.user,
                  color: Color.fromARGB(255, 120, 116, 116),
                ),
                label: "Profile")
          ])
        ],
      ),
    );
  }
}
