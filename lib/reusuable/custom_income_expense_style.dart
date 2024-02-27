import 'package:flutter/material.dart';

class IncomeExpenseStyle {
  static const TextStyle customTextStyle = TextStyle(
    color: Colors.white,
    fontSize: 64,
    fontWeight: FontWeight.bold,
  );
}

class CategoryDropdown extends StatefulWidget {
  const CategoryDropdown({super.key});
  @override
  _CategoryDropdownState createState() => _CategoryDropdownState();
}

class _CategoryDropdownState extends State<CategoryDropdown> {
  String selectedValue = 'Category';

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: 20),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(color: Colors.grey),
          ),
          child: DropdownButton<String>(
            isExpanded: true,
            padding: const EdgeInsets.all(5),
            borderRadius: const BorderRadius.all(
              Radius.circular(20),
            ),
            style: const TextStyle(color: Colors.grey),
            value: selectedValue,
            onChanged: (String? newValue) {
              setState(() {
                selectedValue = newValue!;
              });
            },
            items: <String>[
              'Category',
              'Option 1',
              'Option 2',
              'Option 3',
              'Option 4'
            ].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
