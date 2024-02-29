import 'package:flutter/material.dart';

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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffF6F6F6),
      ),
      backgroundColor: Color(0xffF6F6F6),
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
                  option("Log Out", Icons.logout, Color(0xffFFE2E4),
                      Color(0xffFD3C4A), LogoutPage())
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account Page'),
      ),
      body: Center(
        child: Text('Account Page'),
      ),
    );
  }
}

class SettingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Setting Page'),
      ),
      body: Center(
        child: Text('Setting Page'),
      ),
    );
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

class LogoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Logout Page'),
      ),
      body: Center(
        child: Text('Logout Page'),
      ),
    );
  }
}
