import 'package:flutter/material.dart';

import 'package:transactions/product.dart';

class TransactionList extends StatelessWidget {
  final Product product;
  TransactionList(this.product);

  Widget build(BuildContext context) {

    return Card(
      child: Row(
        children: [
          Container(
            color: Colors.purple,
            margin: EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 20,
            ),
            padding: EdgeInsets.all(10),
            child: Text(
              product.amount + '\$',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Column(
            children: [
              Text(
                product.title,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 300,
              ),
              Text(
                product.date,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 13,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
