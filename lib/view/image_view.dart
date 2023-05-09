import 'package:flutter/material.dart';

class ImageView extends StatefulWidget {
  const ImageView({super.key});

  @override
  State<ImageView> createState() => _ImageViewState();
}

class _ImageViewState extends State<ImageView> {
  var imagename = const CircleAvatar(
    radius: 150,
    backgroundImage: AssetImage('assets/images/rashford.png'),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          imagename,
          Image.network(
              'https://th.bing.com/th/id/R.56dde41aee17e96425987f751a9269ce?rik=PimP3aKlBih1aA&riu=http%3a%2f%2fwww.hdwallpaper.nu%2fwp-content%2fuploads%2f2015%2f09%2ftropical_beach_blue_summer_sea_emerald_sand_hd-wallpaper-1701606.jpg&ehk=OVN5KYNNiPQtsbvJxJZF3%2fZMhpDEpVc4ebUXS5y20%2f4%3d&risl=&pid=ImgRaw&r=0'),
          ElevatedButton(
            onPressed: () {
              setState(() {
                imagename = const CircleAvatar(
                  radius: 150,
                  backgroundImage: AssetImage('assets/images/bruno.png'),
                );
              });
            },
            style: ElevatedButton.styleFrom(maximumSize: const Size(150, 40)),
            child: const Text('Click Me'),
          ),
        ]),
      ),
    );
  }
}




// import 'package:flutter/material.dart';
// class ImageView extends StatefulWidget {
//   const ImageView({super.key});

//   @override
//   State<ImageView> createState() => _ImageViewState();
// }

// class _ImageViewState extends State<ImageView> {
//   String _imagePath = 'assets/images/rashford.png';

//   void _changeImage() {
//     setState(() {
//       _imagePath = 'assets/images/bruno.png';
//     });
//   }

//   var gap = const SizedBox(
//     height: 12,
//   );

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Images'),
//         centerTitle: true,
//       ),
//       body: SafeArea(
//         child: Column(
//           children: [
//             gap,
//             const CircleAvatar(
//               radius: 150,
//               backgroundImage: AssetImage('assets/images/rashford.png'),
//             ),
//             // SizedBox(
//             //   child: Image.asset('assets/images/rashford.png'),
//             // ),
//             gap,
//             SizedBox(
//               child: ElevatedButton(
//                 onPressed: (_changeImage),
//                 child: const Text('Click Me'),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
