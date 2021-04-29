import 'package:bridge/features/SignUP/provider/signupProvider.dart';
import 'package:bridge/features/SignUP/screen/Registration.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'features/Welcome/Screen/welcome.dart';
import 'features/login/screen/Login.dart';
import 'package:firebase_core/firebase_core.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
   Provider.debugCheckInvalidValueType = null;

  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    
    return MultiProvider(
      providers: [
        Provider<Auth>(
          create: (_)=>Auth(FirebaseAuth.instance),
        ),
        StreamProvider(
          create: (context) => context.read<Auth>().authState,
        )
      ],
      child: MaterialApp(

        theme: ThemeData(
          primarySwatch: Colors.blue,

          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
         home:Authenticate()
        // home:Registration()
        
      ),
    );
  }
}

class Authenticate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    final firebaseUser = context.watch<User>();
    
    if (firebaseUser == null) {
   
      return Registration();
    }
    
    return Welcome();
  }
}


