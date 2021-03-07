import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class GalleryScreen extends StatefulWidget {
  GalleryScreen({Key key}) : super(key: key);

  @override
  _GalleryScreenState createState() => _GalleryScreenState();
}

class _GalleryScreenState extends State<GalleryScreen> {
  var gallery = [
    "https://mymodernmet.com/wp/wp-content/uploads/2017/11/chimera-cat-quimera-5.jpg",
    "https://www.askideas.com/media/24/Pure-White-Siberian-Cat-Sitting.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Center(
          child: Swiper(
            autoplay: true,
        itemBuilder: (BuildContext context,int index){
          return Image.network(
            gallery[index],
            fit: BoxFit.contain,
            );
        },
        itemCount: gallery.length,
        pagination: new SwiperPagination(),
        control: new SwiperControl(),
      ),
        ),
      ),
    );
  }
}
