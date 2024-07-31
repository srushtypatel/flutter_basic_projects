class unboardingcontent {
  String image;
  String title;
  String description;
  unboardingcontent(
      {required this.image, required this.title, required this.description});
}

List<unboardingcontent> contents = [
  unboardingcontent(
      image: 'assets/screen1.png',
      title: 'Select from our\n     Best menu',
      description:
          'Pick up your food from our menu\n           More than 35 times'),
  unboardingcontent(
      image: "assets/screen2.png",
      title: 'Easy And Online Pyment',
      description:
          'You can pay cash on delivery and\n        card pyment is available'),
  unboardingcontent(
      image: "assets/screen3.png",
      title: 'Quick Delivery at your Doorstep',
      description: 'Deliver your food at your\n             doorstaps')
];
