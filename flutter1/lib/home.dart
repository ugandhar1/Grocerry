

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> liste = [
         'images/Studio 11.png',
         'images/Beauty - Dummy 02.png',
         'images/Ratnadeep.png',
         'images/Nykaa.png',
         'images/biscuit.png',
         

  ];

  final List<String> data=[
    'Studio 11',
    'Beauty',
    'Ratnadeep Supermark',
    'Nykaa',
    'biscuit',
  ];
  final List<String> data2=[
    'Britannia treat Crossiant',
    'Ratnadeep Supermarket',
    'Ribbons ballons fruit market',
    'Nykaa',
    'biscuit',
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
         appBar: AppBar(
        toolbarHeight: 110, // Set this height
        flexibleSpace: Container(
          color: Color.fromARGB(255, 87, 57, 235),
          child: Column(children: <Widget>[
             Row(
            
              children: <Widget>[
              SizedBox(width: 15),
              Icon(Icons.arrow_back_rounded, color: Colors.white),
              SizedBox(width: 10),
              const Text("Upload Bills",
                  style: TextStyle(fontSize: 15, color: Colors.white)),
              SizedBox(width: 150),
              IconButton(
                tooltip:'2000',
                
                onPressed: (){}, icon:SizedBox(
                height: 25,
                width: 25,
                child: Image.asset('images/Coins.png',fit: BoxFit.cover,
                ),
              
                  ),
    
              )
            ]),
            SizedBox(height: 8),
            Container(
                height: 40,
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: TextField(
                 // textAlign: TextAlign.center,
                  //controller: search,
                  decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      filled: true,
                      fillColor: Colors.white,
                      prefixIcon: Icon(Icons.search, color: Colors.black),
                      suffix:Icon(Icons.cancel,color: Colors.black,),
                      border: const OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(10))),
                      hintStyle: new TextStyle(color: Colors.black38),
                      hintText: "Search Products"),
                )),
          ]),
        ),
      ),
    
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 200,
                        width: 400,
                        child: ListView.builder(
                          itemCount: liste.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              child: Column(
                                children: [
                                  CircleAvatar(
                                    radius:50,
                                    backgroundImage:AssetImage(liste[index]),
                                    child:Text('')),
                                    Text(data[index]),
                                ],
                              ),
                            ),
                          );
                        },),
                      ),
                    )
                  ],
                ),
                Container(
                decoration: const BoxDecoration(
                  
                 // color: Colors.blueGrey[300],
                  
                ),
                  
                  child: Text("Latest Deals"),
                ),
                Container(
                  child: SizedBox(
                    height:400,
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: data.length,
                      itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromARGB(255, 219, 217, 217)
                          ),
                          height: 120,
                          width: 50,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                    height: 65,
                                    width: 60,
                                    child: Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Image.asset(liste[index],fit: BoxFit.cover,),
                                    )),
                                  Text(data2[index]),
                                ],
                              ),

                               Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  SizedBox(
                                    height: 55,
                                    width: 100,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Expanded(
                                        child: Row(
                                          children: [
                                            Image.asset('images/Coins.png'),
                                            Text('150')
                                          ],
                                        ),
                                      ),
                                    )),
                                  const Text('limit:35',style: TextStyle( color: Colors.white,
                                  backgroundColor: Color.fromARGB(255, 11, 91, 156)),)
                                ],
                               )
                            ],
                          ),
                                        
                        ),
                      );
                    },),
                  ),
                )
              ],
            ),
          ),
        ),
    
      ),
    );
  }
}