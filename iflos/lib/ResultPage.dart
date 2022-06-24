import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:untitled1/plant_data.dart';
import 'package:material_color_gen/material_color_gen.dart';

class ResultPage extends StatefulWidget {

  const ResultPage({ Key? key,required File image
    ,required List output
    ,})
: _image = image,
_output = output,
super(key: key);

final File _image;
final List _output;

  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child:
           Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //üst Ekran Resmi
              GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child: SizedBox(
                    child: Image.asset("resimler/iFlover01.png")

                ),
              ),
                    //Kullanıcının seçtiği resmin ekrana yerleştirilmesi
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0,right: 10.0,left: 10.0,top: 7.0),
                      child: SizedBox(
                      child: Image.file(widget._image)
                      ),
                    ),
          //Bitki Adı etiketi
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0,right: 8.0,bottom:20.0),
                child: SizedBox(
                    width:385,
                    child: Image.asset("resimler/bitkiAd.png")

                ),
              ),

            ],
          ),
            //Yapay Zekadan Çıkan sonucun yazdırılması
             Container(
                padding: EdgeInsets.only(bottom:22),
                child: Text(
                  '${plantData[widget._output[0]["index"]].bitkiAdi}',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFFF454955).toMaterialColor(),
                      fontSize: 16,
                      fontFamily: "Helvetica"),
                ),
              ),
            //idel sıcaklık etiketi
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0,right: 8.0,bottom:20.0),
                    child: SizedBox(
                        width:385,
                        child: Image.asset("resimler/ideal.png")

                    ),
                  ),
                ],
              ),
              //Yapay Zekadan Çıkan idel sıcaklık yazısı
              Container(
                padding: EdgeInsets.only(bottom:22),
                child: Text(
                  '${plantData[widget._output[0]["index"]].idealTemp}',
                  style: TextStyle(
                      color: Color(0xFFFF454955).toMaterialColor(),
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      fontFamily: "Helvetica"),
                ),
              ),
              //Gunes Işığı etiketi
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0,right: 8.0,bottom:20.0),
                    child: SizedBox(
                        width:385,
                        child: Image.asset("resimler/gunesIsik.png")

                    ),
                  ),
                ],
              ),
              //Yapay Zekadan Çıkan gunes ışığı yazısı
              Container(
                padding: EdgeInsets.only(bottom:22),
                child: Text(
                  '${plantData[widget._output[0]["index"]].gunesIsigi}',
                  style: TextStyle(
                      color: Color(0xFFFF454955).toMaterialColor(),
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      fontFamily: "Helvetica"),
                ),
              ),
              //sulama etiketi
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0,right: 8.0,bottom:20.0),
                    child: SizedBox(
                        width:385,
                        child: Image.asset("resimler/sulamaM.png")

                    ),
                  ),
                ],
              ),
              //Yapay Zekadan Çıkan sulama yazısı
              Container(
                padding: EdgeInsets.only(bottom:22),
                child: Text(
                  '${plantData[widget._output[0]["index"]].sulama}',
                  style: TextStyle(
                      color: Color(0xFFFF454955).toMaterialColor(),
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      fontFamily: "Helvetica"),
                ),
              ),
              //toprak turu etiketi
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0,right: 8.0,bottom:20.0),
                    child: SizedBox(
                        width:385,
                        child: Image.asset("resimler/toprak.png")

                    ),
                  ),
                ],
              ),
              //Yapay Zekadan Çıkan toprak turu yazısı
              Container(
                padding: EdgeInsets.only(bottom:22),
                child: Text(
                  '${plantData[widget._output[0]["index"]].toprakTuru}',
                  style: TextStyle(
                      color: Color(0xFFFF454955).toMaterialColor(),
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      fontFamily: "Helvetica"),
                ),
              ),
              //olgun boyutu etiketi
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0,right: 8.0,bottom:20.0),
                    child: SizedBox(
                        width:385,
                        child: Image.asset("resimler/olgun.png")

                    ),
                  ),
                ],
              ),
              //Yapay Zekadan Çıkan olgun boyutu yazısı
              Container(
                padding: EdgeInsets.only(bottom:22),
                child: Text(
                  '${plantData[widget._output[0]["index"]].olgunBoyutu}',
                  style: TextStyle(
                      color: Color(0xFFFF454955).toMaterialColor(),
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      fontFamily: "Helvetica"),
                ),
              ),
              //çiçek açma zamanı etiketi
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0,right: 8.0,bottom:20.0),
                    child: SizedBox(
                        width:385,
                        child: Image.asset("resimler/cicek.png")

                    ),
                  ),
                ],
              ),
              //  //Yapay Zekadan Çıkan çiçek açma zamanı yazısı
              Container(
                padding: EdgeInsets.only(bottom:22),
                child: Text(
                  '${plantData[widget._output[0]["index"]].mahsulZamani}',
                  style: TextStyle(
                      color: Color(0xFFFF454955).toMaterialColor(),
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      fontFamily: "Helvetica"),
                ),
              ),

              Row(
                children: [
                  GestureDetector(
                   onTap: (){
                     showDialog(
                         context: context,
                         builder: (BuildContext context){
                           return AlertDialog(
                             backgroundColor: Color(0xFFFF3F7D20).toMaterialColor(),
                             content: Text('${plantData[widget._output[0]["index"]].yetistirmeYontemi}',
                               style: TextStyle(
                                   color: Colors.white,
                                   fontWeight: FontWeight.bold,
                                   fontSize: 16,
                                   fontFamily: "Helvetica"),
                             ),
                             actions: [
                               ElevatedButton(
                               onPressed:(){
                                 Navigator.pop(context);
                           },
                                   child:
                                   Text("Tamam",style: TextStyle(
                                       color: Color(0xFFFF3F7D20).toMaterialColor(),
                                       fontWeight: FontWeight.bold,
                                       fontSize: 16,
                                       fontFamily: "Helvetica"),

                                   ),
                                 style:ElevatedButton.styleFrom(
                                   primary: Colors.white,
                                 ),
                               )
                             ],
                           );
                         }
                     );
                   },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0,right: 8.0,bottom: 15.0),
                      child: SizedBox(
                          width:385,
                          child: Image.asset("resimler/yontem.png")

                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
    );
  }

}

