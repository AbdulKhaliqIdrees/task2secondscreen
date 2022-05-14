import 'package:flutter/material.dart';
import 'package:task2secondscreen/widgets/widgets_screen.dart';
import 'package:task2secondscreen/models/models_screen.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return const MaterialApp(
     debugShowCheckedModeBanner: false,
     title: 'SecondScreen',
     home: MyKhaliq(),
   );
  }

}

class MyKhaliq extends StatefulWidget{
  const MyKhaliq({Key? key}) : super(key: key);

  @override
  State<MyKhaliq> createState() => _MyKhaliqState();
}

class _MyKhaliqState extends State<MyKhaliq> {
  List<ModelScreen> listname=[
    ModelScreen("M.Idrees", "65Y","Image12"),
    ModelScreen("Naeem", "25Y","Image19"),
    ModelScreen("Ali", "22Y","Image16"),
    ModelScreen("Khaliq", "19Y","Image1"),
    ModelScreen("Qayyum", "18Y","Image18"),
    ModelScreen("Iqbal", "71Y","Image2"),
    
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SafeArea(
          child:  Container(
            height: 779.1,
            padding:EdgeInsets.all(30),
          color: Colors.black54,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.person,color: Colors.white,size: 30,),
                  Container(
                    padding: EdgeInsets.all(5),
                    width: 70,
                    height: 70,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: Image.asset("assets/images/Image1.jpg"),
                    ),
                    decoration: BoxDecoration(
                    color: Colors.black54,
                    borderRadius: BorderRadius.circular(18),
                    border: Border.all(
                      color: Colors.white,
                      width: 1,
                    ),
                      )
                      ),
                ],
              ),
             SizedBox(
               height: 160,
               child: Container(),
             ),
              SizedBox(
               height: 480,
               child:SingleChildScrollView(
              child:Container(
                 padding: EdgeInsets.all(25),
                 decoration: BoxDecoration(
                   color: Colors.black12,
                   borderRadius: BorderRadius.circular(25),
                 ),
                 child: Column(
                   children: [
                    Row(
                      children: [
                         Text("Sales Revenue",style: TextStyle(color: Colors.white,fontSize: 23),),
                      ],
                    ),
                    SizedBox(
                      height: 600,
                      child: ListView.builder(
                        itemCount: listname.length,
                        itemBuilder:((context,index) {
                          return WidgetScreen(
                            listname[index].text1,
                            listname[index].text2,
                            listname[index].image,
                            );
                        }),
                      ),
                    )
                   ],
                 ),
               ),
             ),
              ),   
        ],
      ),
    ),
          ),
        ]
      ),
    );
  }
}