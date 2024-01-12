import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Profile_ui2(),
  ));
}
class Profile_ui2 extends StatelessWidget {
  const Profile_ui2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      drawer: Drawer(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 5.0),
                  child: Icon(Icons.arrow_back),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 250.0),
                  child: Icon(Icons.menu),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 35),
              child: CircleAvatar(radius: 60,
                backgroundImage: NetworkImage("data:image/jpeg;base64,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"),
              ),
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10,left: 50),
                  child: FaIcon(Icons.facebook,color: Colors.blue,size: 40,),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: FaIcon(FontAwesomeIcons.twitter, color: Colors.blue,size: 40,),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: FaIcon(FontAwesomeIcons.linkedin,color: Colors.blue,size: 40,),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: FaIcon(FontAwesomeIcons.github,size: 40,),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text('Robert Downey jr.',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text('@rdj3000'),
            ),
            Text('You know who i am',style: TextStyle(fontSize: 18),),
            SizedBox(height: 60,),

            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      height: 50,
                      width: 290,
                      decoration: BoxDecoration(color: Colors.grey,
                          borderRadius: BorderRadius.circular(45)
                      ),
                      child: ListTile(
                        leading: Icon(Icons.privacy_tip_outlined),
                        title: Text('Privacy'),
                        trailing: Icon(Icons.arrow_forward_ios_sharp),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Container(
                        height: 50,
                        width: 290,
                        decoration: BoxDecoration(color: Colors.grey,
                            borderRadius: BorderRadius.circular(45)
                        ),
                        child: ListTile(
                          leading: Icon(Icons.history),
                          title: Text('Purchase history'),
                          trailing: Icon(Icons.arrow_forward_ios_sharp),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Container(
                        height: 50,
                        width: 290,
                        decoration: BoxDecoration(color: Colors.grey,
                            borderRadius: BorderRadius.circular(45)
                        ),
                        child: ListTile(
                          leading: Icon(Icons.help),
                          title: Text('Help'),
                          trailing: Icon(Icons.arrow_forward_ios_sharp),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Container(
                        height: 50,
                        width: 290,
                        decoration: BoxDecoration(color: Colors.grey,
                            borderRadius: BorderRadius.circular(45)
                        ),
                        child: ListTile(
                          leading: Icon(Icons.settings),
                          title: Text('Settings'),
                          trailing: Icon(Icons.arrow_forward_ios_sharp),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Container(
                        height: 50,
                        width: 290,
                        decoration: BoxDecoration(color: Colors.grey,
                            borderRadius: BorderRadius.circular(45)
                        ),
                        child: ListTile(
                          leading: Icon(Icons.add_reaction_outlined),
                          title: Text('Invite friends'),
                          trailing: Icon(Icons.arrow_forward_ios_sharp),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:20.0),
                      child: Container(
                        height: 50,
                        width: 290,
                        decoration: BoxDecoration(color: Colors.grey,
                            borderRadius: BorderRadius.circular(45)
                        ),
                        child: ListTile(
                          leading: Icon(Icons.logout),
                          title: Text('Log out'),
                          trailing: Icon(Icons.arrow_forward_ios_sharp),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}