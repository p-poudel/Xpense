import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AccountPage extends StatefulWidget {
  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  List<Account> accounts = [
    Account(iconData: Icons.payment, title: 'Savings', amount: 10000),
    Account(
        iconData: Icons.account_balance_wallet, title: 'Wallet', amount: 5000),
    Account(iconData: Icons.credit_card, title: 'Credit Card', amount: 15000),
    Account(
        iconData: Icons.business_center, title: 'Investments', amount: 20000),
  ];

  @override
  Widget build(BuildContext context) {
    int totalBalance =
        accounts.fold<int>(0, (sum, account) => sum + account.amount);
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 89,
        title: Padding(
          padding: const EdgeInsets.all(70.0),
          child: Text(
            'Account',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 185,
            width: double.infinity,
            child: Stack(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 165,
                      width: 88,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xff7F3DFF),
                            offset: const Offset(
                              5.0,
                              5.0,
                            ),
                            blurRadius: 15.0,
                            spreadRadius: 2.0,
                          ),
                        ], //BoxShadow
                        shape: BoxShape.circle,
                      ),
                    ),
                    SizedBox(
                      width: 93,
                    ),
                    Container(
                      height: 25,
                      width: 88,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xff7F3DFF),
                            offset: const Offset(
                              5.0,
                              5.0,
                            ),
                            blurRadius: 15.0,
                            spreadRadius: 2.0,
                          ),
                        ], //BoxShadow
                        shape: BoxShape.circle,
                      ),
                    ),
                    Container(
                      height: 165,
                      width: 108,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xff7F3DFF),
                            offset: const Offset(
                              5.0,
                              5.0,
                            ),
                            blurRadius: 15.0,
                            spreadRadius: 2.0,
                          ),
                        ], //BoxShadow
                        shape: BoxShape.circle,
                      ),
                    ),
                  ],
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Account Balance",
                        style: TextStyle(fontSize: 17),
                      ),
                      Text(
                        "Rs.$totalBalance",
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                SizedBox(height: 20),
                for (var account in accounts) _buildListTile(account),
                SizedBox(height: 20),
                _buildAddAccountButton(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildListTile(Account account) {
    return ListTile(
      leading: Icon(account.iconData),
      title: Text(account.title),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            icon: Icon(Icons.remove),
            onPressed: () {
              setState(() {
                account.amount -= 100; // Decrease amount by Rs.100
              });
            },
          ),
          Text(account.amount.toString()),
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              setState(() {
                account.amount += 100; // Increase amount by Rs.100
              });
            },
          ),
        ],
      ),
    );
  }

  Widget _buildAddAccountButton() {
    return Container(
        height: 56,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Color(0xff7F3DFF)),
            onPressed: () {
              _showAddAccountDialog();
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                Text(
                  "Add Account",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            )));
  }

  void _showAddAccountDialog() {
    String newAccountName = '';
    int newAccountBalance = 0;

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Add Account'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                decoration: InputDecoration(labelText: 'Account Name'),
                onChanged: (value) {
                  newAccountName = value;
                },
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Initial Balance'),
                onChanged: (value) {
                  newAccountBalance = int.tryParse(value) ?? 0;
                },
                keyboardType: TextInputType.number,
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                if (newAccountName.isNotEmpty && newAccountBalance > 0) {
                  setState(() {
                    accounts.add(Account(
                      iconData: Icons.account_box,
                      title: newAccountName,
                      amount: newAccountBalance,
                    ));
                  });
                  Navigator.of(context).pop();
                }
              },
              child: Text('Add'),
            ),
          ],
        );
      },
    );
  }
}

class Account {
  final IconData iconData;
  final String title;
  int amount;

  Account({required this.iconData, required this.title, required this.amount});
}
