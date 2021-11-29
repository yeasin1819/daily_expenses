import 'package:flutter/material.dart';
import 'package:transactions/transaction_list.dart';

import './product.dart';
import './new_transaction.dart';
import './transaction_list.dart';

int main() {
  runApp(HomePage());
  return 0;
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Product> transactionList = [
  ];

  bool addNewItem = false;

  void addItem(String title, String amount, String date) {
    transactionList.add(Product(title, amount, date));
    setState(() {});
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Daily Expenses",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Daily Expenses"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              addNewItem ? NewTransaction(addItem) : Container(),
              ...transactionList.map((obj) {
                return TransactionList(obj);
              }).toList(),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: addNewItem ? Colors.red : Colors.green,
          onPressed: () {
            if (addNewItem)
              addNewItem = false;
            else
              addNewItem = true;
            setState(() {});
          },
          child: addNewItem ? Text("X") : Text("+"),
        ),
      ),
    );
  }
}
