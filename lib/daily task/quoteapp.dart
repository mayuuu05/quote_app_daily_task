import 'dart:math';

import 'package:flutter/material.dart';
import 'package:quote_app_daily_task/utils/quote_list.dart';
import 'package:quote_app_daily_task/utils/quote_model.dart';

void main() {
  runApp(MaterialApp(home: QuotesApp()));
}

class QuotesApp extends StatefulWidget {
  const QuotesApp({super.key});

  @override
  State<QuotesApp> createState() => _QuotesAppState();
}

QuoteModel? quoteModel;

class _QuotesAppState extends State<QuotesApp> {
  @override
  void initState() {
    setState(() {});
    quoteModel = QuoteModel.toList(quoteList);
    super.initState();
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.black,
              centerTitle: true,
              title: Text(
                'Quotes app',
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            body: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    ...List.generate(
                      quoteModel!.quoteModelList.length,
                          (index) => Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Card(
                          color: (index % 5 == 0)
                              ? Color(0xff7FDFCC)
                              : (index % 2 == 1)
                              ? Color(0xffCFE499)
                              : (index % 3 == 2)
                              ? Color(0xffECC76A)
                              : (index % 4 == 3)
                              ? Color(0xffF68981)
                              : (index % 5 == 4)
                              ? Color(0xffF4A5BA)
                              : Color(0xfffE191B0),


                          child: ListTile(
                            title: Text(quoteModel!.quoteModelList[index].quote!,style: TextStyle(
                                fontSize: 15,
                                color: Colors.black
                            ),),
                            subtitle:
                            Text(quoteModel!.quoteModelList[index].author!,style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.black
                            ),),

                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            floatingActionButton: FloatingActionButton(
              backgroundColor: Colors.black,
              onPressed: () {
                Random random = Random();
                int x = random.nextInt(quoteModel!.quoteModelList.length);

                setState(() {
                  showDialog(context: context, builder: (context) => AlertDialog(
                    title: Text(quoteModel!.quoteModelList[x].author!),
                    content: Text(quoteModel!.quoteModelList[x].quote!),
                    actions: [
                      TextButton(onPressed: () {

                      }, child: Text('Save')),
                      TextButton(onPressed: () {
                        Navigator.of(context).pop();
                      }, child: Text('Back')),

                    ],
                  ),);
                });
              },child: Icon(Icons.card_giftcard_outlined,color: Colors.white,),
            ),
          )),
    );
  }
}
