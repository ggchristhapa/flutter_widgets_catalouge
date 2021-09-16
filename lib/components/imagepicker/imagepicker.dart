import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lottie/lottie.dart';

// ignore: must_be_immutable
class MyCamera extends StatefulWidget {
  MyCamera({this.image, required this.getImage});
  var image;
  Function getImage;

  @override
  _MyCameraState createState() => _MyCameraState();
}

class _MyCameraState extends State<MyCamera> {
  var _image;

  openCamera() async {
    // ignore: invalid_use_of_visible_for_testing_member
    var image = await ImagePicker.platform
        .getImage(source: ImageSource.camera, imageQuality: 50);
    setState(() {
      _image = image;
    });
    setState(() {
      widget.image = _image;
    });
    await widget.getImage(_image);
  }

  openGallery() async {
    // ignore: invalid_use_of_visible_for_testing_member
    var image = await ImagePicker.platform
        .getImage(source: ImageSource.gallery, imageQuality: 50);

    setState(() {
      _image = image;
    });
    setState(() {
      widget.image = _image;
    });
    await widget.getImage(_image);
  }

  // ignore: unused_element
  void _showPicker(context) {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10.0), topRight: Radius.circular(10.0)),
        ),
        context: context,
        builder: (BuildContext bc) {
          return Wrap(
            children: <Widget>[
              chooseFromGallery(context),
              takePhotoFromCamera(context),
            ],
          );
        });
  }

  ListTile takePhotoFromCamera(context) {
    return new ListTile(
      leading: new Icon(Icons.photo_camera),
      title: new Text('Camera'),
      onTap: () {
        openCamera();
        Navigator.of(context).pop();
      },
    );
  }

  chooseFromGallery(context) {
    return new ListTile(
        leading: new Icon(Icons.photo_library),
        title: new Text('Photo Library'),
        onTap: () {
          openGallery();
          Navigator.of(context).pop();
        });
  }

  Padding imageContainer(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: _image != null
            ? previewImage(context)
            : Lottie.asset('assets/camera.json',
                height: MediaQuery.of(context).size.width * 0.4),
      ),
    );
  }

  previewImage(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          useSafeArea: true,
          builder: (BuildContext context) {
            return Container(
              color: Colors.black87,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.file(
                    File(_image.path),
                    fit: BoxFit.contain,
                    height: MediaQuery.of(context).size.height * 0.7,
                    width: MediaQuery.of(context).size.width * 0.8,
                  ),
                ],
              ),
            );
          },
        );
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Image.file(
          File(_image.path),
          width: MediaQuery.of(context).size.width * 0.8,
        ),
      ),
    );
  }

  Container deleteImage() {
    return Container(
        alignment: Alignment.center,
        child: CircleAvatar(
            radius: 35,
            backgroundColor: Colors.red,
            child: IconButton(
                onPressed: () {
                  setState(() {
                    _image = null;
                  });
                },
                icon: Icon(
                  Icons.delete,
                  color: Colors.white,
                ))));
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Text('Take Image'),
          ),
          GestureDetector(
            onTap: _image == null
                ? () {
                    _showPicker(context);
                  }
                : () {},
            child: imageContainer(context),
          ),
          _image == null ? Container() : deleteImage()
        ],
      ),
    );
  }
}
