import 'package:flutter/material.dart';

class TopRecordCard extends StatelessWidget {
  final String account;
  final double balance;
  final Color color;

  const TopRecordCard({
    super.key,
    required this.account,
    required this.balance,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,

      child: Card(
        color: color,
        elevation: 4,

        child: Padding(
          padding: EdgeInsets.all(12),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Text(
                account,
                style: TextStyle(color: Colors.white, fontSize: 13),
              ),

              SizedBox(height: 10),

              Text(
                "\$${balance.toStringAsFixed(2)}",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
