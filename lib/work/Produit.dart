import 'package:flutter/material.dart';
import '../work/Detail_Prod.dart';

class Products extends StatefulWidget {
  const Products({Key? key}) : super(key: key);

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  @override
  var product_list = [
    {
      "name": "Appartement",
      "picture": "assets/Appartement/appart-1.jpeg",
      "old_price": 180,
      "price": 85,
      "details": "l'appartement se trouve dans la commune de Ngaliema,"
          " Quartier mont-Fleuri , contient trois chambres, cuisse, salon plus balcon ",
    },
    {
      "name": "Maison",
      "picture": "assets/Maison/home-1.jpeg",
      "old_price": 180,
      "price": 85,
      "details": "l'appartement se trouve dans la commune de Ngaliema,"
          " Quartier mont-Fleuri , contient trois chambres, cuisse, salon plus balcon ",
    },
    {
      "name": "Appartement",
      "picture": "assets/Appartement/appart-6.jpeg",
      "old_price": 180,
      "price": 85,
      "details": "l'appartement se trouve dans la commune de Ngaliema,"
          " Quartier mont-Fleuri , contient trois chambres, cuisse, salon plus balcon ",
    },
    {
      "name": "Villa",
      "picture": "assets/Villa/villa-1.jpeg",
      "old_price": 190,
      "price": 90,
      "details": "l'appartement se trouve dans la commune de Ngaliema,"
          " Quartier mont-Fleuri , contient trois chambres, cuisse, salon plus balcon ",
    },
    {
      "name": "Terrain",
      "picture": "assets/Terrain/terrain-1.jpeg",
      "old_price": 180,
      "price": 85,
      "details": "l'appartement se trouve dans la commune de Ngaliema,"
          " Quartier mont-Fleuri , contient trois chambres, cuisse, salon plus balcon ",
    },
    {
      "name": "Terrain",
      "picture": "assets/Terrain/terrain-2.jpeg",
      "old_price": 1800,
      "price": 850,
      "details": "l'appartement se trouve dans la commune de Ngaliema "
          "Quartier mama yemo contient quatre chambres, cuisse, un grand salon ",
    }, {
      "name": "Terrain",
      "picture": "assets/Terrain/terrain-2.jpeg",
      "old_price": 1800,
      "price": 850,
      "details": "l'appartement se trouve dans la commune de Ngaliema "
          "Quartier mama yemo contient quatre chambres, cuisse, un grand salon ",
    }, {
      "name": "Terrain",
      "picture": "assets/Terrain/terrain-2.jpeg",
      "old_price": 1800,
      "price": 850,
      "details": "l'appartement se trouve dans la commune de Ngaliema "
          "Quartier mama yemo contient quatre chambres, cuisse, un grand salon ",
    }, {
      "name": "Terrain",
      "picture": "assets/Terrain/terrain-2.jpeg",
      "old_price": 1800,
      "price": 850,
      "details": "l'appartement se trouve dans la commune de Ngaliema "
          "Quartier mama yemo contient quatre chambres, cuisse, un grand salon ",
    },
    {
      "name": "Terrain",
      "picture": "assets/Terrain/terrain-2.jpeg",
      "old_price": 1800,
      "price": 850,
      "details": "l'appartement se trouve dans la commune de Ngaliema "
          "Quartier mama yemo contient quatre chambres, cuisse, un grand salon ",
    },
  ];

  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: product_list.length,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return Single_Prod(
          prod_name: product_list[index]['name'],
          prod_picture: product_list[index]['picture'],
          prod_old_price: product_list[index]['old_price'],
          prod_price: product_list[index]['price'],
          prod_details: product_list[index]['details'],
        );
      },
    );
  }
}

class Single_Prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;
  final prod_details;

  Single_Prod(
      {this.prod_name,
      this.prod_picture,
      this.prod_price,
      this.prod_old_price,
      this.prod_details});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: prod_name,
        child: Material(
          child: InkWell(
            onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                builder: (context) => detail(
                      //Ici nous avons fait passer les valeurs de produits dans la classe Detail_Prod
                      prod_detail_name: prod_name,
                      prod_detail_old_price: prod_old_price,
                      prod_detail_picture: prod_picture,
                      prod_detail_price: prod_price,
                      pro_details: prod_details,
                    ))),
            child: GridTile(
              footer: Container(
                color: Colors.white70,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        prod_name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                    Text(
                      "\$$prod_price",
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              child: Image.asset(prod_picture,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
