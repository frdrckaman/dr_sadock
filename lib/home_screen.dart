import 'package:email_launcher/email_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'nm_box.dart';
import 'dart:io';
import 'package:url_launcher/url_launcher.dart';
import 'splash_screen.dart';
import 'package:responsive_framework/responsive_framework.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mC,
      body: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    GestureDetector(
                      child: Container(
                        width: 55,
                        height: 55,
                        decoration: nMbox,
                        child: Icon(
                          FontAwesomeIcons.arrowLeft,
                          color: fCL,
                        ),
                      ),
                      onTap: (){
                        exit(0);
                      },
                    ),
                    GestureDetector(
                      child: Container(
                        width: 55,
                        height: 55,
                        decoration: nMbox,
                        child: Icon(
                          FontAwesomeIcons.question,
                          color: fCL,
                        ),
                      ),
                      onTap: (){
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text("About Dr Sadock App"),
                              content: Text("Aim is to provide immediate health education as requested,"
                                  "to solve problems,reassure,diagnose,treatment,to refer a patient the relevant "
                                  " specialist/institution1/health facility.Not only that but also to advice appropriate investigations so as to save/prolong "
                                  "life hence contribute to increase life expectancy,save money, time and resources"),
                              actions: [

                              ],
                            );
                          },
                        );
                      },
                    ),
                  ],
                ),
                AvatarImage(),
                SizedBox(height: 5),
                Text(
                  'Dr Sadock',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                ),
                // Text(
                //   'Medical Doctor, MD',
                //   style: TextStyle(fontWeight: FontWeight.w200),
                // ),
                SizedBox(height: 5),
                Text(
                  'Muone daktari kwa njia ya mtandao na kwa simu ya kawaida,tunatoa elimu ya afya kwa mtu mmoja mmoja na kwa '
                      'umma/jamii,tunashauri na kutoa rufaa ya kwenda hospitali/kwa daktari bingwa sahihi kulingana na tatizo lako ',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    GestureDetector(
                      child: Container(
                        width: 55,
                        height: 55,
                        decoration: nMbox,
                        child: Icon(
                          FontAwesomeIcons.facebookF,
                          color: fCL,
                        ),
                      ),
                      onTap: ()async{
                        const url = 'https://www.facebook.com/sadock.mathias.9';
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                    ),
                    SizedBox(width: 25),
                    GestureDetector(
                      child: Container(
                        width: 55,
                        height: 55,
                        decoration: nMbox,
                        child: Icon(
                          FontAwesomeIcons.twitter,
                          color: fCL,
                        ),
                      ),
                      onTap: ()async{
                        const url = 'https://twitter.com/';
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                    ),
                    SizedBox(width: 25),
                    GestureDetector(
                      child: Container(
                        width: 55,
                        height: 55,
                        decoration: nMbox,
                        child: Icon(
                          FontAwesomeIcons.instagram,
                          color: fCL,
                        ),
                      ),
                      onTap: ()async{
                        const url = 'https://www.instagram.com/sadock27/';
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                    ),
                    SizedBox(width: 25),
                    GestureDetector(
                      child: Container(
                        width: 55,
                        height: 55,
                        decoration: nMbox,
                        child: Icon(
                          FontAwesomeIcons.youtube,
                          color: fCL,
                        ),
                      ),
                      onTap: ()async{
                        const url = 'https://www.youtube.com/channel/UCCp8cG9uzIkoqNs6NIKvPPQ';
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                    ),
                  ],
                ),
                Spacer(),
                Column(
                  children: <Widget>[
                    GestureDetector(
                      child: Container(
                        padding: EdgeInsets.all(15),
                        decoration: nMboxInvert,
                        child: Row(
                          children: <Widget>[
                            FaIcon(FontAwesomeIcons.phone, color: Colors.pink.shade800, size: 20),
                            SizedBox(width: 8),
                            Text(
                              '+255 764 176 961',
                              style: TextStyle(fontWeight: FontWeight.w700),
                            ),
                            SizedBox(width: 3),
                          ],
                        ),
                      ),
                      onTap: (){launch("tel:255764176961");},
                    ),
                    SizedBox(width: 15),
                  ],
                ),
                SizedBox(height: 5),
                Column(
                  children: <Widget>[
                    GestureDetector(
                      child: Container(
                        padding: EdgeInsets.all(15),
                        decoration: nMboxInvert,
                        child: Row(
                          children: <Widget>[
                            FaIcon(FontAwesomeIcons.envelope, color: Colors.pink.shade800, size: 20),
                            SizedBox(width: 8),
                            Text(
                              'sadockmathias@gmail.com',
                              style: TextStyle(fontWeight: FontWeight.w700),
                            ),
                            SizedBox(width: 3),
                          ],
                        ),
                      ),
                      onTap: () async{
                        Email email = Email(
                          to: ['sadockmathias@gmail.com'],
                          // cc: ['foo@gmail.com'],
                          // bcc: ['bar@gmail.com'],
                          // subject: '',
                          // body: ''
                        );
                        await EmailLauncher.launch(email);
                      },
                    ),
                    SizedBox(width: 15),
                  ],
                ),
                SizedBox(height: 5),
                Column(
                  children: <Widget>[
                    GestureDetector(
                      child: Container(
                        padding: EdgeInsets.all(15),
                        decoration: nMboxInvert,
                        child: Row(
                          children: <Widget>[
                            FaIcon(FontAwesomeIcons.globe, color: Colors.pink.shade800, size: 20),
                            SizedBox(width: 8),
                            Text(
                              'www.drsadockmathias.com',
                              style: TextStyle(fontWeight: FontWeight.w700),
                            ),
                            SizedBox(width: 3),
                          ],
                        ),
                      ),
                      onTap: (){},
                    ),
                    SizedBox(width: 15),
                  ],
                ),
              ],

            ),
          ),
        ],
      ),
    );
  }
}

class AvatarImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      padding: EdgeInsets.all(8),
      decoration: nMbox,
      child: Container(
        decoration: nMbox,
        padding: EdgeInsets.all(3),
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage('assets/sadok.jpg'),
            ),
          ),
        ),
      ),
    );
  }
}
