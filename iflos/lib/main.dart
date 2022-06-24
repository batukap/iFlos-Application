import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tflite/tflite.dart';
import 'package:image_picker/image_picker.dart';
import 'package:untitled1/IsimArama.dart';
import 'package:untitled1/ResultPage.dart';


void main() => runApp(MaterialApp(
  home: MyApp(),
  debugShowCheckedModeBanner: false,

));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late List _outputs;
  late File _image;
  final _picker = ImagePicker();
  double get height => MediaQuery.of(context).size.height;
  

  @override
  void initState() {
    super.initState();

    loadModel().then((value) {
      setState(()  {

      });
    });

  }


  @override
  Widget build(BuildContext context) {
    var ekranBilgisi=MediaQuery.of(context);
    final double ekranYuksekligi=ekranBilgisi.size.height;
    final double ekranGenisligi=ekranBilgisi.size.width;

    return Scaffold(
      body:
      SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                //width: ekranGenisligi,
                //height: ekranYuksekligi/5,
                  child: Image.asset("resimler/iFlover01.png")
              ),

              SizedBox(
                width: 3*ekranGenisligi/4,
                height: 1.3*ekranYuksekligi/3,
                child:
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>IsimArama()));
                  },
                  child: Image.asset("resimler/iFlover03.png"),
                ),
              ),
              SizedBox(
                width: 3*ekranGenisligi/4,
                height: 1.3*ekranYuksekligi/3,

                child: GestureDetector(
                    onTap: (){
                      getImage();
                    },
                    child: Image.asset("resimler/iFlover2.png")
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future getImage() async {
    var pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    if (pickedFile == null) return null;
    setState(() {
      _image = File(pickedFile.path);
    });
    await classifyImage(_image);

  }
  Future classifyImage(File image) async {
    var output = await Tflite.runModelOnImage(
      path: image.path,
      numResults: 1,
      threshold: 0.2,
      imageMean: 127.5,
      imageStd: 127.5,
      asynch: true,
    );
    print(output);
      setState(() {
       Navigator.push(context, MaterialPageRoute(builder: (context) => ResultPage(image: _image, output: _outputs,)));
       _outputs = output!;

      });
    }

  Future loadModel() async {
    try {
      String? res = await Tflite.loadModel(
          model: "assets/FlowerModel.tflite",
          labels: "assets/labels.txt",
          numThreads: 1, // defaults to 1
          isAsset: true, // defaults to true, set to false to load resources outside assets
          useGpuDelegate: false
      );

      print(res);
    }
    on PlatformException {
      print('Failed to load model');
    }
  }

  @override
  void dispose() {
    Tflite.close();
    super.dispose();
  }
}