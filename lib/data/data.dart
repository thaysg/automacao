import 'package:flutter/material.dart';


class SliderModel{

  String imageAssetPath;
  String title;
  String desc;

  SliderModel({this.imageAssetPath,this.title,this.desc});

  void setImageAssetPath(String getImageAssetPath){
    imageAssetPath = getImageAssetPath;
  }

  void setTitle(String getTitle){
    title = getTitle;
  }

  void setDesc(String getDesc){
    desc = getDesc;
  }

  String getImageAssetPath(){
    return imageAssetPath;
  }

  String getTitle(){
    return title;
  }

  String getDesc(){
    return desc;
  }

}


List<SliderModel> getSlides(){

  List<SliderModel> slides = new List<SliderModel>();
  SliderModel sliderModel = new SliderModel();

  //1
  sliderModel.setDesc("Descubra o poder da Automação Residencial");
  sliderModel.setTitle("Descubra");
  sliderModel.setImageAssetPath("images/iot.png");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  //2
  sliderModel.setDesc("A tecnologia na palma de sua mão");
  sliderModel.setTitle("Tecnologia");
  sliderModel.setImageAssetPath("images/technology2.jpg");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  //3
  sliderModel.setDesc("Controle sua casa de qualquer lugar.");
  sliderModel.setTitle("Controle");
  sliderModel.setImageAssetPath("images/fundo.png");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  return slides;
}