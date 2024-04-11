import 'package:flutter/material.dart';
import 'package:future_jobs/theme.dart';
import 'package:future_jobs/widgets/category_card.dart';
import 'package:future_jobs/widgets/job_tile.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hi, Welcome back',
                      style: greyTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'Mochammad Faris',
                      style: blackTextStyle.copyWith(
                        fontSize: 24,
                        fontWeight: semiBold,
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 58,
                  height: 58,
                  padding: EdgeInsets.all(4),
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
              ],
            )
          ],
        ),
      );
    }

    Widget hotCategories() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: defaultMargin,
            ),
            child: Text(
              'Hot Categories',
              style: blackTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SizedBox(
                  width: defaultMargin,
                ),
                CategoryCard(
                  imageUrl: 'assets/image_category14.jpeg',
                  name: 'PKPP Batch XXIV',
                ),
                CategoryCard(
                  imageUrl: 'assets/image_category15.jpeg',
                  name: 'Mandor Mandiri',
                ),
                CategoryCard(
                  imageUrl: 'assets/image_category13.jpeg',
                  name: 'Ranch Manager',
                ),
                CategoryCard(
                  imageUrl: 'assets/image_category12.jpeg',
                  name: 'Staff Tax \n',
                ),
                CategoryCard(
                  imageUrl: 'assets/image_category11.jpeg',
                  name: 'Assessor \n',
                ),
              ],
            ),
          ),
        ],
      );
    }

    Widget justPosted() {
      return Container(
        padding: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          top: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Just Posted',
              style: blackTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 24,
            ),
            JobTile(
              companyLogo: 'assets/logo.png',
              name: 'Staff IT Programming',
              companyName: 'Citra Borneo Indah',
            ),
            JobTile(
              companyLogo: 'assets/logo.png',
              name: 'Assessor',
              companyName: 'Citra Borneo Indah',
            ),
            JobTile(
              companyLogo: 'assets/logo-sml.png',
              name: 'Staff IT Support App',
              companyName: 'Sawit Mandiri Lestari',
            ),
            JobTile(
              companyLogo: 'assets/logo.png',
              name: 'Ranch Manager',
              companyName: 'Citra Borneo Indah',
            ),
            JobTile(
              companyLogo: 'assets/logo.png',
              name: 'Staff HR Recruitment',
              companyName: 'Citra Borneo Indah',
            ),
          ],
        ),
      );
    }

    Widget body() {
      return ListView(
        children: [
          header(),
          hotCategories(),
          justPosted(),
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
            // Navigator.pushNamed(context, '#');
          } else if (index == 1) {
            Navigator.pushNamed(context, '/notification');
          } else if (index == 2) {
            Navigator.pushNamed(context, '/favorite');
          } else if (index == 3) {
            Navigator.pushNamed(context, '/profile');
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
