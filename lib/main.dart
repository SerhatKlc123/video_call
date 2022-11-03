import 'dart:math';
import 'package:flutter/material.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

void main()=>runApp(const MaterialApp(home: MyApp(),));

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text("RealTime Chat")),
    body:  Center(child: IconButton(icon:  Icon(Icons.add),onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>CallPage(callID: "DemoCall123"))
    ))));
  }
}

String userId = Random().nextInt(100000).toString();

class CallPage extends StatefulWidget {
  const CallPage({Key? key, required this.callID}) : super(key: key);
  final String callID;

  @override
  State<CallPage> createState() => _CallPageState();
}

class _CallPageState extends State<CallPage> {
  @override
  Widget build(BuildContext context) {
    return ZegoUIKitPrebuiltCall(appID: 1120761361, appSign: '00a893e89e7efcda7de3d425705c848433db5bfa18bdeae4975f1201576b84b1',
        callID: widget.callID,
        userID: userId,
        userName: "userName$userId",
        config: ZegoUIKitPrebuiltCallConfig.groupVoiceCall());
  }
}

