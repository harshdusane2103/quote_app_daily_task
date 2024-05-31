import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class DialogScreen extends StatefulWidget {
  const DialogScreen({super.key});

  @override
  State<DialogScreen> createState() => _DialogScreenState();
}

class _DialogScreenState extends State<DialogScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.teal,
        title: Text('Basic Dialog Box',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
      ),
     body: Column(
       children: [
         SizedBox(height: 350,),
       Center(
         child: ElevatedButton(onPressed: () {
           showDialog(context: context, builder: (context) {
             return Dialog.fullscreen(
               child: Center(
                 child: Column(
                   children: [
                     CupertinoAlertDialog(
                       title: Text('Do you want to Delete ?'),
                       actions: [
                         TextButton(onPressed: () {

                         }, child: InkWell(
                             onTap:() {
                               setState(() {
                                 Navigator.pop(context);
                               });
                             },child: Text('No'))),
                         TextButton(onPressed: () {

                         }, child: Text('yes'))
                       ],
                     )
                   ],
                 ),
               ),



             );
           },);

         }, child: Text('Full Screen')),
       ),

       ],
     ),
      floatingActionButton:InkWell(
        onTap: () {
          showDialog(context: context, builder:(context) {
            return AlertDialog(
              backgroundColor: Colors.teal.shade50,
              title: Text('Do you want to Accept ?',style: TextStyle(color: Colors.black),),
              actions: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Cancel',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                    SizedBox(width: 10,),
                    Text('Accept',style: TextStyle(color: Colors.black,fontWeight:FontWeight.bold),)
                  ],
                )
              ],

            );
          },);
        },
        child: Container(
          height: 40,
          width: 80,
          decoration: BoxDecoration(
          color: Colors.teal,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Center(child: Text('Submit',style: TextStyle(color: Colors.white),)),
        ),
      ),
    );
  }
}
