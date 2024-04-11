import 'package:flutter/material.dart';
import 'package:future_jobs/theme.dart';
import 'package:future_jobs/widgets/profile_tile.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget image() {
      return Container(
        padding: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          top: 10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'My Profile',
              style: blackTextStyle.copyWith(
                fontSize: 17,
                fontWeight: bold,
              ),
            ),
            Center(
              child: Column(
                children: [
                  Container(
                    width: 120,
                    height: 120,
                    margin: EdgeInsets.only(top: 40),
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: primaryColor,
                      ),
                    ),
                    child: Image.asset(
                      'assets/image_profile.png',
                    ),
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Text(
                    'Mochammad Faris',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: semiBold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget listItemProfile() {
      return Container(
        padding: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          top: 10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 34,
            ),
            ProfileTile(
              name: 'Update Profile',
            ),
            ProfileTile(
              name: 'Upload CV',
            ),
            ProfileTile(
              name: 'Upload Resume',
            ),
            ProfileTile(
              name: 'History',
            ),
            ProfileTile(
              name: 'Logout',
            ),
          ],
        ),
      );
    }

    Widget body() {
      return ListView(
        children: [
          image(),
          listItemProfile(),
        ],
      );
    }

    Widget bottomNavBar() {
      return BottomNavigationBar(
        elevation: 0,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icon_home.png',
              width: 24,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icon_notification.png',
              width: 24,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icon_love.png',
              width: 24,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icon_user.png',
              width: 24,
            ),
            label: '',
          ),
        ],
        onTap: (int index) {
          if (index == 0) {
            Navigator.pushNamed(context, '/home');
          } else if (index == 1) {
            Navigator.pushNamed(context, '/notification');
          } else if (index == 2) {
            Navigator.pushNamed(context, '/favorite');
          } else if (index == 2) {
            // Navigator.pushNamed(context, '/profile');
          }
        },
      );
    }

    return Scaffold(
      bottomNavigationBar: bottomNavBar(),
      body: body(),
    );
  }
}
