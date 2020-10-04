import 'dart:convert';
import 'package:my_login/models/Objects.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeForm extends StatefulWidget {
  final String salesOwner;
  final String department;
  HomeForm({Key key, this.salesOwner, this.department}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _HomeFormState();
}

class _HomeFormState extends State<HomeForm> {
  List data;
  String salesOwner = '';
  String department = '';
  @override
  Widget build(BuildContext context) {
    salesOwner = widget.salesOwner;
    department = widget.department;
    Department objectDepartment = Department.fromJson(json.decode(department));
    SalesOwner objectSalesOwner = SalesOwner.fromJson(json.decode(salesOwner));
    print(salesOwner);
    print(department);

    List<SalesOwner> salesOwnerList = List<SalesOwner>();
    salesOwnerList.add(objectSalesOwner);
    List<Department> departmentList = List<Department>();
    departmentList.add(objectDepartment);
    print(salesOwnerList);
    print(salesOwnerList.length);

      return Scaffold( 
         appBar: AppBar(title: Text("Details")), 
         body: ListView(
            shrinkWrap: true, 
            padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0), 
            children: <Widget>[ 
                Departments(
                  qty: objectDepartment.sCR.qty,
                  dept: objectDepartment.sCR.dept,
                  value: objectDepartment.sCR.value,
               ),
               Departments(
                  qty: objectDepartment.fAB.qty,
                  dept: objectDepartment.fAB.dept,
                  value: objectDepartment.fAB.value,
               ),
               Dept(
                  sales: objectDepartment.iLL.sales, 
                  value: objectDepartment.iLL.value, 
               ),
               Departments(
                  qty: objectDepartment.oFF.qty,
                  dept: objectDepartment.oFF.dept,
                  value: objectDepartment.oFF.value,
               ),
               Departments(
                  qty: objectDepartment.tHE.qty,
                  dept: objectDepartment.tHE.dept,
                  value: objectDepartment.tHE.value,
               ),
               Dept(
                  sales: objectDepartment.cS.sales, 
                  value: objectDepartment.cS.value, 
               ),
               Dept(
                  sales: objectDepartment.sD.sales, 
                  value: objectDepartment.sD.value, 
               ),
               Departments(
                  qty: objectDepartment.rEF.qty,
                  dept: objectDepartment.rEF.dept,
                  value: objectDepartment.rEF.value,
               ),
               Departments(
                  qty: objectDepartment.mA.qty,
                  dept: objectDepartment.mA.dept,
                  value: objectDepartment.mA.value,
               ),
               Departments(
                  qty: objectDepartment.hET.qty,
                  dept: objectDepartment.hET.dept,
                  value: objectDepartment.hET.value,
               ),
               Dept(
                  sales: objectDepartment.mD.sales, 
                  value: objectDepartment.mD.value, 
               ),
               Dept(
                 sales: objectDepartment.sL.sales, 
                 value: objectDepartment.sL.value, 
               ),
               Departments(
                  qty: objectDepartment.eMB.qty,
                  dept: objectDepartment.eMB.dept,
                  value: objectDepartment.eMB.value,
               ),
               Dept(
                  sales: objectDepartment.dA.sales, 
                  value: objectDepartment.dA.value, 
               ),
               Dept(
                  sales: objectDepartment.yW.sales, 
                  value: objectDepartment.yW.value, 
               ),
               Departments(
                  qty: objectDepartment.wOV.qty,
                  dept: objectDepartment.wOV.dept,
                  value: objectDepartment.wOV.value,
               ),
               Dept(
                  sales: objectDepartment.other.sales, 
                  value: objectDepartment.other.value, 
               ),  
               Product(
                  sales: objectSalesOwner.cS.sales, 
                  value: objectSalesOwner.cS.value,             
               ), 
               Product(    
                 sales: objectSalesOwner.sD.sales, 
                  value: objectSalesOwner.sD.value, 
               ), 
               Product(  
                  sales: objectSalesOwner.mD.sales, 
                  value: objectSalesOwner.mD.value, 
               ), 
               Product( 
                  sales: objectSalesOwner.iLL.sales, 
                  value: objectSalesOwner.iLL.value, 
               ), 
               Product( 
                  sales: objectSalesOwner.sL.sales, 
                  value: objectSalesOwner.sL.value, 
               ), 
               Product(
                  sales: objectSalesOwner.dA.sales, 
                  value: objectSalesOwner.dA.value, 
               ), 
               Product(
                  sales: objectSalesOwner.yW.sales, 
                  value: objectSalesOwner.yW.value, 
               ),
               Product(
                  sales: objectSalesOwner.other.sales, 
                  value: objectSalesOwner.other.value, 
               )
            ],
         )
      );   
  }
}

class Product extends StatelessWidget {
   Product({Key key, this.value, this.sales }) :
      super(key: key); 
   final double value; 
   final String sales; 
 
   Widget build(BuildContext context) {
      return Container(
         padding: EdgeInsets.all(2), 
         height: 120, 
         child: Card(
            child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
               children: <Widget>[ 
                  Expanded( 
                     child: Container( 
                        padding: EdgeInsets.all(5), 
                        child: Column(    
                           mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
                           children: <Widget>[ 
                              Text(
                                 "SalesOwner", style: TextStyle(
                                    fontWeight: FontWeight.bold
                                 )
                              ),
                              Text( "Sales: " +this.sales), Text(
                                 "Price: " + this.value.toStringAsFixed(2)
                              ), 
                           ], 
                        )
                     )
                  )
               ]
            )
         )
      );
   }
}

class Departments extends StatelessWidget{
   Departments({Key key,this.qty, this.dept, this.value}) :
      super(key: key); 
   final int qty; 
   final String dept; 
   final double value;
 
   Widget build(BuildContext context) {
      return Container(
         padding: EdgeInsets.all(2), 
         height: 120, 
         child: Card(
            child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
               children: <Widget>[ 
                  Expanded( 
                     child: Container( 
                        padding: EdgeInsets.all(5), 
                        child: Column(    
                           mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
                           children: <Widget>[ 
                              Text(
                                 "Department", style: TextStyle(
                                    fontWeight: FontWeight.bold
                                 )
                              ),
                              Text( "quantity: " +this.qty.toString()), Text(
                                 "dept: " + this.dept
                              ), Text("value:"+this.value.toStringAsFixed(2)),
                           ], 
                        )
                     )
                  )
               ]
            )
         )
      );
   }
}

class Dept extends StatelessWidget{
   Dept({Key key,this.value,this.sales}) :
      super(key: key);  
   final String sales; 
   final double value;
 
   Widget build(BuildContext context) {
      return Container(
         padding: EdgeInsets.all(2), 
         height: 120, 
         child: Card(
            child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
               children: <Widget>[ 
                  Expanded( 
                     child: Container( 
                        padding: EdgeInsets.all(5), 
                        child: Column(    
                           mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
                           children: <Widget>[ 
                              Text(
                                 "Department", style: TextStyle(
                                    fontWeight: FontWeight.bold
                                 )
                              ),
                              Text( "sales: " +this.sales), 
                               Text("value:"+this.value.toStringAsFixed(2)),
                           ], 
                        )
                     )
                  )
               ]
            )
         )
      );
   }
}
