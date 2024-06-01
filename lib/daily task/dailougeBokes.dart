import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



void main() {
  runApp(MaterialApp(home: AlertDialogue()));
}
class AlertDialogue extends StatefulWidget {
  const AlertDialogue({super.key});

  @override
  State<AlertDialogue> createState() => _AlertDialogueState();
}

class _AlertDialogueState extends State<AlertDialogue> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            centerTitle: true,
            title: Text('Dialogue Boxes',style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20
            ),),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    child: Text("Dialog"),
                    onPressed:(){
                      showDialog(context: context, builder: (BuildContext context){
                        return Dialog(
                          child: Container(
                            height: 300,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                FlutterLogo(size: 100,),
                                Text("This is a Dialog Box",style:TextStyle(fontSize: 20),),
                                ElevatedButton(

                                    onPressed: (){
                                      Navigator.of(context).pop();
                                    }, child: Text("Close"))
                              ],
                            ),
                          ),
                        );
                      });
                    }
                ),
                ElevatedButton(
                    child: Text("AlertDialog - 1 "),
                    onPressed:(){
                      showDialog(context: context, builder: (BuildContext context){
                        return AlertDialog(
                          title: Text("Success",style: TextStyle(
                              fontWeight: FontWeight.bold
                          ),),
                          content: Text("Saved successfully"),
                        );
                      });
                    }
                ),
                ElevatedButton(
                    child: Text("AlertDialog - 2 "),
                    onPressed:(){
                      showDialog(context: context, builder: (BuildContext context){
                        return AlertDialog(
                          title: Text("Success"),
                          titleTextStyle:
                          TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,fontSize: 20),
                          actionsOverflowButtonSpacing: 20,
                          actions: [
                            ElevatedButton(onPressed: (){
                              Navigator.of(context).pop();
                            }, child: Text("Back")),
                            ElevatedButton(onPressed: (){
                              Navigator.of(context).pop();
                            }, child: Text("Next")),
                          ],
                          content: Text("Saved successfully"),
                        );
                      });
                    }
                ),
                ElevatedButton(
                    child: Text("CupertinoAlertDialog-1"),
                    onPressed:(){
                      showDialog(context: context, builder: (BuildContext context){
                        return CupertinoAlertDialog(
                          title: Text("Success"),
                          actions: [
                            CupertinoDialogAction(onPressed: (){
                              Navigator.of(context).pop();
                            }, child: Text("Back")),
                            CupertinoDialogAction(onPressed: (){
                              Navigator.of(context).pop();
                            }, child: Text("Next")),
                          ],
                          content: Text("Saved successfully"),
                        );
                      });
                    }
                ),
                ElevatedButton(
                    child: Text("CupertinoAlertDialog-2"),
                    onPressed:(){
                      showDialog(context: context, builder: (BuildContext context){
                        return CupertinoAlertDialog(
                          title: Text("Success"),

                          actions: [
                            CupertinoDialogAction(onPressed: (){
                              Navigator.of(context).pop();
                            }, child: Text("Save")),
                            CupertinoDialogAction(onPressed: (){
                              Navigator.of(context).pop();
                            }, child: Text("Edit")),
                            CupertinoDialogAction(onPressed: (){
                              Navigator.of(context).pop();
                            }, child: Text("Cancle",style: TextStyle(
                                color: Colors.red

                            ),)),

                          ],
                          content: Text("Saved successfully"),
                        );
                      });
                    }
                ),
                ElevatedButton(
                    child: Text("Full Screen"),
                    onPressed:(){
                      showDialog(context: context, builder: (BuildContext context){
                        return Dialog.fullscreen(
                          child: Center(
                            child: Container(
                              height: 300,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  FlutterLogo(size: 100,),
                                  Text("This is a Fullscreen Dialog Box",style:TextStyle(fontSize: 20),),
                                  ElevatedButton(

                                      onPressed: (){
                                        Navigator.of(context).pop();
                                      }, child: Text("Close"))
                                ],
                              ),
                            ),
                          ),




                        );
                      });
                    }
                ),

              ],
            ),
          ),

        ),
      ),
    );
  }
}

