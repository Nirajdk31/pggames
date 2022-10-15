import 'package:flutter/material.dart';

class DoublePanna extends StatefulWidget {
  const DoublePanna({Key? key}) : super(key: key);

  @override
  State<DoublePanna> createState() => _DoublePannaState();
}

class _DoublePannaState extends State<DoublePanna> {

  _DoublePannaState(){
    _selectedVal = _gameTypeList[0];
  }

  final _gameTypeList = [
    '100', '119', '155', '227', '335', '344', '399', '588', '669',
    '110', '200', '228', '255', '366', '499', '660', '688', '778',
    '166', '229', '300', '337', '355', '445', '599', '779', '788',
    '112', '220', '266', '338', '400', '446', '455', '699', '770',
    '113', '122', '177', '339', '366', '447', '500', '799', '889',
    '600', '114', '277', '330', '448', '466', '556', '880', '899',
    '115', '133', '188', '223', '377', '449', '557', '566', '700',
    '116', '224', '233', '288', '440', '477', '558', '800', '990',
    '117', '144', '199', '225', '388', '559', '577', '667', '900',
    '118', '226', '244', '299', '334', '488', '550', '668', '677',
  ];
  String? _selectedVal = "";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black38,
          actions: const [
            Padding(
              padding: EdgeInsets.only(top: 20, right: 20),
              child: Text('3000'),
            ),
          ],
          title: const Text(
            "Kalyan",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.only(right: 10, left: 10, top: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Select number', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold), ),
              SizedBox(height: 15,),
              DropdownButtonFormField(
                value: _selectedVal,
                items: _gameTypeList.map(
                      (e) => DropdownMenuItem(child: Text(e), value: e),
                ).toList(),
                onChanged: (val) {
                  setState(() {
                    _selectedVal = val as String;
                  });
                },
                icon: Icon(Icons.arrow_drop_down_circle,color: Colors.black54,),
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 15,),
              GridView(
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 3.5,
                  crossAxisCount: 2,
                ),
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 5),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(label: Text("Enter Digit"),
                          border: OutlineInputBorder()),),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 5),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(

                          label: Text("Amount"),
                          border: OutlineInputBorder()),),
                  ),
                ],
              ),
              SizedBox(height: 15,),
              Center(
                child: SizedBox(
                  height: 45,
                  width: 100,
                  child: ElevatedButton(
                    onPressed: (){},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black38,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                    ),
                    child: const Text('Add',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 60,),
              Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.black26,),
                padding: EdgeInsets.only(left: 10, top: 15, right: 10, bottom: 10),
                height: 150,
                width: 350,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Digit', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                        Text('Amount', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                        Text('Delete', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                        //Icon(Icons.delete, color: Colors.white,),
                      ],
                    ),
                    SizedBox(height: 40,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('02', style: TextStyle(color: Colors.white, fontSize: 20, ),),
                        Text('500', style: TextStyle(color: Colors.white, fontSize: 20, ),),
                        IconButton(
                          onPressed: () {},
                          color: Colors.white,
                          icon: Icon(Icons.delete),
                        ),

                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
