import 'package:faskes_kb/faskes_detail.dart';
import 'package:faskes_kb/model/faskes.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'model/layanan.dart';

class FaskesList extends StatefulWidget{
  @override
  _FaskesList createState() => _FaskesList();
}

class _FaskesList extends State<FaskesList>{
  var _listOfFaskes=[];

  @override
  void initState() {
    super.initState();
    _listOfFaskes = listOfFaskes;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          Padding(
            padding: const EdgeInsets.only(top: 42,left: 16,right: 16),
            child: TextFormField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 16,right: 16,top: 8,bottom: 8),
                  fillColor: HexColor('#F0F0F2'),
                  hintText: "Cari Faskes KB",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                suffixIcon: Padding(
                  padding: const EdgeInsets.only(left: 16,right: 16,top: 8,bottom: 8),
                  child: Icon(Icons.search,color: HexColor("#5562EC"),size: 32),
                )

              ),
              onChanged: (v){

                setState(() {
                  _listOfFaskes=listOfFaskes.where((i) => i.name.toLowerCase().contains(v.toLowerCase())).toList();
                });
              },

            ),
          ),
          Expanded(
            flex: 1,
            child: ListView(
              children: _listOfFaskes.map((faskes){
                return FlatButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return FaskesDetail(faskes: faskes);
                      }));
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Row(

                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(faskes.img),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Column(

                              children: [
                            Align(
                            alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 16.0),
                                  child: Text(faskes.name,
                                    style: TextStyle(fontFamily: 'Nunito',fontSize: 18, fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.start,

                                  )
                          ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 16.0),
                                  child: Text(faskes.address,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(fontFamily: 'Nunito',fontSize: 12, fontWeight: FontWeight.normal),
                                      textAlign: TextAlign.start
                                  ),
                                ),
                              ],
                            ),
                          )

                        ],
                      ),
                    )
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }

  var listOfFaskes = [
    Faskes(
      name: "Puskesmas Tamansari",
      address:"Jalan Moh Ridwan No.5, Gelam, Kec. Candi, Kabupaten Sidoarjo, Jawa Timur",
      img:"images/faskes_1.png",
        imgDetail:"images/faskes_detail_1.png",
      distance:"1,8 km",
      queue:"10",
      services:[
        Layanan(
          name:"Pil KB",
          icon:"images/pills.png",
          cost:"50.000"
        ),
        Layanan(
            name:"Spiral",
            icon:"images/iud.png",
            cost:"150.000"
        ),
        Layanan(
            name:"Suntik KB",
            icon:"images/injection.png",
            cost:"75.000"
        )

      ]
    ),
    Faskes(
        name: "Puskesmas Pembantu Balong Gabus",
        address:"Jl. Kupang Putih, Balonggabus, Kec. Candi, Kabupaten Sidoarjo, Jawa Timur",
        img:"images/faskes_2.png",
        imgDetail:"images/faskes_detail_2.png",
        distance:"4,1 km",
        queue:"12",
        services:[
          Layanan(
              name:"Pil KB",
              icon:"images/pills.png",
              cost:"50.000"
          ),
          Layanan(
              name:"Suntik KB",
              icon:"images/injection.png",
              cost:"75.000"
          ),
          Layanan(
              name:"Implan",
              icon:"images/sterilization1.png",
              cost:"100.000"
          )

        ]
    ),
    Faskes(
        name: "Bidan Ny. Hj. Watiningsih Amd. Keb",
        address:"Jalan Moh Ridwan No.5, Gelam, Kec. Candi, Kabupaten Sidoarjo, Jawa Timur 61271",
        img:"images/faskes_3.png",
        imgDetail:"images/faskes_detail_3.png",
        distance:"4,1 km",
        queue:"21",
        services:[
          Layanan(
              name:"Pil KB",
              icon:"images/pills.png",
              cost:"50.000"
          ),
          Layanan(
              name:"Spiral",
              icon:"images/iud.png",
              cost:"150.000"
          )

        ]
    ),
    Faskes(
        name: "Maternity Hospital \"Buah Delima\"",
        address:"Jalan Moh Ridwan No.5, Gelam, Kec. Candi, Kabupaten Sidoarjo, Jawa Timur 61271",
        img:"images/faskes_4.png",
        imgDetail:"images/faskes_detail_4.png",
        distance:"4,1 km",
        queue:"21",
        services:[
          Layanan(
              name:"Pil KB",
              icon:"images/pills.png",
              cost:"50.000"
          ),
          Layanan(
              name:"Spiral",
              icon:"images/iud.png",
              cost:"150.000"
          ),
          Layanan(
              name:"Suntik KB",
              icon:"images/injection.png",
              cost:"75.000"
          ),
          Layanan(
              name:"Implan",
              icon:"images/sterilization1.png",
              cost:"100.000"
          )

        ]
    ),
    /////////////////////////////////////////////
    Faskes(
        name: "Puskesmas Sooko",
        address:"Jalan Brangkal, Kabupaten Mojokerto, Jawa Timur",
        img:"images/faskes_3.png",
        imgDetail: "images/faskes_detail_3.png",
        distance:"4,1 km",
        queue:"21",
        services:[
          Layanan(
              name:"Pil KB",
              icon:"images/pills.png",
              cost:"50.000"
          ),
          Layanan(
              name:"Spiral",
              icon:"images/iud.png",
              cost:"150.000"
          ),
          Layanan(
              name:"Suntik KB",
              icon:"images/injection.png",
              cost:"75.000"
          )

        ]
    ),

  ];
}