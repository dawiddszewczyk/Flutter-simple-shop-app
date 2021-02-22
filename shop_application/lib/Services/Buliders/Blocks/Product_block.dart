import 'package:flutter/material.dart';
import 'package:shop_application/Services/Global_class/product.dart';
import 'package:shop_application/Services/Convert_Mechanic/hex_convert.dart';
class ProductBlock extends StatelessWidget {
  final product Produkt;
  final Function press;
  ProductBlock({ Key key, this.Produkt,this.press,}): super(key: key);


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 5.0,bottom: 5.0),
              child: Container(
                padding: EdgeInsets.all(20.0),
                // For  demo we use fixed height  and width
                // Now we dont need them
                height: 180,
                width: 160,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child:Image.network('${Produkt.photo_url}',fit: BoxFit.cover,height: 180,
                  loadingBuilder:(BuildContext context, Widget child,ImageChunkEvent loadingProgress) {
                    if (loadingProgress == null) return child;
                    return Center(
                      child: CircularProgressIndicator(
                        backgroundColor: HexColor('#101010'),
                        valueColor: new AlwaysStoppedAnimation<Color>(HexColor('#cfb53b')),
                        value: loadingProgress.expectedTotalBytes != null ?
                        loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes
                            : null,
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0 / 4),
            child: Text(
              // products is out demo list
              Produkt.name,
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 20,fontFamily: 'Cormorant',fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ),
          Text(
            "${Produkt.price}",
            style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
          )
        ],
      ),
    );
  }
}
