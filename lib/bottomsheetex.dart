import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


void main(){
  runApp(MaterialApp(home: Bottomex(),));
}



class Bottomex extends StatefulWidget {

  @override
  State<Bottomex> createState() => _BottomState();
}

class _BottomState extends State<Bottomex> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onLongPress: (){
            showSheet(context);
          },
            child: Image(image: NetworkImage("https://images.unsplash.com/photo-1691006962698-99b19d83ad4d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHx0b3BpYy1mZWVkfDN8Qm4tRGpyY0Jyd298fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=600&q=60"))),
      ),
    );
  }

  void showSheet(BuildContext context) {
    showModalBottomSheet(context: context, builder: (context){
      return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text("Share Via",style: TextStyle(fontSize: 20),),
          Divider(),
          ListTile(leading: FaIcon(FontAwesomeIcons.whatsapp,color: Colors.green,),trailing: Text("WhatsApp"),),
          ListTile(leading: FaIcon(FontAwesomeIcons.instagram,color: Colors.pink,),trailing: Text("Instagram"),),

        ],
      );
    });
  }
}
