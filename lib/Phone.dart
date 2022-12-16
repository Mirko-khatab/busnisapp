import 'package:flutter/physics.dart';

class Phone {
//iphone name list
  List iphone = [
    'Iphone 14',
    'Iphone 14 Pro',
    'Iphone 14 Pro Max',
  ];
//iphone price list
  List iphonePrice = [
    '1000',
    '2000',
    '3000',
  ];
//iphone image list
  List iphoneImage = [
    'iphone12.jpg',
    'iphone12pro.jpg',
    'iphone12promax.jpg',
  ];

//samsung name list
  List samsung = [
    'Samsung S21',
    'Samsung S21 Ultra',
    'Samsung S21 Plus',
  ];
//samsung price list
  List samsungPrice = [
    '1000',
    '2000',
    '3000',
  ];
//samsung image list
  List samsungImage = [
    'samsungs21.jpg',
    'samsungs21ultra.jpg',
    'samsungs21plus.jpg',
  ];
//huawei name list
  List huawei = [
    'Huawei P50',
    'Huawei P50 Pro',
    'Huawei P50 Pro Plus',
  ];
//huawei price list
  List huaweiPrice = [
    '1000',
    '2000',
    '3000',
  ];

//huawei image list
  List huaweiImage = [
    'huaweip50.jpg',
    'huaweip50pro.jpg',
    'huaweip50proplus.jpg',
  ];

//get all phone name to one list and return it
  List getAllPhoneName() {
    List allPhoneName = [];
    allPhoneName.addAll(iphone);
    allPhoneName.addAll(samsung);
    allPhoneName.addAll(huawei);
    return allPhoneName;
  }

  //get all phone price to one list and return it
  List getAllPhonePrice() {
    List allPhonePrice = [];
    allPhonePrice.addAll(iphonePrice);
    allPhonePrice.addAll(samsungPrice);
    allPhonePrice.addAll(huaweiPrice);
    return allPhonePrice;
  }

  //get all phone image to one list and return it
  List getAllPhoneImage() {
    List allPhoneImage = [];
    allPhoneImage.addAll(iphoneImage);
    allPhoneImage.addAll(samsungImage);
    allPhoneImage.addAll(huaweiImage);
    return allPhoneImage;
  }

  //get all phone name to one list and return it
  List getAllPhoneNameAndPrice() {
    List allPhoneNameAndPrice = [];
    allPhoneNameAndPrice.addAll(iphone);
    allPhoneNameAndPrice.addAll(iphonePrice);
    allPhoneNameAndPrice.addAll(samsung);
    allPhoneNameAndPrice.addAll(samsungPrice);
    allPhoneNameAndPrice.addAll(huawei);
    allPhoneNameAndPrice.addAll(huaweiPrice);
    return allPhoneNameAndPrice;
  }
}
