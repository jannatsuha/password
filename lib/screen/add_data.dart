import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:password/helper/custom_button.dart';
import 'package:password/helper/custom_text_field.dart';
import 'package:password/model/data_model.dart';
class AddData extends StatefulWidget {
  const AddData({Key? key}) : super(key: key);

  @override
  _AddDataState createState() => _AddDataState();
}
int count=0;
TextEditingController _idAddController=TextEditingController();
TextEditingController _passAddController=TextEditingController();
class _AddDataState extends State<AddData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextField(
                controller: _idAddController,
                labelText: "ID",
                hintText: "Enter ID/Email",
                icon: Icons.account_circle_sharp,
                obsecureValue: false
            ),
            SizedBox(
              height: 20,
            ),
            CustomTextField(
                controller: _passAddController,
                labelText: "PASSWORD",
                hintText: "Enter Password",
                icon: Icons.vpn_key,
                obsecureValue: false
            ),
            SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: (){
                saveDetailsData();
              },
              child: CustomButton(
                height: 50,
                width: 100,
                buttonClr: Colors.teal,
                buttonText: "SAVE DATA",
              ),
            ),
          ],
        ),
      ),
    );
  }
  void saveDetailsData () async{
    count++;
    FirebaseFirestore firestore=
        FirebaseFirestore.instance;
    DataModel dataModel=DataModel();

    dataModel.id=_idAddController.text;
    String tempData=_passAddController.text+"asdfg";
    dataModel.password=tempData;

    await firestore.collection("data")
        .doc(count.toString())
        .set(dataModel.toMap());
    Fluttertoast.showToast(msg:
    "Data saved successfully!");
  }
}
