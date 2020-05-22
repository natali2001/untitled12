import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';


class GalleryPage extends StatelessWidget {
  final imageList = [
    'https://bipbap.ru/wp-content/uploads/2017/08/38clear-water-of-mountain-lake-virginia.jpg',
    'https://s.zagranitsa.com/images/articles/6729/870x486/53d189dfcd54fa9ecae756ddf5a7c2ee.jpg?1530714543',
    'https://upload.wikimedia.org/wikipedia/commons/b/b6/%D0%93%D1%80%D0%B0%D0%BC%D0%BF%D0%B8%D0%B0%D0%BD%D1%81%D0%BA%D0%B8%D0%B5_%D0%B3%D0%BE%D1%80%D1%8B.jpg',
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gallery'),
      ),

      body: PhotoViewGallery.builder(
        itemCount: imageList.length,
        builder: (context, index) {
          return PhotoViewGalleryPageOptions(
            imageProvider: NetworkImage(
              imageList[index],
            ),
            minScale: PhotoViewComputedScale.contained * 0.8,

            maxScale: PhotoViewComputedScale.covered * 2,
          );
        },
        scrollPhysics: BouncingScrollPhysics(),
        backgroundDecoration: BoxDecoration(
          color: Theme.of(context).canvasColor,
        ),
        loadingChild: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
