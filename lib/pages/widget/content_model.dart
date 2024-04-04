class UnboardingContent{
  String image;
  String title;
  String description;
  UnboardingContent(
      {required this.description, required this.image,required this.title});
}
List<UnboardingContent> contents = [
  UnboardingContent(description: 'Pick Your Furniture from our items\n More than 35 times', image: "images/screen1.png", title: 'Select our \n Best items '),
  UnboardingContent(description: 'You can cash in the Delivery time or Card payment is available', image: "images/screen2.png", title: 'Easy and Online Payment'),
  UnboardingContent(description: 'Delivery your furniture\n  Infront of your house', image: "images/screen3.png", title: 'Quick Delivery for Your home')
];