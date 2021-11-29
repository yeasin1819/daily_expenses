import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import './product.dart';

class NewTransaction extends StatelessWidget {
  final product_title = TextEditingController();
  final price = TextEditingController();
  final Function(String a, String b, String c) addNewItem;
  NewTransaction(this.addNewItem);
  Widget build(BuildContext context) {
    var now = new DateTime.now();
    var formatter = new DateFormat.yMMMEd();
    String formattedDate = formatter.format(now);

    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              labelText: "Product Title",
              border: OutlineInputBorder(),
              contentPadding: EdgeInsets.all(20.0),
            ),
            controller: product_title,
          ),
          SizedBox(height: 10,),
          TextField(
            decoration: InputDecoration(
              labelText: "Price Of Product",
              border: OutlineInputBorder(),
            ),
            controller: price,
          ),
           SizedBox(height: 10,),
          FlatButton(
            splashColor: Colors.red,
       color: Colors.green,
       textColor: Colors.white,
       minWidth: double.infinity,
              onPressed: () {
                if (product_title.text.isEmpty || double.parse(price.text) < 0){
                  return;
                }
                addNewItem(product_title.text, price.text,
                    formattedDate);
              },
              child: Text("Submit")),
        ],
      ),
    );
  }
}
