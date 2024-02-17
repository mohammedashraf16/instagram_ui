// import 'package:flutter/material.dart';
//
// class StoryViewScreen extends StatefulWidget {
//   const StoryViewScreen({super.key});
//
//   @override
//   State<StoryViewScreen> createState() => _StoryViewScreenState();
// }
//
// class _StoryViewScreenState extends State<StoryViewScreen> {
//   final controller = StoryController();
//
//   @override
//   Widget build(BuildContext context) {
//     List<StoryItem> storyItems = [
//       StoryItem.text(
//         title: 'Hello Guys',
//         backgroundColor: Colors.black,
//         textStyle: TextStyle()
//       ),
//       StoryItem.pageImage(
//           url:
//               'https://upload.wikimedia.org/wikipedia/commons/3/33/Tom_Cruise_by_Gage_Skidmore_2.jpg',
//           controller: controller),
//     ]; // your list of stories
//
//     return StoryView(
//       storyItems: storyItems,
//       controller: controller,
//       // pass controller here too
//       repeat: false,
//       // should the stories be slid forever
//       // onStoryShow: (s) {notifyServer(s)},
//       onComplete: () {},
//       onVerticalSwipeComplete: (direction) {
//         if (direction == Direction.down) {
//           Navigator.pop(context);
//         }
//       }, // To disable vertical swipe gestures, ignore this parameter.
//     );
//   }
// }


