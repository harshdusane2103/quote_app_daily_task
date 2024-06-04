import 'dart:math';

import 'package:flutter/material.dart';
import 'package:quote_app_daily_task/utils/quote_class.dart';
import 'package:quote_app_daily_task/utils/golbal.dart';

QuotesModel? quotesModel;

class Quotes extends StatefulWidget {
  const Quotes({super.key});

  @override
  State<Quotes> createState() => _QuotesState();
}

class _QuotesState extends State<Quotes> {
  @override
  void initState() {
    quotesModel = QuotesModel.toList(QuoteList);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
          title: Text(
            'Quote ',
            style: TextStyle(color: Colors.white, ),
          )
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(8, 12, 8, 8),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: List.generate(

                quotesModel!.quoteModelList.length,
                (index) => Card(


                  // color: colorList[index % colorList.length],
                  child: ListTile(
                    title: Text(
                      '"${quotesModel!.quoteModelList[index].quote!}"',
                    ),
                    subtitle: Text(
                      '- ${quotesModel!.quoteModelList[index].author!}',
                    ),
                  ),
                  color: colorList[index % colorList.length],
                ),
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {

            Random random = Random();
            int hd = random.nextInt(quotesModel!.quoteModelList.length);

            showDialog(
                context: context,
                builder: (context) => AlertDialog(
                      // backgroundColor: colorList[a % colorList.length],
                      title: Text(
                        quotesModel!.quoteModelList[hd].author!,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                      ),
                      content: Text(
                        '"${quotesModel!.quoteModelList[hd].quote!}"',style: TextStyle(color: Colors.black
                      ),
                      ),
                      actions: [

                        TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              'Back',
                            )),
                        TextButton(
                            onPressed: () {
                              setState(() {
                                Selectindex=hd;
                              });
                              Navigator.of(context).pushNamed('/bg');
                            },
                            child: Text(
                              'Save',
                            )),
                      ],
                    ));
          },
          child: const Icon(
            Icons.add,
            size: 30,
            color: Colors.white,
          ),
          backgroundColor: Colors.deepPurple,
        ),
      ),
    );
  }
}
