import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quote_app_daily_task/Quote_Dialog/HomeScreen.dart';

import 'package:quote_app_daily_task/utils/golbal.dart';

class bgScreen extends StatefulWidget {
  const bgScreen({super.key});

  @override
  State<bgScreen> createState() => _bgScreenState();
}

class _bgScreenState extends State<bgScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.only(top: 200),
              height: 340,
              width: 340,
              decoration: BoxDecoration(
                // border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(10),
                // image: DecorationImage(
                //   fit: BoxFit.cover,
                //   image: AssetImage("assets/image/banner.jpeg"),
                // )
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: ListTile(
                      title: Text(
                        quotesModel!.quoteModelList[Selectindex].quote!,
                        style: TextStyle(color: Colors.white),
                      ),
                      subtitle: Text(
                        "-" +
                            " " +
                            quotesModel!.quoteModelList[Selectindex].author!,
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              margin: EdgeInsets.only(top: 150),
              height: 80,
              width: 100,
              // color: Colors.white,
              child: Text(
                '@harshdusane',
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
