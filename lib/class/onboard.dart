class OnboardModel {
  String header;
  String imagePath;

  OnboardModel({required this.header, required this.imagePath});
}

final onboardAssets = [
  OnboardModel(
    header: 'Learn at your convienent time. ',
    imagePath: 'onboard1',
  ),
  OnboardModel(
    header: 'Explore through the various\ncourses.',
    imagePath: 'onboard2',
  ),
  OnboardModel(
    header: 'Add to your knowlege and\nskill.',
    imagePath: 'onboard3',
  ),
];
