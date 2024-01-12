import 'package:flutter/material.dart';


import 'dummydata.dart';

void main (){
  runApp(MaterialApp(home: ProductMain(),));
}

class ProductMain extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Products"),
      ),
        body: GridView(
          padding: EdgeInsets.all(15),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          //
          // children: products.map((product) => ListTile(
          //   leading: Container(
          //       height: 100,
          //       decoration: BoxDecoration(
          //           image: DecorationImage(
          //               fit: BoxFit.contain,
          //               image: NetworkImage(product['Image'])))),
          //   title: Text(product['Name']),
          //   subtitle: Text('${product['Price']}\$'),
          //
          // ))
          //     .toList(),
          children:List.generate(products.length, (index) =>
              InkWell(
                onTap: ()=>Navigator.of(context).pushNamed("details",arguments:products[index]["id"]),
                child: Card(
            child:Column(
                children: [
                  Container(
                    height: 100,
                decoration:BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.contain,
                                image:NetworkImage(products[index]['Image'])))),
                    Text(products [index]["Name"]),
                     Text("${products[index]["Price"]}\$"),
                  ],
                  ),

            )
          ),
              ))
        );





      // body: ListView(
      //   padding: EdgeInsets.all(15),
      //   ///products list le oro map um one by one ayt productil  varum
      //   children: products.map((product) => ListTile(
      //     leading: Container(
      //         height:400,
      //             width:200,
      //         decoration:BoxDecoration(
      //           image: DecorationImage(
      //             fit: BoxFit.cover,
      //               image:NetworkImage(product['Image'])))),
      //     title: Text(product["Name"]),
      //     subtitle: Text("${product["Price"]}\$"),
      //   )).toList(),
      // ),

  }
}
