import 'package:flutter/material.dart';

import 'dashboard.dart';

void main(){
  runApp(MaterialApp(
    home: Pichai(),
  ));
}

class Pichai extends StatelessWidget {
  const Pichai({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('People'),
      ),
      drawer: Drawer(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors:[Colors.red,
                    Colors.yellow,
                    Colors.orange] )
          ),
          child: ListView(
            children: [
              ListTile(
                leading: CircleAvatar(backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfIr03DAV7RK3IaW-qdhGJqqeY-V8oyPGyCg&usqp=CAU"),),
                title: Text('Sundar pichai'),
                subtitle: Text('C.E.O at alphabet Inc.'),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.dashboard),
                title: Text('Dashboard'),
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Dashboard()));
                },
              ),
              ListTile(
                leading: Icon(Icons.leaderboard_sharp),
                title: Text('Leads'),
              ),
              ListTile(
                leading: Icon(Icons.people),
                title: Text('Clients'),
              ),
              ListTile(
                leading: Icon(Icons.rocket_launch),
                title: Text('Projects'),
              ),
              ListTile(
                leading: Icon(Icons.subscriptions_sharp),
                title: Text('Subscriptions'),
              ),
              ListTile(
                leading: Icon(Icons.waving_hand),
                title: Text('Patients'),
              ),
              ListTile(
                leading: Icon(Icons.payments_sharp),
                title: Text('Payments'),
              ),
              ListTile(
                leading: Icon(Icons.account_box),
                title: Text('Users'),
              ),
              ListTile(
                leading: Icon(Icons.library_books),
                title: Text('Library'),
              ),
              SizedBox(height: 100,),
              Container(
                height: 30,
                width: 200,
                decoration: BoxDecoration(color: Colors.redAccent,
                    borderRadius: BorderRadius.circular(45)
                ),
                child: Center(
                  child: Text('Log Out'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}