import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  late Map<String, bool> notificationStatus;

  @override
  void initState() {
    super.initState();

    notificationStatus = {
      "Shopping budget has exceed the ...": false,
      "Utilities budget has exceeds tha...": false,
    };
  }

  void markAllNotifications(bool value) {
    setState(() {
      notificationStatus.forEach((key, _) {
        notificationStatus[key] = value;
      });
    });
  }

  void removeAllNotifications() {
    setState(() {
      notificationStatus.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: Text("Notification"),
        actions: [
          PopupMenuButton(
            onSelected: (value) {
              if (value == 'markAll') {
                bool allSelected = !notificationStatus.containsValue(false);
                markAllNotifications(!allSelected);
              } else if (value == 'removeAll') {
                removeAllNotifications();
              }
            },
            itemBuilder: (context) => [
              PopupMenuItem(
                value: 'markAll',
                child: Text('Mark All'),
              ),
              PopupMenuItem(
                value: 'removeAll',
                child: Text('Remove All'),
              ),
            ],
          ),
        ],
      ),
      body: notificationStatus.isEmpty
          ? Center(
              child: Text("There are no notifications for now."),
            )
          : Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search Notifications',
                      fillColor: Colors.black12,
                      contentPadding: EdgeInsets.all(16),
                      filled: true,
                      prefix: Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Expanded(
                  child: ListView.builder(
                    itemCount: notificationStatus.length,
                    itemBuilder: (context, index) {
                      String key = notificationStatus.keys.elementAt(index);
                      bool isSelected = notificationStatus[key] ?? false;
                      return ListTile(
                        title: Text(
                          key,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle:
                            Text("Your expenses has exceeded the monthly "),
                        trailing: Text("7:30 PM"),
                        tileColor:
                            isSelected ? Colors.grey.withOpacity(0.3) : null,
                        onTap: () {
                          setState(() {
                            notificationStatus[key] = !isSelected;
                          });
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
    );
  }
}
