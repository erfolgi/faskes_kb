import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'model/faskes.dart';

class FaskesDetail extends StatelessWidget{
  final Faskes faskes;

  FaskesDetail({@required this.faskes});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.max,
          children: [
            Stack(
              children: [
                Image.asset(faskes.imgDetail, height: 275,fit: BoxFit.cover,),
                SafeArea(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 16, left: 16),
                          child: CircleAvatar(
                            radius: 20,
                            backgroundColor: Colors.white,
                            child: IconButton(
                                icon: Icon(Icons.arrow_back_rounded),
                                color: Colors.black,
                                onPressed: (){
                                  Navigator.pop(context);
                                })
                          ),
                        )
                      ],
                    )
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 225),
                  child: Container(
                    color: Colors.transparent,
                    child:Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: new BorderRadius.only(
                              topLeft: const Radius.circular(20.0),
                              topRight: const Radius.circular(20.0),
                            )
                        ),
                        child: Container(
                            width: MediaQuery.of(context).size.width,

                            child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child:
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Column(

                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            color: Colors.pinkAccent,
                                            borderRadius: BorderRadius.all(const Radius.circular(20.0),
                                            )
                                        ),
                                        padding: EdgeInsets.all(8.0),

                                        child: Text(faskes.distance,
                                          style: TextStyle(fontFamily: 'Nunito',fontSize: 12, fontWeight: FontWeight.bold, color: Colors.white),
                                          textAlign: TextAlign.start,


                                        ),
                                      ),
                                      Padding(padding: EdgeInsets.only(top: 8),
                                        child: Text(faskes.name,
                                          style: TextStyle(fontFamily: 'Nunito',fontSize: 24, fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.start,
                                        ),
                                      ),

                                      Padding(padding: EdgeInsets.only(top: 8),
                                        child: Text(faskes.address,
                                          style: TextStyle(fontFamily: 'Nunito',fontSize: 14, fontWeight: FontWeight.normal),
                                          textAlign: TextAlign.start,
                                        ),
                                      ),

                                      Padding(padding: EdgeInsets.only(top: 32),
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: HexColor('#F0F0F2'),
                                              borderRadius: BorderRadius.all(const Radius.circular(20.0),
                                              )
                                          ),
                                          padding: EdgeInsets.all(24.0),

                                          child: Row(
                                            children: [
                                              Image.asset("images/antri.png",width: 38,),
                                              SizedBox(width: 16,),
                                              Text("Hari ini ada "+faskes.queue+" Antrian",
                                                style: TextStyle(fontFamily: 'Nunito',fontSize: 14, fontWeight: FontWeight.bold),
                                                textAlign: TextAlign.start,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),

                                      Padding(padding: EdgeInsets.only(top: 40),
                                        child: Text("Layanan yang Tersedia",
                                          style: TextStyle(fontFamily: 'Nunito',fontSize: 14, fontWeight: FontWeight.bold,color: Colors.black45),
                                          textAlign: TextAlign.start,
                                        ),

                                      ),

                                      GridView.count(
                                          primary: false,
                                          shrinkWrap: true,
                                          // padding: const EdgeInsets.all(20),
                                          physics: NeverScrollableScrollPhysics(),
                                          crossAxisSpacing: 16,
                                          mainAxisSpacing: 32,
                                          crossAxisCount: 2,
                                          // childAspectRatio: 1.5,
                                          children:faskes.services.map((e){
                                            return Container(
                                              height: 50,
                                              width: 50,
                                              child: Card(
                                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),

                                                color: HexColor('#F0F0F2'),
                                                child: Padding(
                                                  padding: const EdgeInsets.all(16.0),
                                                  child: Column(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Image.asset(e.icon,width: 42),
                                                      Padding(
                                                        padding: const EdgeInsets.only(top:8.0,bottom: 8.0),
                                                        child: Text(e.name,
                                                          style: TextStyle(fontFamily: 'Nunito',fontSize: 14,
                                                            fontWeight: FontWeight.bold,
                                                            color: Colors.black,),
                                                        ),
                                                      ),
                                                      Text(e.cost,
                                                        style: TextStyle(fontFamily: 'Nunito',
                                                            fontSize: 18,
                                                            fontWeight: FontWeight.normal,
                                                          color: Colors.black,),)
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            );

                                          }).toList()
                                      ),
                                    ],
                                  ),
                                )

                            )
                        )
                    ),
                  )


                ),

              ],
            )
          ],
        ),
      ),
    );
  }

}