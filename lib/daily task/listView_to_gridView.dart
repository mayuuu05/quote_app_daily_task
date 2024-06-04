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

int _crossAxisCount = 2;
double _aspectRatio = 1.5;

Click _click = Click.grid;
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
              actions: [
                IconButton(
                  onPressed: () {
                    if (_click == Click.list) {
                      _crossAxisCount = 2;
                      _aspectRatio = 1.5;
                      _click = Click.grid;
                    } else {
                      _crossAxisCount = 1;
                      _aspectRatio = 5;
                      _click = Click.list;
                    }
                    setState(() {});
                  },
                  icon: Padding(
                    padding: const EdgeInsets.only(
                        right: 20
                    ),
                    child: Icon(_click == Click.list
                        ? Icons.grid_on
                        : Icons.view_list_outlined,color: Colors.white,),
                  ),
                )
              ],
            ),
            body: (_click == Click.list)
                ? GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 9/16
              ),
              itemCount: quoteModel!.quoteModelList.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(0.0),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Card(
                    color: (index % 2 == 0)
                        ? Color(0xff7FDFCC)
                        : Color(0xfffE2F4F1),
                    child: ListTile(
                      title: Text(
                        quoteModel!.quoteModelList[index].quote!,
                        style: TextStyle(
                            fontSize: 15, color: Colors.black),
                      ),
                      subtitle: Text(
                        quoteModel!.quoteModelList[index].author!,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.black),
                      ),
                    ),
                  ),
                ),
              ),
            )
                : ListView.builder(
              itemCount: quoteModel!.quoteModelList.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Card(
                      color: (index % 2 == 0)
                          ? Color(0xff7FDFCC)
                          : (index % 2 == 1)
                          ? Color(0xfffE2F4F1)
                          : Color(0xfffE2F4F1),
                      child: ListTile(
                        title: Text(
                          quoteModel!.quoteModelList[index].quote!,
                          style: TextStyle(
                              fontSize: 15, color: Colors.black),
                        ),
                        subtitle: Text(
                          quoteModel!.quoteModelList[index].author!,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.black),
                        ),
                      ),
                    ),
                  ),

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
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text(quoteModel!.quoteModelList[x].author!),
                      content: Text(quoteModel!.quoteModelList[x].quote!),
                      actions: [
                        TextButton(onPressed: () {}, child: Text('Save')),
                        TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text('Back')),
                      ],
                    ),
                  );
                });
              },
              child: Icon(
                Icons.card_giftcard_outlined,
                color: Colors.white,
              ),
            ),
          )),
    );
  }
}

enum Click { grid, list }
