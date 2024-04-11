import 'package:flutter/material.dart';

import '../theme.dart';

class NotificationTile extends StatelessWidget {
  final String name;
  final String companyName;
  final String dateTime;

  NotificationTile({
    required this.name,
    required this.companyName,
    required this.dateTime,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigator.push(
        // context,
        // MaterialPageRoute(
        //   builder: (context) => DetailPage(
        //     name: name,
        //     wacth: wacth,
        //     companyName: companyName,
        //   ),
        // ),
        // );
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      name,
                      style: blackTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: medium,
                      ),
                    ),
                    Text(
                      dateTime,
                      style: greyTextStyle,
                    ),
                  ],
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  companyName,
                  style: greyTextStyle,
                ),
                SizedBox(
                  height: 2,
                ),
                Divider(
                  thickness: 1,
                ),
                SizedBox(
                  height: 16,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
