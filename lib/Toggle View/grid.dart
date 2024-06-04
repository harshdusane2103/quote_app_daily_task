import 'dart:math';

import 'package:flutter/material.dart';
import 'package:quote_app_daily_task/utils/golbal.dart';
import 'package:quote_app_daily_task/utils/quote_class.dart';

QuotesModel? quotesModel;
bool Show=true;

class gridviewScreen extends StatefulWidget {
  const gridviewScreen({super.key});

  @override
  State<gridviewScreen> createState() => _gridviewScreenState();
}

class _gridviewScreenState extends State<gridviewScreen> {
  @override
  void initState() {
    quotesModel = QuotesModel.toList(QuoteList);
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        title: Text(
          'Grid View ',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(onPressed: () {
            setState(() {
              Show = !Show;
            });
          }, icon: Icon(Show? Icons.format_list_bulleted_outlined : Icons.grid_view_rounded),color: Colors.white,)
        ],
      ),
      body:Show?listview():gridView(),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Random random = Random();
          int hd = random.nextInt(quotesModel!.quoteModelList.length);

          showDialog(
              context: context,
              builder: (context) => AlertDialog(
                    title: Text(
                      quotesModel!.quoteModelList[hd].author!,
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    content: Text(
                      '"${quotesModel!.quoteModelList[hd].quote!}"',
                      style: TextStyle(color: Colors.black),
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
                              Selectindex = hd;
                            });
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
    );
  }

  ListView listview() {
    return ListView.builder(
      itemCount:quotesModel!.quoteModelList.length ,
    itemBuilder: (context,index)=> Card(


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
    );
  }

  GridView gridView() {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 4/5.2,
      ),
      itemCount: quotesModel!.quoteModelList.length,
      itemBuilder: (context, index) => Card(
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
    );
  }
}
