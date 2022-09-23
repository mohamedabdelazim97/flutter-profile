import 'package:booking_task/edit-password.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PrfilePage extends StatefulWidget {
  @override
  _PrfilePageState createState() => _PrfilePageState();
}

class _PrfilePageState extends State<PrfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 1,
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 16, top: 25, right: 16),
        child: ListView(
          children: [
            // Row(
            //   children: [
            //     Column(
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       children: const [
            // Text(
            //   "Amanda",
            //   style:
            //       TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
            // ),
            //         // const SizedBox(
            //         //   height: 10,
            //         // ),
            // Text(
            //   "View and Edit profile",
            //   style: TextStyle(
            //     fontSize: 15,
            //     fontWeight: FontWeight.w300,
            //     color: Colors.grey,
            //   ),
            // ),
            //       ],
            //     ),
            //     Container(
            //       alignment: Alignment.centerRight,
            //       child: Column(
            //         children: [
            // CircleAvatar(
            //   child: ClipRect(
            //       child: Image.asset("assets/images/football.png")),
            // ),
            //         ],
            //       ),
            //     ),
            //   ],
            // ),

            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Text(
                        "Amanda",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "View and Edit profile",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                Flexible(
                  fit: FlexFit.tight,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        child: ClipRect(
                          child: Image.asset("assets/images/football.png"),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            buildAccountOptionRow(
                context, "Change password", Icons.lock, EditProfilePage()),
            const Divider(
              height: 15,
              thickness: 2,
            ),
            buildAccountOptionRow(context, "Invite Friend",
                Icons.person_add_alt, EditProfilePage()),
            const Divider(
              height: 15,
              thickness: 2,
            ),
            buildAccountOptionRow(context, "Credit & Coupons",
                Icons.card_giftcard, EditProfilePage()),
            const Divider(
              height: 15,
              thickness: 2,
            ),
            buildAccountOptionRow(
                context, "help Center", Icons.question_mark, EditProfilePage()),
            const Divider(
              height: 15,
              thickness: 2,
            ),
            buildAccountOptionRow(
                context, "Payment", Icons.payment, EditProfilePage()),
            const Divider(
              height: 15,
              thickness: 2,
            ),
            buildAccountOptionRow(
                context, "Setting", Icons.settings, EditProfilePage()),
            const Divider(
              height: 15,
              thickness: 2,
            ),
            buildAccountOptionRow(
                context, "Logout", Icons.logout, EditProfilePage()),
          ],
        ),
      ),
    );
  }

  Row buildNotificationOptionRow(String title, bool isActive) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.grey[600]),
        ),
        Transform.scale(
            scale: 0.7,
            child: CupertinoSwitch(
              value: isActive,
              onChanged: (bool val) {},
            ))
      ],
    );
  }

  GestureDetector buildAccountOptionRow(
      BuildContext context, String title, IconData icon, Widget widget) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (BuildContext context) => widget,
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.grey[600],
              ),
            ),
            Icon(
              icon,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
