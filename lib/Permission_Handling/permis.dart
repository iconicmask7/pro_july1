import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
void main ()=> runApp(MaterialApp(home: Permiss(),));
class Permiss extends StatelessWidget {
  const Permiss({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Permission Handling"),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: requestCameraPermission,
                child: Text(
                  "Request camera permission",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                )),
            SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
                onPressed: requestMultiplePermissions,
                child: Text(
                  "Request Multiple Permissions",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                )),
            SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
                onPressed: requestPermissionWithOpenSettings,
                child: Text(
                  "Open Permission Settings",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ))
          ],
        ),
      ),
    );
  }
  void requestCameraPermission() async {
    /// status can either be: granted, denied, restricted or permanentlyDenied
    var status = await Permission.camera.status;
    if (status.isGranted) {
      print("Permission is granted");
    } else if (status.isDenied) {
      // We didn't ask for permission yet or the permission has been denied before but not permanently.
      if (await Permission.camera.request().isGranted) {
        // Either the permission was already granted before or the user just granted it.
        print("Permission was granted");
      }
    }

    // You can can also directly ask the permission about its status.
    // if (await Permission.location.isRestricted) {
    //   // The OS restricts access, for example because of parental controls.
    // }
  }

  /// Request multiple permissions at once.
  /// In this case location & storage
  void requestMultiplePermissions() async {
    Map<Permission, PermissionStatus> statuses = await [
      Permission.location,
      Permission.storage,
      Permission.phone,
    ].request();
    print("location permission: ${statuses[Permission.location]},"
        "storage permission: ${statuses[Permission.storage]}");
  }

  /// The user opted to never again see the permission request dialog for this
  /// app. The only way to change the permission's status now is to let the
  /// user manually enable it in the system settings.
  void requestPermissionWithOpenSettings() async {
    //if (await Permission.speech.isPermanentlyDenied) {
    openAppSettings();
    //}
  }
}