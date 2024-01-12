

import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Profile_Stack(),));
}

class Profile_Stack extends StatelessWidget {
// const ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Center(
            child: Text('Profile')),
        actions: [

          PopupMenuButton(itemBuilder: (context){
            return[

            ];
          }),
        ],
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                  height: MediaQuery.of(context).size.height/2,
                  child: Image.asset("assets/images/ice  mount.jpg",
                    fit: BoxFit.cover,
                    width: 2500,
                    height: 170,)
              ),
            ],
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top:250),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                            color: Colors.white,
                            width: 4
                        )
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: CircleAvatar(
                          radius: 90,
                          backgroundColor: Colors.white,
                          //foregroundColor: Colors.white,
                          backgroundImage: AssetImage("assets/images/Beckham.jpg"),
                        ),
                      ),
                    ),
                  ),
                  Text('David Beckham',style: TextStyle(
                    fontSize: 20,fontWeight: FontWeight.bold,
                  ),),
                  SizedBox(height:8,),
                  Text('Model/Actress',style: TextStyle(
                      fontSize: 10,
                      color: Colors.blue
                  ),),
                ],
              ),
            ),
          ),
          Center(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only( top: 50),
                  child: Padding(
                    padding: const EdgeInsets.only(bottom:6),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 268),
                      child: Stack(
                        alignment: Alignment.center,
                        children:[ CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.red,
                          //foregroundColor: Colors.white,
                          // backgroundImage: AssetImage("assets/images/view2.jpeg"),
                        ),
                          Icon(Icons.message,
                            color: Colors.white,)
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),),
          Center(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only( top: 50),
                  child: Padding(
                    padding: const EdgeInsets.only(bottom:6),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 678),
                      child: Stack(
                        alignment: Alignment.center,
                        children:[ Row(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.blue,
                              //foregroundColor: Colors.white,

// backgroundImage: AssetImage("assets/images/view2.jpeg"),
                            ),
                          ],
                        ),
                          Icon(Icons.add,
                            color: Colors.white,)
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),),
        ],
      ),
    );

  }
}



