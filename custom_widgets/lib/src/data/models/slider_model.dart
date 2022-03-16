class SliderModel {
  String image = '';
  String title = '';
  String subtitle = '';

// images given
  SliderModel(
      {required this.image, required this.title, required this.subtitle});

// setter for image
  void setImage(String getImage) {
    image = getImage;
  }

  void setTitle(String getTitle) {
    title = getTitle;
  }

  void setSubtitle(String setSubtitle) {
    subtitle = setSubtitle;
  }

// getter for image
  String getImage() {
    return image;
  }

  String getTitle() {
    return title;
  }

  String getSubtitle() {
    return subtitle;
  }
}

List<SliderModel> getSlides() {
  List<SliderModel> slides = <SliderModel>[];
  //1
  SliderModel sliderModel1 = SliderModel(
      image: 'assets/boarding/1.png',
      title: 'Book an Appointment',
      subtitle: 'Teach your kids to be responsible about their health');
  //sliderModel.setImage("assets/boarding/1.png");
  slides.add(sliderModel1);
  //2
  SliderModel sliderModel2 = SliderModel(
      image: 'assets/boarding/2.png',
      title: 'Find your perfect doctor',
      subtitle: 'Teach your kids to be responsible about their health');
  slides.add(sliderModel2);
  //3
  SliderModel sliderModel3 = SliderModel(
      image: 'assets/boarding/3.png',
      title: 'Doctor Consultation',
      subtitle: 'Teach your kids to be responsible about their health');

  slides.add(sliderModel3);
  return slides;
}
