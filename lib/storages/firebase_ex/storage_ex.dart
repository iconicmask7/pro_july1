import 'dart:io';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:path/path.dart' as path ;
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyB2wIm6mGo86INpUZbX7o0QWwossgCqJq0",
          appId: "1:201951858372:android:45759f60e5d3aaf5370391",
          messagingSenderId: '',
          projectId: "flutter-july-fa557",
          storageBucket: "flutter-july-fa557.appspot.com"
      ));
  runApp(MaterialApp(home: Fire_Storage(),));
}


class Fire_Storage extends StatefulWidget {

  @override
  State<Fire_Storage> createState() => _Fire_StorageState();
}

class _Fire_StorageState extends State<Fire_Storage> {
  final FirebaseStorage storage = FirebaseStorage.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Storages"),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MaterialButton(onPressed: () => upload("Camera"),
                minWidth: 120,height: 40,
                color: Colors.green,
                child: Text("Camera"),),
              MaterialButton(onPressed: () => upload("Gallery"),
                minWidth: 120,height: 40,
                color: Colors.purple,
                child: Text("Gallery"),)
            ],

          ),
          Expanded(
              child: FutureBuilder(
                ///If firebase connection is success  then executes this function(load data)
                  future: loadData(), builder: (context,AsyncSnapshot<List<Map<String,dynamic>>> snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  return  ListView.builder(
                    itemCount: snapshot.data?.length ?? 0,
                      itemBuilder: (context,index) {
                      ///fetching each map from the list
                        final Map<String,dynamic> image =snapshot.data![index];
                        return Card(
                          child: ListTile(
                            leading: Image.network(image['imageurl']),
                            title: Text(image['uploaded_by']),
                            subtitle: Text(image['description']),
                            trailing: IconButton(
                                onPressed: () =>deleteImage(image["path"]),
                              icon: const Icon(Icons.delete),

                            ),
                          ),
                        );

                      });
                } else {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
              }))
        ],
      ),
    );
  }

Future<List<Map<String , dynamic>>>loadData() async{
    List<Map<String ,dynamic>>images=[];
    final ListResult result =await storage.ref().list();
    final List<Reference> allfiles = result.items;

    await Future.forEach(allfiles, (singlefiles) async{

      final String fileUrl = await singlefiles.getDownloadURL();
      final FullMetadata metadata = await singlefiles.getMetadata();

      images.add({
        'imageurl':fileUrl,
        'path':singlefiles.fullPath,
        'uploaded_by':metadata.customMetadata?["uploaded_by"] ??"No Data",
        'description' :metadata.customMetadata?['description'] ??"no Data",
      });
    });
    return images;
}



  Future <void>  upload(String imageinput) async{
    final picker = ImagePicker();
    XFile? pickedImage;
    try{
      pickedImage = await picker.pickImage(
          source: imageinput == "Camera"?
          ImageSource.camera: ImageSource.gallery);
      final  String filename  =path.basename(pickedImage!.path);
      File  imagefile = File(pickedImage.path);

      try {
        await storage.ref(filename).putFile(imagefile,
            SettableMetadata(
                customMetadata: {
                  'uploaded_by': 'someone!!!',
                  'description ': "some Description......"
                }
            ));
        setState(() {});
      }
      on FirebaseException catch (e){
        print(e);
      }


    } catch (e) {
      print(e);

    }
  }

  Future<void> deleteImage(String imagepath) async{
    await storage.ref(imagepath).delete();
    setState(() {

    });
  }
}