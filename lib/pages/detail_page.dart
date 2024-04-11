import 'package:flutter/material.dart';

import '../theme.dart';

class DetailPage extends StatefulWidget {
  final String name;
  final String companyLogo;
  final String companyName;

  DetailPage({
    required this.companyLogo,
    required this.companyName,
    required this.name,
  });

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  bool isApplied = false;

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          top: 80,
        ),
        child: Column(
          children: [
            isApplied
                ? Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(bottom: 30),
                    padding: EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 8,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(48),
                      color: Color(0xffECEDF1),
                    ),
                    child: Text(
                      'You have applied this job and the\nrecruiter will contact you',
                      textAlign: TextAlign.center,
                      style: greyTextStyle.copyWith(),
                    ),
                  )
                : Container(),
            Image.asset(
              widget.companyLogo,
              width: 60,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              widget.name,
              style: blackTextStyle.copyWith(
                fontSize: 20,
                fontWeight: semiBold,
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              widget.companyName,
              style: greyTextStyle,
            ),
          ],
        ),
      );
    }

    Widget detailItem(String text) {
      return Container(
        margin: EdgeInsets.only(
          top: 16,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              Icons.adjust,
              color: primaryColor,
              size: 12,
            ),
            SizedBox(
              width: 8,
            ),
            Expanded(
              child: Text(
                text,
                style: blackTextStyle.copyWith(
                  fontWeight: light,
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget aboutJob() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'About the job',
              style: blackTextStyle.copyWith(
                fontWeight: medium,
              ),
            ),
            Column(
              children: [
                detailItem(
                  'Full-Time On Site',
                ),
                detailItem(
                  'Rp 9.000.000 - Rp 12.500.000 per month',
                ),
                detailItem(
                  'Pangkalanbun, Kalimantan Tengah',
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget qualifications() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Qualifications',
              style: blackTextStyle.copyWith(
                fontWeight: medium,
              ),
            ),
            Column(
              children: [
                detailItem(
                  'Bachelor\'s degree in Computer Science, Information Technology, or related field.',
                ),
                detailItem(
                  'Familiarity with mobile and web application environments.',
                ),
                detailItem(
                  'Proficiency in troubleshooting hardware, software, and network issues.',
                ),
                detailItem(
                  'Strong analytical and problem-solving skills.',
                ),
                detailItem(
                  'Excellent communication and interpersonal abilities.',
                ),
                detailItem(
                  'Ability to work independently and collaboratively in a fast-paced environment.',
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget responsibilities() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Responsibilities',
              style: blackTextStyle.copyWith(
                fontWeight: medium,
              ),
            ),
            Column(
              children: [
                detailItem(
                  'Provide technical support to users of our application via email, phone, or chat.',
                ),
                detailItem(
                  'Troubleshoot and resolve hardware, software, and network issues.',
                ),
                detailItem(
                  'Document and track support tickets, including resolutions and escalation procedures.',
                ),
                detailItem(
                  'Collaborate with developers and other IT staff to address recurring issues and implement solutions.',
                ),
                detailItem(
                  'Assist in testing and quality assurance of new application features and updates.',
                ),
                detailItem(
                  'Stay up-to-date with emerging technologies and best practices in IT support.',
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget applyButton() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(top: 50),
            height: 45,
            width: 200,
            child: TextButton(
              onPressed: () {
                setState(() {
                  isApplied = true;
                });
              },
              style: TextButton.styleFrom(
                backgroundColor: primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(66),
                ),
              ),
              child: Text(
                'Apply for Job',
                style: whiteTextStyle.copyWith(
                  fontWeight: medium,
                ),
              ),
            ),
          ),
        ],
      );
    }

    Widget cancelButton() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(top: 50),
            height: 45,
            width: 200,
            child: TextButton(
              onPressed: () {
                setState(() {
                  isApplied = false;
                });
              },
              style: TextButton.styleFrom(
                backgroundColor: redColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(66),
                ),
              ),
              child: Text(
                'Cancel Apply',
                style: whiteTextStyle.copyWith(
                  fontWeight: medium,
                ),
              ),
            ),
          ),
        ],
      );
    }

    Widget messageButton() {
      return Container(
        margin: EdgeInsets.only(
          top: 20,
          bottom: 35,
        ),
        child: TextButton(
          onPressed: () {},
          child: Text(
            'Message Recruiter',
            style: greyTextStyle.copyWith(
              fontWeight: medium,
            ),
          ),
        ),
      );
    }

    return Scaffold(
      body: Center(
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          children: [
            header(),
            aboutJob(),
            qualifications(),
            responsibilities(),
            isApplied ? cancelButton() : applyButton(),
            messageButton(),
          ],
        ),
      ),
    );
  }
}
