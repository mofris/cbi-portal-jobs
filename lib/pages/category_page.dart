import 'package:flutter/material.dart';
import 'package:future_jobs/theme.dart';
import 'package:future_jobs/widgets/job_tile.dart';

class CategoryPage extends StatelessWidget {
  final String name;
  final String imageUrl;

  CategoryPage({required this.imageUrl, required this.name});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        height: 270,
        width: double.infinity,
        padding: EdgeInsets.only(
          left: defaultMargin,
          bottom: 30,
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              imageUrl,
            ),
          ),
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(16),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: whiteTextStyle.copyWith(
                fontSize: 24,
                fontWeight: semiBold,
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              '12,309 available',
              style: whiteTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
          ],
        ),
      );
    }

    Widget companies() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.only(
          top: 30,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Big Companies',
              style: blackTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 24,
            ),
            JobTile(
              companyLogo: 'assets/icon_google.png',
              name: 'Front-End Developer',
              companyName: 'Google',
            ),
            JobTile(
              companyLogo: 'assets/icon_instagram.png',
              name: 'UI Designer',
              companyName: 'Instagram',
            ),
            JobTile(
              companyLogo: 'assets/icon_facebook.png',
              name: 'Data Scientist',
              companyName: 'Facebook',
            ),
          ],
        ),
      );
    }

    // Widget newStartups() {
    //   return Container(
    //     width: double.infinity,
    //     margin: EdgeInsets.only(
    //       top: 20,
    //       left: defaultMargin,
    //       right: defaultMargin,
    //     ),
    //     child: Column(
    //       crossAxisAlignment: CrossAxisAlignment.start,
    //       children: [
    //         Text(
    //           'New Startups',
    //           style: blackTextStyle.copyWith(
    //             fontSize: 16,
    //           ),
    //         ),
    //         SizedBox(
    //           height: 24,
    //         ),
    //         JobTile(
    //           companyLogo: 'assets/icon_google.png',
    //           name: 'Front-End Developer',
    //           companyName: 'Google',
    //         ),
    //         JobTile(
    //           companyLogo: 'assets/icon_instagram.png',
    //           name: 'UI Designer',
    //           companyName: 'Instagram',
    //         ),
    //         JobTile(
    //           companyLogo: 'assets/icon_facebook.png',
    //           name: 'Data Scientist',
    //           companyName: 'Facebook',
    //         ),
    //       ],
    //     ),
    //   );
    // }

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
            Navigator.pushNamed(context, '/profile');
          }
        },
      );
    }

    return Scaffold(
      bottomNavigationBar: bottomNavBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            header(),
            companies(),
            // newStartups(),
          ],
        ),
      ),
    );
  }
}
