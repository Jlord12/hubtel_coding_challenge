import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Expanded(
                child: Container(
                  height: 100,
                  width: 700,
                  decoration: const BoxDecoration(),
                  child: const Center(child: Text('History',style: TextStyle(fontSize: 15),)),
                ),
              ),
              Expanded(
                child: Container(
                  height: 100,
                  width:700,
                  decoration: const BoxDecoration(color: Colors.grey),
                  child: const Expanded(
                    child: Center(
                      child: Text(
                        style: TextStyle(fontSize: 15),
                        'Transaction summary',)),
                  ),
                ),
              ),
            ],
          )
        ),
        
        body:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10,),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
              
                decoration: InputDecoration(
                  filled: true,
                 prefixIcon: Icon(Icons.search),
                 hintText: 'search',
                  enabledBorder: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(),
                ),
                
              ),
            ),
           ElevatedButton(
            onPressed: (){}, 
            child: Text('May 24,2024'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                //color: Colors.grey,
                  borderRadius: BorderRadius.circular(12,),
                  border: Border(
                    right: BorderSide(width: 1),
                    left: BorderSide(width: 1),
                    top: BorderSide(width: 1),
                    bottom:BorderSide(
                      width: 1) ),
                  
                
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('Emmanuel Rockson'),
                         Container(
                          child: Text('successful'),
                          width: 80,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Colors.lightGreen,
                             borderRadius: BorderRadius.circular(12,),
                  border: Border(
                    right: BorderSide(width: 1),
                    left: BorderSide(width: 1),
                    top: BorderSide(width: 1),
                    bottom:BorderSide(
                      width: 1) ),
                          ),
                         )
                        ],
                      ),
                        Text('Kwabena Uncle rbo'),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text('0241234567',style: TextStyle(color: Colors.grey),),
                              Text('GHS 500',style: TextStyle(fontWeight: FontWeight.bold),),
                            ],
                          ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(
                  //color: Colors.grey,
                    borderRadius: BorderRadius.circular(12,),
                    border: Border(
                      right: BorderSide(width: 1),
                      left: BorderSide(width: 1),
                      top: BorderSide(width: 1),
                      bottom:BorderSide(
                        width: 1) ),
                    
                  
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text('Emmanuel Rockson'),
                           Container(
                            child: Text('successful'),
                            width: 80,
                            height: 30,
                            decoration: BoxDecoration(
                              color: Colors.lightGreen,
                               borderRadius: BorderRadius.circular(12,),
                    border: Border(
                      right: BorderSide(width: 1),
                      left: BorderSide(width: 1),
                      top: BorderSide(width: 1),
                      bottom:BorderSide(
                        width: 1) ),
                            ),
                           )
                          ],
                        ),
                          Text('Kwabena Uncle rbo'),
              
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text('0241234567',style: TextStyle(color: Colors.grey),),
                                Text('GHS 500',style: TextStyle(fontWeight: FontWeight.bold),),
                              ],
                            ),
                      ],
                    ),
                  ),
                ),
            ),
              
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'home',
              ),
               BottomNavigationBarItem(
              icon: Icon(Icons.history),
              label: 'history',
              ),
               BottomNavigationBarItem(
              icon: Icon(Icons.file_copy),
              label: 'home',
              ),
             
              
          ]
          ),
          floatingActionButton: FloatingActionButton(
            shape: RoundedRectangleBorder(),
            child: Text('SEND NOW'),
            onPressed: (){}),
      ),
    );
  }
}