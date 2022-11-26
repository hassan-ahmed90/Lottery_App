import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp( MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  @override
  int x =5;
  Random random = new Random();
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        //backgroundColor: Colors.lightBlue,
        appBar: AppBar(
          title: Text('Lottery App',style: TextStyle(fontSize: 27),
          ),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                  child: Text('Lottery winning number is 5',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  )),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 250,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(.2),
                  borderRadius: BorderRadius.circular(12),
                ),
                child:Padding(
    padding: EdgeInsets.all(12),
    child: x== 5 ? Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(Icons.done,color: Colors.green,),
        SizedBox(height: 15,),
        Center(
          child:  Text('Congratulations you Win \nYour number is $x',style: TextStyle(
            fontSize: 18,

          ),),
        )

      ],
    ) : Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(Icons.error,color: Colors.red,),
        SizedBox(height: 15,),
        Center(
          child:  Text('You Lose ediot\nYour number is $x',style: TextStyle(
            fontSize: 18,

          ),),
        )

      ],
    ),
                )
              )],
              )
        ,
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.refresh),
          onPressed: (){
           x= random.nextInt(6);
            setState(() {
print(x);
            });
          },
        ),
      ),
    );
  }
}
