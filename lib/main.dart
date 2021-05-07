import 'package:bridge/features/SignUP/provider/signupProvider.dart';
import 'package:bridge/features/SignUP/screen/Registration.dart';
import 'package:bridge/features/classcode/Screen/ClassCode.dart';
import 'package:bridge/features/dashboard/Screen/Dashboard.dart';
import 'package:bridge/features/subjectprofile/Screen/SubjectProfile.dart';
import 'package:bridge/features/timetable/Screen/Timetable.dart';
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
          routes: {
            '/login': (context) => Login(),
            '/registration': (context) => Registration(),
            '/welcome': (context) => Welcome(),
            '/classCode': (context) => ClassCode(),
            '/dashboard': (context) => Dashboard(),
            '/timetable': (context) => Timetable(),
            '/subjectProfile': (context) => SubjectProfile(),
         //   '/studentProfile': (context) => Timetable(),
         //   '/attendence': (context) =>SocialMedia(),
         //   '/result': (context) =>SocialMedia(),
         //   '/calender': (context) =>SocialMedia(),
         //   '/announcement': (context) =>SocialMedia(),

          },
          home: Authenticate(),

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


