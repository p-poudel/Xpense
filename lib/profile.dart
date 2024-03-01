import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:xpense/theme.dart';
import 'package:xpense/AccountPage.dart';

class myProfile extends StatefulWidget {
  const myProfile({Key? key}) : super(key: key);

  @override
  _myProfileState createState() => _myProfileState();
}

class _myProfileState extends State<myProfile> {
  Widget option(
      String text, IconData icon, Color color1, Color color2, Widget page) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => page));
      },
      child: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 52,
                  width: 52,
                  decoration: BoxDecoration(
                    color: color1,
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: Icon(icon, color: color2),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    text,
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                  ),
                )
              ],
            ),
            const Divider(
              color: Colors.black,
              height: 10,
              thickness: 0.05,
              indent: 1,
              endIndent: 1,
            ),
          ],
        ),
      ),
    );
  }

  String _username = "Ram Katuwal";
  TextEditingController _editingController = TextEditingController();
  bool _isEditing = false;

  @override
  Widget build(BuildContext context) {
    var isDarkThemeEnabled = false;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: isDarkThemeEnabled ? Colors.black : Color(0xffF6F6F6),
      ),
      backgroundColor: isDarkThemeEnabled ? Colors.black : Color(0xffF6F6F6),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage:
                            AssetImage("assets/images/profile.png"),
                      ),
                      Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.purple,
                            width: 5,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Username",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: 5),
                        _isEditing
                            ? TextFormField(
                                controller: _editingController,
                                decoration: InputDecoration(
                                  hintText: "Enter new username",
                                ),
                              )
                            : Text(
                                _username,
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        _isEditing = !_isEditing;
                        if (!_isEditing) {
                          _username = _editingController.text;
                        }
                      });
                    },
                    icon: Icon(
                      _isEditing ? Icons.save : Icons.edit,
                      size: 34,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  option("Account", Icons.account_balance_wallet,
                      Color(0xffEEE5FF), Color(0xff7F3DFF), AccountPage()),
                  option("Setting", Icons.settings, Color(0xffEEE5FF),
                      Color(0xff7F3DFF), SettingPage()),
                  option("Export Name", Icons.upload, Color(0xffEEE5FF),
                      Color(0xff7F3DFF), ExportPage()),
                  GestureDetector(
                    onTap: () {
                      _showLogoutDialog(context);
                    },
                    child: Padding(
                      padding: EdgeInsets.all(15),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 52,
                                width: 52,
                                decoration: BoxDecoration(
                                  color: Color(0xffFFE2E4),
                                  borderRadius: BorderRadius.circular(7),
                                ),
                                child: Icon(Icons.logout,
                                    color: Color(0xffFD3C4A)),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Log Out",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16),
                                ),
                              )
                            ],
                          ),
                          const Divider(
                            color: Colors.black,
                            height: 10,
                            thickness: 0.05,
                            indent: 1,
                            endIndent: 1,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SettingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 89,
          title: Padding(
            padding: const EdgeInsets.all(70.0),
            child: Text(
              'Settings',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
        body: Container(
          child: Column(
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => mytheme()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        "Theme",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      "Security",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      "Notification",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      "About",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      "Help",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}

class ExportPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Export Page'),
      ),
      body: Center(
        child: Text('Export Page'),
      ),
    );
  }
}

void _showLogoutDialog(BuildContext context) {
  showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          color: Colors.transparent, // This makes the background transparent
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  title: Text('Confirm Logout', textAlign: TextAlign.center),
                ),
                ListTile(
                  title: Text('Are you sure you want to logout?'),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop(); // Dismiss the bottom sheet
                      },
                      child: Text('Cancel'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Perform logout action here

                        Navigator.of(context).pop();
                      },
                      child: Text('Logout'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      });
}
