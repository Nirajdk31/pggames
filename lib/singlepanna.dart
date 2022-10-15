import 'package:flutter/material.dart';

class SinglePanna extends StatefulWidget {
  const SinglePanna({Key? key}) : super(key: key);

  @override
  State<SinglePanna> createState() => _SinglePannaState();
}

class _SinglePannaState extends State<SinglePanna> {

  _SinglePannaState(){
    _selectedVal = _gameTypeList[0];
  }

  final _gameTypeList = [
    '128', '137', '146', '236', '245', '290', '380', '470', '489', '560', '579', '678',
    '129', '138', '147', '156', '237', '246', '345', '390', '480', '570', '589', '679',
    '120', '139', '148', '157', '238', '247', '256', '346', '490', '580', '670', '689',
    '130', '149', '158', '167', '239', '248', '257', '347', '356', '590', '680', '789',
    '140', '159', '168', '230', '249', '258', '267', '348', '357', '456', '690', '780',
    '123', '150', '169', '178', '240', '259', '268', '349', '358', '367', '457', '790',
    '124', '160', '278', '179', '250', '269', '340', '359', '368', '458', '467', '890',
    '125', '134', '170', '189', '260', '279', '350', '369', '468', '378', '459', '567',
    '126', '135', '180', '234', '270', '289', '360', '379', '450', '469', '478', '568',
    '127', '136', '145', '190', '235', '280', '370', '389', '460', '479', '569', '578',
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
