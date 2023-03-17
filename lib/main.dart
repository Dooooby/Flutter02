import 'package:flutter/material.dart';

void main() { //아무것도 return하지마삼
  runApp(const MyApp()); //앱돌려라
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar : AppBar(
          title: Text('This is Title!!!'),
          leading: Icon(Icons.airplanemode_on),
          actions: [Icon(Icons.add_a_photo), Icon(Icons.add)]),
        body : Container(
          height: 250,
          child: Row(
            children: [
          Expanded(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(25.0),
                  child: Row(
                    children: [
                    Text('Home', style:TextStyle(fontWeight: FontWeight.bold),),
                    Spacer(),
                    Text('Message', style:TextStyle(fontWeight: FontWeight.bold),),
                      Spacer(),
                    Text('Location', style:TextStyle(fontWeight: FontWeight.bold),),
                      Spacer(),
                    Text('MyPage', style:TextStyle(fontWeight: FontWeight.bold),),
                    ],
                  ),
                ),
              Expanded(
                child: Row(
                  children: [
                    Image.asset('assets/itm01.jpg'),
                    Container(
                      width: 200,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children:[
                          Text('Nature', style: TextStyle(fontWeight: FontWeight.bold),),
                          Spacer(),
                          Text('Healing', style:TextStyle(fontWeight: FontWeight.w700),),
                          Spacer(),
                          Text('Freedom', style:TextStyle(fontWeight: FontWeight.w700),),
                          Spacer(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: const[
                              Icon(Icons.favorite),
                              Text('4')
                            ],
                          )
                        ]
                      )
                    )

                  ] //children
                )
                ),
            ],
          ),
          ),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Container(
            width: double.infinity,
            height: 80,
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
            decoration: BoxDecoration(
              image:DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/navbar01.jpg')
              ),
              borderRadius: BorderRadius.circular(50),
              border: Border.all(color:Colors.white)
            ),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.phone, color:Colors.white),
                  Icon(Icons.message, color:Colors.white),
                  Icon(Icons.contact_page, color:Colors.white),
                ],
            ),
          )
        ),
      )
    );
  }
}

